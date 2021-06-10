SELECT * FROM invoice_line
WHERE unit_price > 0.99;

SELECT invoice_date, total, first_name, last_name FROM customer
JOIN invoice ON invoice.customer_id = customer.customer_id;

SELECT customer.first_name, customer.first_name, employee.first_name, employee.last_name FROM customer
JOIN employee ON employee.employee_id = customer.support_rep_id;

SELECT title, name FROM artist
JOIN album ON artist.artist_id = album.artist_id;

SELECT track_id, name FROM playlist
JOIN playlist_track ON playlist_track.playlist_id = playlist.playlist_id
WHERE name ILIKE 'music';

SELECT name FROM track
JOIN playlist_track on track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

SELECT track.name, playlist.name FROM track
JOIN playlist_track ON playlist_track.track_id = track.track_id
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name, album.title FROM track
JOIN genre ON track.genre_id = genre.genre_id
JOIN album ON track.album_id = album.album_id
WHERE genre.name ILIKE 'alternative & punk';