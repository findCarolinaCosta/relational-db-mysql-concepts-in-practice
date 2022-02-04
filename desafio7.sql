SELECT
    ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.following_artist AS fa ON ar.artist_id = fa.artist_id
GROUP BY album, artista
ORDER BY seguidores desc, artista, album;