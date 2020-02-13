SELECT  il.InvoiceLineId, t.Name 
AS TrackName, il.TrackId, al.Title 
AS AlbumName, ar.Name 
AS ArtistName 
FROM InvoiceLine il 
LEFT JOIN Track t 
ON il.TrackId=t.TrackId 
LEFT JOIN Album al 
ON al.AlbumId = t.AlbumId 
LEFT JOIN Artist ar 
ON ar.ArtistId = al.ArtistId;

--Provide a query that includes the purchased track name AND artist name with each invoice line item.