SELECT
  p.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.id_musica) AS musicas_ouvidas,
  ROUND(SUM(m.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoa_usuaria AS p
JOIN SpotifyClone.historico_reproducoes AS h ON p.id_pessoa_usuaria = h.id_pessoa_usuaria
JOIN SpotifyClone.musicas AS m ON h.id_musica = m.id_musica
GROUP BY p.nome_pessoa_usuaria
ORDER BY p.nome_pessoa_usuaria;
