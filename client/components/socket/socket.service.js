/* global io */
'use strict';

angular.module('flashforumApp')
    .factory('socket', function(socketFactory) {

        // socket.io now auto-configures its connection when we ommit a connection url
        var ioSocket = io('', {
            // Send auth token on connection, you will need to DI the Auth service above
            // 'query': 'token=' + Auth.getToken()
            path: '/socket.io-client'
        });

        var socket = socketFactory({
            ioSocket: ioSocket
        });

        var sessionTempID = Math.floor(Math.random() * 1000000);

        return {
            socket: socket,

            /**
             * Register listeners to sync an array with updates on a model
             *
             * Takes the array we want to sync, the model name that socket updates are sent from,
             * and an optional callback function after new items are updated.
             *
             * @param {String} modelName
             * @param {Array} array
             * @param {Function} cb
             */
            syncUpdates: function(modelName, array, cb) {
                cb = cb || angular.noop;

                function areObjectsEqual(obj1, obj2) {
                    if (!obj1 || !obj2) return false;
                    if (obj1 === obj2) return true;
                    var areEqual = true;
                    for (var key in obj1) {
                        if (obj1[key] != obj2[key] && key != 'ts' && key != '_origin') areEqual = false;
                    }

                    return areEqual;
                }

                /**
                 * Syncs item creation/updates on 'model:save'
                 */
                socket.on(modelName + ':save', function(item) {
                    if (item._origin == sessionTempID) return;
                    var oldItem = _.find(array, {
                        _id: item._id
                    });
                    var index = array.indexOf(oldItem);
                    var event = 'created';

                    if (!areObjectsEqual(item, oldItem)) {

                        item.ts = new Date().getTime();
                        item._origin = sessionTempID;

                        if (oldItem) {

                            if (item.ts - oldItem.ts < 10 && item.ts - oldItem.ts > 0) {
                                console.log("Super close collision. Stupidfy for now.");
                                return;
                            }

                        }
                        // replace oldItem if it exists
                        // otherwise just add item to the collection
                        if (oldItem) {
                            array.splice(index, 1, item);
                            event = 'updated';
                        } else {
                            array.push(item);
                        }

                        cb(event, item, array);
                    }

                });

                /**
                 * Syncs removed items on 'model:remove'
                 */
                socket.on(modelName + ':remove', function(item) {
                    var event = 'deleted';
                    _.remove(array, {
                        _id: item._id
                    });
                    cb(event, item, array);
                });
            },

            /**
             * Removes listeners for a models updates on the socket
             *
             * @param modelName
             */
            unsyncUpdates: function(modelName) {
                socket.removeAllListeners(modelName + ':save');
                socket.removeAllListeners(modelName + ':remove');
            }
        };
    });
