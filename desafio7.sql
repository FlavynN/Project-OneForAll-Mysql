-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    A.artista_name as artista,
    AB.album_name as album,
    COUNT(S.artista_id) as seguidores
FROM SpotifyClone.artista as A
    INNER JOIN SpotifyClone.album as AB ON AB.artista_id = A.artista_id
    INNER JOIN SpotifyClone.seguindo as S ON S.artista_id = A.artista_id
GROUP BY
    artista_name,
    album_name
ORDER BY
    seguidores DESC,
    artista_name,
    album_name;