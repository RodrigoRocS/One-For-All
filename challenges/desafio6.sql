SELECT 
  ROUND(MIN(p.valor_plano), 2) AS faturamento_minimo,
  ROUND(MAX(p.valor_plano), 2) AS faturamento_maximo,
  ROUND(AVG(p.valor_plano), 2) AS faturamento_medio,
  ROUND(SUM(p.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.pessoa_usuaria AS pu
JOIN SpotifyClone.planos AS p ON pu.id_plano = p.id_plano;
