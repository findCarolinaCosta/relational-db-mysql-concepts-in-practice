SELECT
  u.user_name AS usuario,
  COUNT(*) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.duration_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.reproduction_history AS rh
INNER JOIN SpotifyClone.user AS u ON rh.user_id = u.user_id
INNER JOIN SpotifyClone.song AS s ON rh.song_id = s.song_id
GROUP BY u.user_name
ORDER BY u.user_name;