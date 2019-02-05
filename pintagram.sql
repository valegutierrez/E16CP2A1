CREATE DATABASE Pintagram;
\c Pintagram

CREATE TABLE Users(
  id SERIAL,
  user_name varchar,
  email varchar,
  PRIMARY KEY(id)
);

CREATE TABLE Images(
  id SERIAL,
  img_url varchar,
  user_id INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES Users (id)
);

CREATE TABLE LikedOrDisliked(
  id SERIAL,
  like BOOLEAN,
  user_id INTEGER,
  img_id INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (img_id) REFERENCES Images(id)
);

CREATE TABLE Tags(
  id SERIAL,
  tag_name varchar,
  PRIMARY KEY (id)
);

CREATE TABLE Tagging(
  id SERIAL,
  tag_id INTEGER,
  img_id INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (img_id) REFERENCES Images (id),
  FOREIGN KEY (tag_id) REFERENCES Tags (id)
);

INSERT INTO Users(user_name, email) VALUES
('poricita', 'vale@correo.cl'),
('danno', 'danno@correo.cl'),
('olivercin', 'oliver@perrito.cl');

INSERT INTO Images(img_url, user_id) VALUES
('img_1-1.jpg', '1')
('img_1-2.jpg', '1')
('img_2-1.jpg', '2')
('img_2-2.jpg', '2')
('img_3-1.jpg', '3')
('img_3-2.jpg', '3')

INSERT INTO LikedOrDisliked(like, user_id, img_id) VALUES
(true, 1, 1), (true, 2, 1), (true, 3, 1),
(true, 1, 2), (true, 2, 2), (true, 3, 2),
(true, 1, 3), (true, 2, 3), (true, 3, 3)

INSERT INTO Tags(tag_name) VALUES
('Animals'), ('Cute'), ('Puppy'), ('Kitten'), ('Small'), ('Big'), ('Woof'), ('Meow')

INSERT INTO Tagging(tag_id, img_id) VALUES
('1', '1'), ('3', '1'), ('5', '1')
('2', '2'), ('4', '2'), ('6', '2')
('7', '3'), ('8', '3'), ('1', '3')

SELECT img_url, COUNT(LikedOrDisliked) FROM Images FULL JOIN LikedOrDisliked ON (Images.id = img_id) GROUP BY img_url;

SELECT user_name, img_url FROM Users INNER JOIN Images ON (Users.id = owner_id) GROUP BY user_name;

SELECT tag_name, COUNT(Images) 
FROM ((Tags INNER JOIN Taggging ON Tags.id = tag_id) INNER JOIN Images ON img_id = Images.id);