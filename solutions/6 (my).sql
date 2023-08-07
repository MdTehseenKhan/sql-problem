SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM songs;

SELECT 
    a.name AS Name,
    a.release_year AS 'Release Year',
    SUM(s.length) AS Duration
FROM albums AS a
JOIN songs AS s ON a.id = s.album_id
GROUP BY s.album_id
ORDER BY Duration DESC
LIMIT 1
;