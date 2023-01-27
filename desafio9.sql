-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    COUNT(H.cancoes_id) as quantidade_musicas_no_historico
FROM SpotifyClone.usuario as U
    INNER JOIN SpotifyClone.historico as H ON U.usuario_id = H.usuario_id
WHERE
    U.usuario_name = 'Barbara Liskov';