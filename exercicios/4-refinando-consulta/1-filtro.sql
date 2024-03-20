-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"

WITH musicas AS (
  SELECT
  tracks.name as track, 
  albums.Title AS album,
  artists.Name AS artist
  FROM tracks
  FULL JOIN albums ON tracks.AlbumId = albums.AlbumId
  FULL JOIN artists ON albums.ArtistId = artists.ArtistId
)

SELECT * FROM musicas
WHERE artist LIKE '%Nação%'
AND album NOT LIKE 'Da Lama Ao Caos';