var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

var db = mysql.createConnection({
//   host: 'localhost',
  user: 'student',
  password: 'student',
  database: 'chat'
});

db.connect(function(err) {
  if (err) {
    throw err;
  }
  console.log('Chat database connected!');
});

module.exports = db;