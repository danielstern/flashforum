'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var PostSchema = new Schema({
  name: String,
  info: String,
  active: Boolean,
  thread: Object,
  owner:Object
});

module.exports = mongoose.model('Post', PostSchema);