CREATE VIEW rock AS
SELECT track.name FROM track
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name ILIKE 'rock';

SELECT * FROM rock;

CREATE VIEW classical_count AS
SELECT track.name FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id
WHERE playlist.name ILIKE 'classical';

SELECT COUNT(*) FROM classical_count;