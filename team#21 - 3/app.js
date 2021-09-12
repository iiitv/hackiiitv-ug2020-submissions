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
const User = new mongoose.model("User", userSchema);

// * createStrategy for User using passport
passport.use(User.createStrategy());

// * make passport.serialize and passport.deserialize
passport.serializeUser(function(user, done) {
  done(null, user.id);
});

passport.deserializeUser(function(id, done) {
  User.findById(id, function(err, user) {
    done(err, user);
  });
});

// * passport UseGoogleStrategy
passport.use(new GoogleStrategy({
  clientID: process.env.CLIENT_ID,
  clientSecret: process.env.CLIENT_SECRET,
  callbackURL: "http://localhost:3000/auth/google/dashboard",
  userProfileURL: "https://www.googleapis.com/oauth2/v3/userinfo"
},
function(accessToken, refreshToken, profile, cb) {
  console.log(profile);

  User.findOrCreate({ googleId: profile.id }, function (err, user) {
    return cb(err, user);
  });
}
));

// * get / route
app.get('/', function(req, res) {
    res.render('home');
});

// * get /auth/google route
app.get("/auth/google",
  passport.authenticate('google', { scope: ["profile"] })
);

// * get /auth/google/dashboard route
app.get("/auth/google/dashboard",
  passport.authenticate('google', { failureRedirect: "/login" }),
  function(req, res) {
    res.redirect("/dashboard");
  });

// * get /login route
app.get('/login', function (req, res) {
  res.render('/login');
});

// * get /register route
app.get('/register', function(req, res) {
  res.render('register');
});

app.get('/dashboard', function(req, res) {
  res.render('dashboard');
});

// * get /main route
app.get('/main', function() {
 res.render('dashboard');
});

// * get /logout route
app.get("/logout", function(req, res){
  req.logout();
  res.redirect("/");
});

// * post /register route
app.post("/register", function(req, res){

  User.register({username: req.body.username}, req.body.password, function(err, user){
    if (err) {
      console.log(err);
      res.redirect("/register");
    } else {
      passport.authenticate("local")(req, res, function(){
        res.redirect("/dashboard");
      });
    }
  });

});

// * post /login route
app.post("/login", function(req, res){

  const user = new User({
    username: req.body.username,
    password: req.body.password
  });

  req.login(user, function(err){
    if (err) {
      console.log(err);
    } else {
      passport.authenticate("local")(req, res, function(){
        res.redirect("/dashboard");
      });
    }
  });

});

// * listen to PORT
app.listen(3000, function() {
    console.log("Listening to PORT 3000");
});