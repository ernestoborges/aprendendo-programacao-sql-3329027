-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"

SELECT
TrackId,
tracks.Name,
Milliseconds,
composer,
Bytes,
UnitPrice,
title as album_title,
artists.name as artist_name
FROM tracks
INNER JOIN
albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN
artists ON albums.ArtistId = artists.ArtistId;

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

WITH musicas as (
  SELECT *, artists.name as artist_name
  FROM tracks
  INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
  INNER JOIN artists ON albums.ArtistId = artists.ArtistId
)

SELECT
artist_name,
COUNT(*) as total 
FROM musicas 
GROUP BY artist_name;