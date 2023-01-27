-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    U.usuario_name as usuario,
    IF (
        YEAR(
            MAX(H.historico_de_reproducao)
        ) >= 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) as status_usuario
FROM SpotifyClone.usuario as U
    INNER JOIN SpotifyClone.historico as H on H.usuario_id = U.usuario_id
GROUP BY H.usuario_id
ORDER BY usuario;