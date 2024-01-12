const express = require('express');
const bodyParser = require("body-parser")
const todoRouter = require('./routers/todo.router');

const app = express();

app.use(bodyParser.json());
app.use('/',todoRouter);

module.exports = app;