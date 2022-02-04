SELECT 
	  s.song_name AS nome, 
    COUNT(*) AS reproducoes
FROM SpotifyClone.reproduction_history AS rh
INNER JOIN SpotifyClone.user AS u ON rh.user_id = u.user_id
INNER JOIN SpotifyClone.song AS s ON rh.song_id = s.song_id
WHERE u.plan_id IN (1 , 2)
GROUP BY nome
ORDER BY nome;