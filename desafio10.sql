-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    C.cancoes_name as nome,
    COUNT(H.cancoes_id) as reproducoes
FROM SpotifyClone.cancoes as C
    INNER JOIN SpotifyClone.historico as H ON C.cancoes_id = H.cancoes_id
    INNER JOIN SpotifyClone.usuario as U ON H.usuario_id = U.usuario_id
WHERE
    U.plano_id = 1
    OR U.plano_id = 4
GROUP BY nome
ORDER BY nome;