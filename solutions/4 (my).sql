SELECT * FROM bands;

SELECT * FROM albums;

/* Unique Band Names */
SELECT DISTINCT bands.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id;


SELECT bands.id, bands.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) > 0;