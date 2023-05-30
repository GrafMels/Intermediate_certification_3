USE friends_of_man;

DROP TABLE IF EXISTS young_animals;
CREATE TABLE young_animals(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animals_id INT,
    animals_name VARCHAR(20),
    species VARCHAR(20),
    animal_rooms VARCHAR(20),
    birth_date DATE,
    mount_count INT,
    FOREIGN KEY (animals_id) REFERENCES animals (id) ON DELETE CASCADE
);

INSERT INTO young_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM cat
WHERE(DATEDIFF(NOW(), birth_date) > 365 AND DATEDIFF(NOW(), birth_date) < 1095);

INSERT INTO young_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM dog
WHERE(DATEDIFF(NOW(), birth_date) > 365 AND DATEDIFF(NOW(), birth_date) < 1095);

INSERT INTO young_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pets_id, animals_name, species, animal_rooms, birth_date
FROM hamster
WHERE(DATEDIFF(NOW(), birth_date) > 365 AND DATEDIFF(NOW(), birth_date) < 1095);

INSERT INTO young_animals(animals_id, animals_name, species, animal_rooms, birth_date)
SELECT pack_animals_id, animals_name, species, animal_rooms, birth_date
FROM donkey_and_horse
WHERE(DATEDIFF(NOW(), birth_date) > 365 AND DATEDIFF(NOW(), birth_date) < 1095);

DROP PROCEDURE IF EXISTS my_now;
DELIMITER //

CREATE PROCEDURE my_now ()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i < (SELECT COUNT(id)+2 FROM young_animals) DO
	UPDATE young_animals
		SET mount_count = DATEDIFF(NOW(), birth_date)/30.4375
        WHERE id = i;
	SET i = i + 1;
  END WHILE;
END//

CALL my_now()//
DELIMITER ;