var db = require('../db');

module.exports = {
  messages: {
    // a function which produces all the messages
    get: function (callback) {
      var queryStr = 'SELECT messages.id, messages.messages, rooms.room_name, users.user_name';
      db.query(queryStr, function (err, results) {
        if (err) {
          throw err;
        }
        callback(null, results);
      });
    },
    post: function (messages, rooms_id, users_id, callback) {
      var queryStr = 'INSERT INTO messages (messages, users.id, rooms.id) VALUES ("' + messages + ' , ' + users_id + ' , ' + rooms_id + ' )';
      db.query(queryStr, function (err) {
        if (err) {
          throw err;
        }
        console.log('successful');
      })
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () { },
    post: function () { }
  }
};

