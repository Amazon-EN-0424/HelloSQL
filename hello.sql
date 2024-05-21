CREATE DATABASE my_social_network;
CREATE DATABASE robot_census;
CREATE DATABASE alphabet;

USE my_social_network;


CREATE TABLE users
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

SELECT *
FROM users;
INSERT INTO users(id, name)
VALUES (1, 'Jim');

INSERT INTO users(id, name)
VALUES (2, 'Lora');

SELECT name, id
FROM users;

# THIS IS A COMMENT

CREATE TABLE posts
(
    post_id    INTEGER AUTO_INCREMENT PRIMARY KEY,
    title      VARCHAR(50) NOT NULL,
    body       VARCHAR(140),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author     INTEGER     NOT NULL,
    FOREIGN KEY (author) REFERENCES users (id)
);

INSERT INTO posts(title, body, author)
VALUES ('First Post', 'This is my first post', 2),
       ('Second Post', 'This is my second post', 2),
       ('Third Post', 'This is my third post', 2),
       ('Hello world', ' Once upon a time...', 1);

SELECT * FROM posts;

INSERT INTO users(id, name)
VALUES (0, 'Goju');

INSERT INTO posts(title, body, author)
VALUES ('Feel they infinite', null, 0);

UPDATE posts SET body = 'Hello from Ironhack' WHERE post_id = 4;

DELETE FROM posts WHERE post_id;

DROP TABLE users;
