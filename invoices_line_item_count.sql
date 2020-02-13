SELECT  COUNT(il.InvoiceLineId) 
AS InvoiceLineItem, i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total 
FROM InvoiceLine il 
LEFT JOIN Invoice i 
ON il.InvoiceId = i.InvoiceId 
GROUP BY i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total;

--Provide a query that shows all Invoices but includes the # of invoice line items.
