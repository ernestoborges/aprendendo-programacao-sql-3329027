-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"

SELECT
AlbumId,
Title,
albums.ArtistId,
Name as Artist_Name
FROM albums
LEFT JOIN
artists ON albums.ArtistId = artists.ArtistId;