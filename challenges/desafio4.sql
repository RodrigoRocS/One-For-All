SELECT
  p.nome_pessoa_usuaria AS pessoa_usuaria,
  CASE WHEN MAX(h.data_reproducao) >= '2021-01-01' THEN 'Ativa' ELSE 'Inativa' END AS status_pessoa_usuaria
FROM SpotifyClone.pessoa_usuaria AS p
LEFT JOIN SpotifyClone.historico_reproducoes AS h ON p.id_pessoa_usuaria = h.id_pessoa_usuaria
GROUP BY p.nome_pessoa_usuaria
ORDER BY p.nome_pessoa_usuaria;
