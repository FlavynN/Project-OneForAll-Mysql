-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    C.cancoes_name as cancao,
    COUNT(H.cancoes_id) as reproducoes
FROM SpotifyClone.cancoes as C
    INNER JOIN SpotifyClone.historico AS H on H.cancoes_id = C.cancoes_id
GROUP BY C.cancoes_name
ORDER BY
    reproducoes DESC,
    cancao
LIMIT 2;