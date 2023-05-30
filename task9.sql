USE friends_of_man;

DROP TABLE IF EXISTS horse;
DROP TABLE IF EXISTS camel;
DROP TABLE IF EXISTS donkey;

DROP TABLE IF EXISTS cat;
DROP TABLE IF EXISTS dog;
DROP TABLE IF EXISTS hamster;

CREATE TABLE horse(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pack_animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (animals_id) ON DELETE CASCADE
);

INSERT INTO horse(pack_animals_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pack_animals
	WHERE (species = 'horse');
    
CREATE TABLE donkey(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pack_animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (animals_id) ON DELETE CASCADE
);

INSERT INTO donkey(pack_animals_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pack_animals
	WHERE (species = 'donkey');
    
CREATE TABLE camel(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pack_animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (animals_id) ON DELETE CASCADE
);

INSERT INTO camel(pack_animals_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pack_animals
	WHERE (species = 'camel');
    
CREATE TABLE dog(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pets_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pets_id) REFERENCES pets (animals_id) ON DELETE CASCADE
);

INSERT INTO dog(pets_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pets
	WHERE (species = 'dog');
    
CREATE TABLE cat(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pets_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pets_id) REFERENCES pets (animals_id) ON DELETE CASCADE
);

INSERT INTO cat(pets_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pets
	WHERE (species = 'cat');

CREATE TABLE hamster(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pets_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pets_id) REFERENCES pets (animals_id) ON DELETE CASCADE
);

INSERT INTO hamster(pets_id, animals_name, species)
SELECT animals_id, animals_name, species
	FROM pets
	WHERE (species = 'hamster');

UPDATE cat
	SET animal_rooms = 'Сидеть', birth_date = "2000-12-21"
	WHERE id = 1;

UPDATE cat
	SET animal_rooms = 'Стоять', birth_date = "2010-12-21"
	WHERE id = 2;

UPDATE cat
	SET animal_rooms = 'Лежать', birth_date = "2020-12-21"
	WHERE id = 3;

UPDATE cat
	SET animal_rooms = 'Рядом, Сидеть', birth_date = "2021-12-21"
	WHERE id = 4;
    
UPDATE dog
	SET animal_rooms = 'Место', birth_date = "2013-12-21"
	WHERE id = 1;

UPDATE dog
	SET animal_rooms = 'Рядом, Фу', birth_date = "2021-12-21"
	WHERE id = 2;
    
UPDATE hamster
	SET animal_rooms = 'Ползти', birth_date = "2014-12-21"
	WHERE id = 1;

UPDATE hamster
	SET animal_rooms = 'Покрутись, Прыжок', birth_date = "2020-12-21"
	WHERE id = 2;
    
UPDATE horse
	SET animal_rooms = 'Налево', birth_date = "2009-12-21"
	WHERE id = 1;

UPDATE horse
	SET animal_rooms = 'Направо', birth_date = "2008-12-21"
	WHERE id = 2;

UPDATE horse
	SET animal_rooms = 'Лежать', birth_date = "2020-12-21"
	WHERE id = 3;

UPDATE horse
	SET animal_rooms = 'Рядом, Сидеть', birth_date = "2021-12-21"
	WHERE id = 4;
    
UPDATE donkey
	SET animal_rooms = 'Назад', birth_date = "2010-12-21"
	WHERE id = 1;

UPDATE donkey
	SET animal_rooms = 'Кувырок', birth_date = "2019-12-21"
	WHERE id = 2;

UPDATE donkey
	SET animal_rooms = 'Спать', birth_date = "2020-12-21"
	WHERE id = 3;
    
UPDATE camel
	SET animal_rooms = 'Взять, Отдай', birth_date = "2010-12-21"
	WHERE id = 1;

UPDATE camel
	SET animal_rooms = 'Фу', birth_date = "2019-12-21"
	WHERE id = 2;

UPDATE camel
	SET animal_rooms = 'Ползти, Дай лапу', birth_date = "2020-12-21"
	WHERE id = 3;
    
