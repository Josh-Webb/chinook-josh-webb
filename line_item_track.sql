SELECT t.Name, il.TrackId, il.InvoiceLineId 
FROM InvoiceLine il 
LEFT JOIN Track t 
ON il.TrackId=t.TrackId;

--Provide a query that includes the purchased track name with each invoice line item.