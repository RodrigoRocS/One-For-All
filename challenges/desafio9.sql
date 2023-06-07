SELECT COUNT(*) AS musicas_no_historico
FROM SpotifyClone.pessoa_usuaria AS pu
JOIN SpotifyClone.historico_reproducoes AS h ON pu.id_pessoa_usuaria = h.id_pessoa_usuaria
WHERE pu.nome_pessoa_usuaria = 'Barbara Liskov';
