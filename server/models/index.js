var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var queryString = 'SELECT * FROM messages';
      db.query(queryString, function(err, result) {
        if (err) {
          callback(err);
          return;
        }
        callback(null, result);
      });
    }, // a function which produces all the messages
    post: function (data, callback) {
      console.log(data);
      var values = [data.username, data.text, data.roomname];
      var queryString = 'INSERT INTO messages (username, message, roomname) VALUES(?, ?, ?)';
      console.log(data);
      db.query(queryString, values, function(err, result) {
        if (err) {
          callback(err);
          return;
        }
        callback(null, result);
      });
      // db.query('INSERT INTO messages (user_id, text, date) VALUES(?, ?, ?)', values, function(err, result)
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function (data, callback) {
      console.log('attempting to post username: ', data.username);
      var values = [data.username];
      var queryString = 'INSERT INTO users (username) VALUES(?)';
      db.query(queryString, values, function(err, result) {
        if (err) {
          callback(err);
          return;
        }
        callback(null, result);
      });
    }
  }
};

