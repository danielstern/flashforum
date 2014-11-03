/**
 * Main application routes
 */

'use strict';

var errors = require('./components/errors');

module.exports = function(app) {

  // Insert routes below
  app.use('/api/things', require('./api/thing'));
  app.use('/api/users', require('./api/user'));

  app.use('/auth', require('./auth'));

  //nodemailer enabling
  app.post('/postEmail',function(req,res){
    var nodemailer = require('nodemailer');

    // create reusable transporter object using SMTP transport
      var transporter = nodemailer.createTransport({
          service: 'Gmail',
          auth: {
              user: 'petroff.ryan@gmail.com',
              pass: '~'
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
  
  // All undefined asset or api routes should return a 404
  app.route('/:url(api|auth|components|app|bower_components|assets)/*')
   .get(errors[404]);

  // All other routes should redirect to the index.html
  app.route('/*')
    .get(function(req, res) {
      res.sendfile(app.get('appPath') + '/index.html');
    });
};
