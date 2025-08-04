// #!/usr/bin/env node

var express = require("express");
var path = require("path");
var logger = require("morgan");
var compression = require("compression");

var app = express();

// enable gzip compression
app.use(compression());
app.use(logger("dev"));
app.use(express.static(path.join(__dirname, "public")));

// @404
app.use(function (req, res, next) {
  console.log(req);
  res.status(404).send("Not Found");
});

// @error
app.use(function (err, req, res, next) {
  console.error(err);
  res.status(500).send("Internal Server Error");
});

module.exports = app;
