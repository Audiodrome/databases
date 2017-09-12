var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var queryString = 'select * from messages';
      db.query(queryString, function(err, data) {
        if (err) {
          callback(err);
          return;
        }
        callback(null, data);
      });
    }, // a function which produces all the messages
    post: function (data, callback) {
      console.log(data);
      // db.query('INSERT INTO messages (user_id, text, date) VALUES(?, ?, ?)', values, function(err, result)
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

