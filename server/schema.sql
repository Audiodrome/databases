CREATE DATABASE chat;

USE chat;

-- CREATE TABLE users (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   username VARCHAR(48)
-- );

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   username_id INT,
--   message TEXT,
--   roomname VARCHAR(32),
--   FOREIGN KEY (username_id) REFERENCES users(id)
-- );

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(48),
  message TEXT,
  roomname VARCHAR(32),
  FOREIGN KEY (username_id) REFERENCES users(id)
);


/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

