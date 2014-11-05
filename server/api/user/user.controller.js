'use strict';

var User = require('./user.model');
var passport = require('passport');
var config = require('../../config/environment');
var jwt = require('jsonwebtoken');

var validationError = function(res, err) {
  return res.json(422, err);
};

/**
 * Get list of users
 * restriction: 'admin'
 */
exports.index = function(req, res) {
  User.find({}, '-salt -hashedPassword', function (err, users) {
    if(err) return res.send(500, err);
    res.json(200, users);
  });
};

/**
 * Creates a new user
 */
exports.create = function (req, res, next) {
  var newUser = new User(req.body);
  newUser.provider = 'local';
  newUser.role = 'user';
  newUser.save(function(err, user) {
    if (err) return validationError(res, err);
    var token = jwt.sign({_id: user._id }, config.secrets.session, { expiresInMinutes: 60*5 });
    res.json({ token: token });
  });
};

exports.resetPassword = function(req,res,next) {
  console.log("reset password...",req.body);
  User.findById(req.body._id, function (err, user) {
    if (err) return validationError(res, err);
    if (!user) return;
    user.password = String(Math.floor(Math.random()*2e8));
    console.log("password reset",user.password);
    user.save(function(err) {
      res.send(200);

      // doesnt work haha

      var nodemailer = require('nodemailer');

     // create reusable transporter object using SMTP transport
       var transporter = nodemailer.createTransport({
           host: 'secure85.inmotionhosting.com',
           port: 465,
           authentication:"login",
           auth: {
               user: 'robofriend@azureda.com',
               pass: 'chillin100'
           }
       });
       
       // NB! No need to recreate the transporter object. You can use
       // the same transporter object for all e-mails

       // setup e-mail data with unicode symbols
       var mailOptions = {
           from: 'Nodemailer ✔ <petroff.ryan@gmail.com>', // sender address
           to: req.body['email'], // list of receivers
           subject: 'Flashforum in a flash!', // Subject line
           text: 'Hello' + req.body['name'] + '! Your password is: ' + 'generated password', // plaintext body
           //html: '<b>Hello Daniel ✔</b>' // html body
       };

       // send mail with defined transport object
       transporter.sendMail(mailOptions, function(error, info){
           if(error){
               console.log(error);
           }else{
               console.log('Message sent: ' + info.response);
               res.send("OK");
           }
       });
    });
  });
}

/**
 * Get a single user
 */
exports.show = function (req, res, next) {
  var userId = req.params.id;

  User.findById(userId, function (err, user) {
    if (err) return next(err);
    if (!user) return res.send(401);
    res.json(user.profile);
  });
};

/**
 * Deletes a user
 * restriction: 'admin'
 */
exports.destroy = function(req, res) {
  User.findByIdAndRemove(req.params.id, function(err, user) {
    if(err) return res.send(500, err);
    return res.send(204);
  });
};

/**
 * Change a users password
 */
exports.changePassword = function(req, res, next) {
  var userId = req.user._id;
  var oldPass = String(req.body.oldPassword);
  var newPass = String(req.body.newPassword);

  User.findById(userId, function (err, user) {
    if(user.authenticate(oldPass)) {
      user.password = newPass;
      user.save(function(err) {
        if (err) return validationError(res, err);
        res.send(200);
      });
    } else {
      res.send(403);
    }
  });
};

exports.update = function(req,res,next) {
  var userId = req.body._id;
  User.findById(userId, function (err, user) {
    user.name = req.body.name;
    user.email = req.body.email;
    user.save(function(err) {
      if (err) return validationError(res, err);
      res.send(200);
    });
  });

}

/**
 * Get my info
 */
exports.me = function(req, res, next) {
  var userId = req.user._id;
  User.findOne({
    _id: userId
  }, '-salt -hashedPassword', function(err, user) { // don't ever give out the password or salt
    if (err) return next(err);
    if (!user) return res.json(401);
    res.json(user);
  });
};

/**
 * Authentication callback
 */
exports.authCallback = function(req, res, next) {
  res.redirect('/');
};
