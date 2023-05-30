USE friends_of_man;

DELETE FROM animals WHERE `id` = 13;
DELETE FROM animals WHERE `id` = 14;
DELETE FROM animals WHERE `id` = 15;
DROP TABLE IF EXISTS donkey_and_horse;

CREATE TABLE donkey_and_horse(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pack_animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (animals_id) ON DELETE CASCADE
);

INSERT INTO donkey_and_horse(pack_animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pack_animals_id, animals_name, species, animal_rooms, birth_date
	FROM horse;
    
INSERT INTO donkey_and_horse(pack_animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pack_animals_id, animals_name, species, animal_rooms, birth_date
	FROM donkey;

DROP TABLE IF EXISTS horse;
DROP TABLE IF EXISTS donkey;