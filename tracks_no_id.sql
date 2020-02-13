SELECT t.Name, al.Title 
AS Album, mt.Name 
AS MediaType, g.Name 
AS Genre 
FROM Track t 
LEFT JOIN Album al 
ON t.AlbumId = al.AlbumId 
INNER JOIN MediaType mt 
ON t.MediaTypeId=mt.MediaTypeId 
INNER JOIN Genre g 
ON t.GenreId=g.GenreId;

--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
