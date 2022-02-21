DROP DATABASE adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Bark', 'dog', 'https://dogtime.com/assets/uploads/2011/03/puppy-development.jpg', 1, 'cutest lil puppy', 't'),
  ('Knuckles', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 2, 'caution: sharp', 't'),
  ('Mister', 'cat', 'https://metro.co.uk/wp-content/uploads/2021/11/PRI_211495578.jpg?quality=90&strip=all', null, null, 't'),
  ('Mustafar', 'cat', 'https://pbs.twimg.com/media/FIkrZ5ZVcAISL_T?format=jpg&name=large', 10, 'Simply, the best', 'f');
