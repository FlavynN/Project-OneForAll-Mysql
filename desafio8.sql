-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    A.artista_name as artista,
    AB.album_name as album
FROM SpotifyClone.artista as A
    INNER JOIN SpotifyClone.album as AB ON AB.artista_id = A.artista_id
WHERE
    A.artista_name = 'Elis Regina'
LIMIT 2;