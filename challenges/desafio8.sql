SELECT
  a.nome_artista AS artista,
  al.nome_album AS album
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.albuns AS al ON a.id_artista = al.id_artista
WHERE a.nome_artista = 'Elis Regina'
ORDER BY album;
