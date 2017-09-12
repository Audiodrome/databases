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

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   username VARCHAR(48),
--   message TEXT,
--   roomname VARCHAR(32),
--   -- FOREIGN KEY (username_id) REFERENCES users(id)
-- );

CREATE TABLE users (
  id mediumint(8) unsigned NOT NULL auto_increment,
  username varchar(255) default NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;

-- INSERT INTO users (username) VALUES ("Guy Scott"),("Maile Shepherd"),("Salvador Kirkland"),("Christen Chan"),("Addison Mejia"),("Alden Burt"),("Jelani Witt"),("Dieter Foster"),("Christian Fernandez"),("India Booth");
-- INSERT INTO users (username) VALUES ("Brady Clay"),("Rose Blair"),("Noelle Nicholson"),("Brody Terry"),("Jada Kim"),("Nadine Anthony"),("Destiny Ward"),("Ryder Flores"),("Kasimir Curtis"),("Brenda Watson");
-- INSERT INTO users (username) VALUES ("Wang Powers"),("Herrod Wyatt"),("Denise Cherry"),("Petra Evans"),("Linda William"),("Scott William"),("Laura Cunningham"),("Alea Keller"),("Carter Savage"),("Dillon Heath");
-- INSERT INTO users (username) VALUES ("Carly Stevenson"),("Keiko Bruce"),("Jelani Mccarthy"),("Heidi Blanchard"),("Emmanuel Snyder"),("Brennan Hurley"),("Ronan Camacho"),("Wyoming Ellison"),("Xyla Lowery"),("August Sanchez");
-- INSERT INTO users (username) VALUES ("Kato Rowe"),("Natalie Gill"),("Hayes Rivas"),("Caleb Harrell"),("Britanney Buckley"),("Quinlan Butler"),("Iris Nunez"),("Bert Love"),("Garrett Mcleod"),("Allen Mcintosh");
-- INSERT INTO users (username) VALUES ("Chelsea Dejesus"),("Nichole Gill"),("Benedict Foster"),("Jennifer Dillard"),("Janna Hill"),("Myra Day"),("Alfonso Chaney"),("Alfonso Howe"),("Ruth Glass"),("Iola Mccormick");
-- INSERT INTO users (username) VALUES ("Daryl Zamora"),("Unity Mccall"),("Giselle Cochran"),("Alika Johns"),("Keith Glass"),("Kaye Barker"),("Xyla Stuart"),("Guy Stone"),("Melodie Joseph"),("Brynn Rodgers");
-- INSERT INTO users (username) VALUES ("Clementine Herman"),("Willa Jennings"),("Kameko Boyle"),("Marsden Sandoval"),("Kermit Bullock"),("Patrick Wallace"),("Rudyard Wiggins"),("Elizabeth Bartlett"),("Aristotle Moses"),("Rajah Nielsen");
-- INSERT INTO users (username) VALUES ("Quincy Livingston"),("Dakota Carrillo"),("Baker Smith"),("Mona Mckenzie"),("Troy Harrison"),("Stephanie Cotton"),("Vernon Humphrey"),("Danielle Lindsay"),("Kendall Horn"),("Lynn Weaver");
-- INSERT INTO users (username) VALUES ("Salvador Stuart"),("Mona Herring"),("Thomas Poole"),("Fay Mclaughlin"),("Noah Fitzgerald"),("Palmer Hebert"),("Adena Holden"),("Omar Shaffer"),("Harriet Burris"),("Thane Spence");
-- INSERT INTO users (username) VALUES ("Guy Schultz"),("Cameron Fuentes"),("Ruby Whitaker"),("Irma Richmond"),("Jena Meyers"),("Dahlia Shannon"),("Louis Peck"),("Janna Howard"),("Jarrod Decker"),("Armand Preston");


CREATE TABLE messages (
  id mediumint(8) unsigned NOT NULL auto_increment,
  username varchar(255) default NULL,
  message TEXT default NULL,
  roomname TEXT default NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;

-- INSERT INTO messages (username,message,roomname) VALUES ("Guy Scott","congue. In scelerisque scelerisque","sociis"),("Maile Shepherd","nulla. In tincidunt congue","Proin"),("Salvador Kirkland","Vestibulum ante ipsum primis","Nam"),("Christen Chan","semper et, lacinia vitae,","nulla."),("Addison Mejia","est, vitae sodales nisi","odio."),("Alden Burt","morbi tristique senectus et","auctor"),("Jelani Witt","metus facilisis lorem tristique","Cras"),("Dieter Foster","erat volutpat. Nulla facilisis.","interdum"),("Christian Fernandez","tellus. Nunc lectus pede,","Vivamus"),("India Booth","Nulla dignissim. Maecenas ornare","Etiam");
-- INSERT INTO messages (username,message,roomname) VALUES ("Penelope Franklin","nisi. Mauris nulla. Integer","natoque"),("Caldwell Norris","lorem ac risus. Morbi","sit"),("Cathleen Clayton","aliquet diam. Sed diam","elit,"),("Cyrus Dyer","egestas ligula. Nullam feugiat","Proin"),("Fulton Whitehead","dapibus gravida. Aliquam tincidunt,","conubia"),("Shelby Bates","consectetuer ipsum nunc id","egestas"),("Indira Peters","auctor velit. Aliquam nisl.","rutrum."),("Brian Marks","metus vitae velit egestas","Fusce"),("Anjolie Contreras","interdum. Curabitur dictum. Phasellus","est"),("Paul Logan","penatibus et magnis dis","neque");
-- INSERT INTO messages (username,message,roomname) VALUES ("Molly Ross","lectus quis massa. Mauris","luctus"),("Yvonne Stephens","Duis ac arcu. Nunc","consectetuer,"),("Timon Nixon","aliquet magna a neque.","luctus"),("Macaulay Thornton","ac nulla. In tincidunt","risus,"),("Karen Conway","ipsum dolor sit amet,","et"),("Maya Dillard","porttitor vulputate, posuere vulputate,","consequat,"),("Kiona Olson","enim. Etiam gravida molestie","vestibulum."),("Christopher Stafford","sem, consequat nec, mollis","euismod"),("Hedy Rodgers","scelerisque dui. Suspendisse ac","nostra,"),("Dante Montoya","nonummy. Fusce fermentum fermentum","augue");
-- INSERT INTO messages (username,message,roomname) VALUES ("Kaye Hickman","gravida molestie arcu. Sed","hendrerit"),("Jameson Wagner","molestie pharetra nibh. Aliquam","orci"),("Coby Stanley","enim, condimentum eget, volutpat","nisi."),("Alexis Richmond","Cum sociis natoque penatibus","ridiculus"),("Malcolm Rose","ac ipsum. Phasellus vitae","imperdiet"),("Keegan Alvarez","Phasellus in felis. Nulla","Ut"),("Ashely Vance","turpis non enim. Mauris","tristique"),("Seth Romero","in, hendrerit consectetuer, cursus","in,"),("Angela Brady","Pellentesque habitant morbi tristique","amet"),("Nell Merritt","congue turpis. In condimentum.","quis,");
-- INSERT INTO messages (username,message,roomname) VALUES ("Erin Dunlap","egestas a, scelerisque sed,","malesuada"),("Trevor Norman","consectetuer rhoncus. Nullam velit","aliquam"),("Xander Glenn","Aliquam adipiscing lobortis risus.","tristique"),("Rae Joseph","Duis elementum, dui quis","dictum"),("Colleen Hickman","diam. Sed diam lorem,","cursus"),("Eugenia Kane","rutrum lorem ac risus.","ligula."),("Leandra Jenkins","est, vitae sodales nisi","ornare."),("Elvis Case","eleifend. Cras sed leo.","ac"),("Eve Cannon","enim nec tempus scelerisque,","et"),("Emi Rice","nisi dictum augue malesuada","magna.");
-- INSERT INTO messages (username,message,roomname) VALUES ("Noelle Spencer","dolor egestas rhoncus. Proin","enim,"),("Karly Whitehead","faucibus ut, nulla. Cras","metus"),("Selma Serrano","at risus. Nunc ac","tincidunt"),("Stewart Morris","elit erat vitae risus.","sapien."),("Griffin Wyatt","mollis vitae, posuere at,","non"),("Lois Bray","non, feugiat nec, diam.","pretium"),("Nyssa Patton","lobortis tellus justo sit","erat"),("Lamar Sutton","ultrices. Vivamus rhoncus. Donec","dui."),("Hoyt Nelson","libero nec ligula consectetuer","tellus"),("Wing Beasley","tellus non magna. Nam","nisi");
-- INSERT INTO messages (username,message,roomname) VALUES ("Leigh Glenn","ornare, elit elit fermentum","amet"),("Amal Spence","vulputate, risus a ultricies","elit"),("Jane Buckley","fringilla. Donec feugiat metus","elementum"),("Myles Valdez","orci luctus et ultrices","velit."),("Madeson Burt","eget massa. Suspendisse eleifend.","ornare."),("Colt Atkinson","Phasellus dolor elit, pellentesque","convallis"),("Yoko Austin","Vivamus non lorem vitae","litora"),("Rooney Davidson","Suspendisse dui. Fusce diam","odio"),("Miranda Holmes","imperdiet non, vestibulum nec,","sed,"),("Emi Casey","Ut semper pretium neque.","quis");
-- INSERT INTO messages (username,message,roomname) VALUES ("Igor Walton","commodo at, libero. Morbi","aliquam"),("Odysseus Macdonald","amet ornare lectus justo","consequat"),("Zeus Richardson","Sed pharetra, felis eget","ut"),("Quamar Quinn","dictum placerat, augue. Sed","dui."),("Karyn Reyes","neque sed dictum eleifend,","egestas."),("Maggie Fitzpatrick","et, euismod et, commodo","Nunc"),("Angela Harris","ligula. Nullam enim. Sed","Morbi"),("Kaseem Taylor","nunc, ullamcorper eu, euismod","montes,"),("Graiden Castro","mattis ornare, lectus ante","a,"),("Hayfa Weeks","dapibus ligula. Aliquam erat","urna.");
-- INSERT INTO messages (username,message,roomname) VALUES ("Ignacia Benton","tellus. Suspendisse sed dolor.","rutrum,"),("Clark Bird","ridiculus mus. Proin vel","penatibus"),("Yen Horn","amet, consectetuer adipiscing elit.","id"),("Xantha Whitaker","Sed congue, elit sed","interdum."),("Cade Howell","lacinia vitae, sodales at,","Sed"),("Tatiana Mejia","velit in aliquet lobortis,","enim"),("Idona Ortiz","Integer mollis. Integer tincidunt","at,"),("Erich Poole","et risus. Quisque libero","Proin"),("Elliott Edwards","bibendum ullamcorper. Duis cursus,","urna"),("Jolie Ballard","aliquet magna a neque.","commodo");
-- INSERT INTO messages (username,message,roomname) VALUES ("Odessa Young","mi. Duis risus odio,","Morbi"),("Josiah Byrd","netus et malesuada fames","Sed"),("Bruno Mercado","Nulla tincidunt, neque vitae","Praesent"),("Caldwell Britt","fringilla euismod enim. Etiam","sociosqu"),("Zeph Gill","magna. Ut tincidunt orci","quis,"),("Ray Johnston","Morbi sit amet massa.","egestas."),("Ursa Rowland","morbi tristique senectus et","purus,"),("Glenna Wood","pede. Cum sociis natoque","lectus"),("William Barker","dolor, nonummy ac, feugiat","mus."),("Wendy Duran","et malesuada fames ac","eget,");


/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

