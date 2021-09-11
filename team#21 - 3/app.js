require('dotenv').config();
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
const mongoose = require("mongoose");
const session = require('express-session');
const passport = require("passport");
const passportLocalMongoose = require("passport-local-mongoose");
const GoogleStrategy = require('passport-google-oauth20').Strategy;
const findOrCreate = require('mongoose-findorcreate');

const app = express();

app.use(express.static("public"));
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({
  extended: true
}));

// * use session here

// * initialize passport

// * start session using passport.session()

// * connect to mongoose

// * set useCreateIndex to true

// * create mongoose schema

// * add plugins passportLocalMongoose and findOrCreate

// * declare User Model using the created mongoose Schema

// * createStrategy for User using passport

// * make passport.serialize and passport.deserialize

// * passport UseGoogleStrategy

// * get / route
app.get('/', function(req, res) {
    res.render('home');
});

// * get /auth/google route

// * get /auth/google/dashboard route

// * get /login route

// * get /register route

// * get /dashboard route

// * get /logout route

// * post /register route

// * post /login route

// * listen to PORT
app.listen(PORT || 3000, function() {
    console.log("Listening to PORT 3000");
});