'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ThreadSchema = new Schema({
  name: String,
  info: String,
  active: Boolean,
  owner: Object
});

module.exports = mongoose.model('Thread', ThreadSchema);