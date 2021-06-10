UPDATE customer
SET fax = NULL;

UPDATE customer
SET company = 'Self'
WHERE company is null;

SELECT * FROM customer
WHERE first_name = 'Julia' AND last_name = 'Barnett';

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28;

SELECT * FROM customer
WHERE customer_id = 28;

SELECT * FROM customer
WHERE email ILIKE 'luisrojas%';

UPDATE customer
SET support_rep_id = 4
WHERE customer_id = 57;

SELECT * FROM customer
WHERE customer_id = 57;

SELECT * FROM track
JOIN genre ON track.genre_id = genre.genre_id
WHERE composer IS null AND genre.name ILIKE 'metal';

UPDATE track
SET composer = 'The darkness around us'
WHERE composer is null AND genre_id IN (
  SELECT genre_id FROM genre 
  WHERE name ILIKE 'metal');

SELECT * FROM track
JOIN genre on genre.genre_id = track.genre_id 
WHERE composer is null AND genre.name ILIKE 'meltal';
  