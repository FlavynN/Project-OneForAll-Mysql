-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    U.usuario_name AS usuario,
    COUNT(H.cancoes_id) as qt_de_musicas_ouvidas,
    ROUND(SUM(S.cancoes_duracao / 60), 2) as total_minutos
FROM SpotifyClone.usuario as U
    INNER JOIN SpotifyClone.historico AS H on H.usuario_id = U.usuario_id
    INNER JOIN SpotifyClone.cancoes as S on S.cancoes_id = H.cancoes_Id
GROUP BY H.usuario_id
ORDER BY usuario;