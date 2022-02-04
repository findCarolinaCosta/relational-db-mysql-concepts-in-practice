SELECT 
	  ar.artist_name AS artista, 
    al.album_name AS album
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS ar ON al.artist_id = ar.artist_id
WHERE ar.artist_name = 'Walter Phoenix'
ORDER BY album;