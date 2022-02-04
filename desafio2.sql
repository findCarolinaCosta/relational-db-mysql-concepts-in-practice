SELECT
	COUNT(song_name) AS cancoes,
    (SELECT COUNT(artist_name) FROM SpotifyClone.artist) AS artistas,
    (SELECT COUNT(album_name) FROM SpotifyClone.album) AS albuns
  FROM SpotifyClone.song;