const db = require('../config/db');
const mongoose = require('mongoose');

const { Schema } = mongoose;
const todoSchema = new Schema({
  title: {
    type: String,
    required: true,
  },
  desc: {
    type: String,
  },
  date: {
    type: String,
  },
  hour: {
    type: String,
  },
  isCompleted: {
    type: Boolean,
    default: false, 
  },
}, { timestamps: true });

const TodoModel = db.model('todo',todoSchema);
module.exports = TodoModel;
