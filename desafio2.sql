-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    COUNT(DISTINCT C.cancoes_name) AS cancoes,
    COUNT(DISTINCT A.artista_name) AS artistas,
    COUNT(DISTINCT AI.album_name) AS albuns
FROM SpotifyClone.cancoes AS C
    INNER JOIN SpotifyClone.album AS AI ON C.album_id = AI.album_id
    INNER JOIN SpotifyClone.artista AS A ON A.artista_id = AI.artista_id;