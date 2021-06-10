SELECT * FROM animals;
DELETE FROM animals
WHERE name ILIKE 'lion';

DELETE FROM animals
WHERE name ILIKE 'M%';

DELETE FROM animals
WHERE age < 9;