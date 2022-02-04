 SELECT 
    s.song_name AS cancao,
    COUNT(*) AS reproducoes
FROM SpotifyClone.reproduction_history AS rh
INNER JOIN SpotifyClone.song AS s ON rh.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;