'use strict';

var _ = require('lodash');
var Reply = require('./reply.model');

// Get list of replys
exports.index = function(req, res) {
  Reply.find(function (err, replys) {
    if(err) { return handleError(res, err); }
    return res.json(200, replys);
  });
};

// Get a single reply
exports.show = function(req, res) {
  Reply.findById(req.params.id, function (err, reply) {
    if(err) { return handleError(res, err); }
    if(!reply) { return res.send(404); }
    return res.json(reply);
  });
};

// Creates a new reply in the DB.
exports.create = function(req, res) {
  Reply.create(req.body, function(err, reply) {
    if(err) { return handleError(res, err); }
    return res.json(201, reply);
  });
};

// Updates an existing reply in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Reply.findById(req.params.id, function (err, reply) {
    if (err) { return handleError(res, err); }
    if(!reply) { return res.send(404); }
    var updated = _.merge(reply, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.json(200, reply);
    });
  });
};

// Deletes a reply from the DB.
exports.destroy = function(req, res) {
  Reply.findById(req.params.id, function (err, reply) {
    if(err) { return handleError(res, err); }
    if(!reply) { return res.send(404); }
    reply.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}