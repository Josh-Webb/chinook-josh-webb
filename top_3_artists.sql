/*top 3 best selling artist*/
select TOP 3 ar.name as artistname, sum(il.quantity) as tracksales
from artist ar 
join album al on ar.ArtistId = al.ArtistId
join track t on al.AlbumId = t.AlbumId
join InvoiceLine il on t.TrackId = il.TrackId
join invoice i on il.InvoiceId = i.InvoiceId
group by ar.Name
order by sum(il.quantity) desc;
/*uses sum twice so we can use the total in our select*/

--Provide a query that shows the top 3 best selling artists.