/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var Thread = require('./thread.model');

exports.register = function(socket) {
  Thread.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  Thread.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('thread:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('thread:remove', doc);
}