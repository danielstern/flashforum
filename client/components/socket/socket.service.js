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

        // var sessionTempID = Math.floor(Math.random() * 1000000);

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
                    // console.log("Origin and tmp ID?",item._origin, sessionTempID);
                    // if (item._origin == sessionTempID) return;
                    var oldItem = _.find(array, {
                        _id: item._id
                    });
                    var index = array.indexOf(oldItem);
                    var event = 'created';

                    // var timeNow = new Date().getTime();



                    // item.ts = new Date().getTime();
                    // item._origin = sessionTempID;


                    // replace oldItem if it exists
                    // otherwise just add item to the collection
                    if (oldItem) {

                        // if (!item.ts) {
                            // item.ts = timeNow
                        // } else {
                            // console.log("TS compare...", item.ts, oldItem.ts, timeNow);
                            // if (!item.ts || item.ts > oldItem.ts) {
                                // if (!areObjectsEqual(item, oldItem) && item.ts > oldItem.ts) {
                                // item.ts = timeNow;
                                array.splice(index, 1, item);
                                event = 'updated';
                                // console.log("Update value is newer");
                            // } else {
                                // console.log("Update value is older");
                            // }
                        // }
                    } else {
                        // item.ts = timeNow;
                        array.push(item);
                    }

                    cb(event, item, array);

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
    })
    .service("SocketBase", function($http) {

        return function(url) {


            this.publish = function(object) {
                console.log("You're updating with socketbase");
                $http.patch(url,object);
            }

            this.subscribe = function() {
                console.log("Youre listning with socketbase.")
            }
        }
    })
