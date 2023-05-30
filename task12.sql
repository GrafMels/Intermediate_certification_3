USE friends_of_man;

DROP TABLE IF EXISTS all_animals;
CREATE TABLE all_animals(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    mount_count INT,
    FOREIGN KEY (animals_id) REFERENCES animals (id) ON DELETE CASCADE
);

INSERT INTO all_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM cat;

INSERT INTO all_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM dog;

INSERT INTO all_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM hamster;

INSERT INTO all_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pack_animals_id, animals_name, species, animal_rooms, birth_date
FROM donkey_and_horse;

