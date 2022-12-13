CREATE DATABASE db_links;

USE db_links;

-- TABLE USER
-- all pasword wil be encrypted using SHA1
CREATE TABLE users (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(60) NOT NULL,
  fullname VARCHAR(100) NOT NULL
);


CREATE TABLE links (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  author VARCHAR(150),
  url VARCHAR(255) NOT NULL,
  storage VARCHAR(255),
  description TEXT,
  user_id INT(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

DESCRIBE users;

INSERT INTO users (username, password, fullname) 
  VALUES ('xavier', '12345', 'Xavier Villavicencio');

SELECT * FROM users;

-- LINKS TABLE

DESCRIBE links;