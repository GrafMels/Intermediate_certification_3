USE friends_of_man;

DROP TABLE IF EXISTS donkey_and_horse;
DROP TABLE IF EXISTS horse;
DROP TABLE IF EXISTS camel;
DROP TABLE IF EXISTS donkey;
DROP TABLE IF EXISTS pack_animals;

DROP TABLE IF EXISTS cat;
DROP TABLE IF EXISTS dog;
DROP TABLE IF EXISTS hamster;
DROP TABLE IF EXISTS pets;

DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
    id INT PRIMARY KEY AUTO_INCREMENT,
    animals_name VARCHAR(20),
    species VARCHAR(20)
);

INSERT INTO animals(animals_name, species)
VALUES 
( 'Мурзик', 'cat'),
( 'Пушистик', 'cat'),
( 'Барсик', 'cat'),
( 'Мурка', 'cat'),
( 'Витя', 'hamster'),
( 'Григорий', 'hamster'),
( 'Пуля', 'dog'),
( 'Малыш', 'dog'),
( 'Аполон', 'horse'),
( 'Басилик', 'horse'),
( 'Гамлет', 'horse'),
( 'Зевс', 'horse'),
( 'Василий', 'camel'),
( 'Гога', 'camel'),
( 'Дакар', 'camel'),
( 'Астон', 'donkey'),
( 'Буран', 'donkey'),
( 'Версаль', 'donkey');

CREATE TABLE pets(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    FOREIGN KEY (animals_id) REFERENCES animals (id) ON DELETE CASCADE
);

INSERT INTO pets(animals_id, animals_name, species)
SELECT id, animals_name, species
  FROM animals
 WHERE (species = 'cat' OR species = 'dog'OR species = 'hamster');

CREATE TABLE pack_animals(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    FOREIGN KEY (animals_id) REFERENCES animals (id) ON DELETE CASCADE
);

INSERT INTO pack_animals(animals_id, animals_name, species)
SELECT id, animals_name, species
  FROM animals
 WHERE (species = 'donkey' OR species = 'camel'OR species = 'horse');
 