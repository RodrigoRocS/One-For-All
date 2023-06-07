SELECT m.nome_musica AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS m
JOIN SpotifyClone.historico_reproducoes AS h ON m.id_musica = h.id_musica
GROUP BY m.nome_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;

