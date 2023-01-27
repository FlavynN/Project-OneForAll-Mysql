-- Active: 1674768835487@@127.0.0.1@3307@SpotifyClone

SELECT
    MIN(P.plano_price) as faturamento_minimo,
    MAX(P.plano_price) as faturamento_maximo,
    ROUND(AVG(P.plano_price), 2) as faturamento_medio,
    SUM(P.plano_price) as faturamento_total
FROM SpotifyClone.plano as P
    INNER JOIN SpotifyClone.usuario as U on P.plano_id = U.plano_id