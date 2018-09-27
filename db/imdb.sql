DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies;

CREATE TABLE actors (
  id        SERIAL8 PRIMARY KEY,
  f_name    VARCHAR(255),
  l_name    VARCHAR(255)
);

CREATE TABLE movies (
  id        SERIAL8 PRIMARY KEY,
  title     VARCHAR(255),
  genre     VARCHAR(255)
);

CREATE TABLE roles (
  id        SERIAL8 PRIMARY KEY,
  movie_id  INT8 REFERENCES movies(id) ON DELETE CASCADE,
  actor_id  INT8 REFERENCES actors(id) ON DELETE CASCADE,
  fees      INT8
);
