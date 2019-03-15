var models = require('../models');
// var mysql = require('../mysql');
// var db = require('../db');

module.exports = {
  messages: {
    get: function (req, res) {
      // console.log("Got a GET request for the messages");
      // res.status(404).send('Sorry, we cannot find that!');
      res.send('Got get request');
      models.messages.get((err) => {
        if (err) {
          res.status(404).send('Not found');
        } else {
          res.status(200).send('Found')
          res.end();
        }
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log(req.body);
      res.send('post route')
      models.messages.post((err) => {
        if (err) {
          res.status(404).send('Not found');
        } else {
          res.status(200).send('Found')
          res.end();
        }
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get(res)
    },
    post: function (req, res) {
      console.log(req.body);
      // models.users.post(req.body, res)
      res.end();
    }
  }
};
