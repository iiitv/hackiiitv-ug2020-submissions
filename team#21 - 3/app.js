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
app.use(session({
  secret: "Session Secret",
  resave: false,
  saveUninitialized: false
}));

// * initialize passport
app.use(passport.initialize());

// * start session using passport.session()
app.use(passport.session());

// * connect to mongoose
// * set useCreateIndex to true
mongoose.connect("mongodb://localhost:27017/userDB", {useNewUrlParser: true});
// mongoose.set("useCreateIndex", true);

// * create mongoose schema
const userSchema = new mongoose.Schema ({
  email: String,
  password: String,
  googleId: String,
  state: String
});

// * add plugins passportLocalMongoose and findOrCreate
userSchema.plugin(passportLocalMongoose);
userSchema.plugin(findOrCreate);

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
app.get('/login', function (req, res) {
  res.render('/login');
});

// * get /register route
app.get('/register', function(req, res) {
  res.render('register');
});

// * get /main route

// * get /logout route

// * post /register route

// * post /login route

// * listen to PORT
app.listen(3000, function() {
    console.log("Listening to PORT 3000");
});