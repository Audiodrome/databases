var models = require('../models');

var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10, // Seconds.
  'Content-Type': 'application/json'
};

var sendResponse = function(response, data, statusCode) {
  statusCode = statusCode || 200;
  response.writeHead(statusCode, headers);
  response.end(JSON.stringify(data));
};

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get(function(err, data) {
        if (err) {
          console.log('massive error', err);
        }
        console.log('this is the data for MESSAGES GET', data);
        res.writeHead(201, headers);
        res.JSON(data);
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log('i made it to MESSAGES POST data', req.body);
      models.messages.post(req.body, function(err, result) {
        if (err) {
          console.log('error on insert to messages db', err);
          return;
        }
        console.log('MESSAGES saved to db', result);
        res.writeHead(201, headers);
        res.end();
        // sendResponse(res, data, 201);
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get(function(err, data) {
        if (err) {
          console.log('massive error', err);
        }
        console.log('this is the data for USERS GET', data);
        res.writeHead(201, headers);
        res.JSON(data);
      });
    },
    post: function (req, res) {
      // console.log('post to users was request');
      console.log('i made it to USERS POST data', req.body);
      models.users.post(req.body, function(err, result) {
        if (err) {
          console.log('error on insert to users db', err);
          return;
        }
        console.log('USERS saved to db', result);
        //sendResponse(res, data, 201);
        res.writeHead(201, headers);
        res.end();
      });
    }
  }
};
