'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ThreadSchema = new Schema({
  name: String,
  info: String,
  active: Boolean,
  owner: Object,
  description: String,
  tagline: String,
  ts:Number
});

module.exports = mongoose.model('Thread', ThreadSchema);