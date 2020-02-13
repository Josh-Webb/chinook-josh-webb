SELECT c.FirstName, c.LastName, i.InvoiceId, i.BillingCountry, i.InvoiceDate 
FROM Customer c 
LEFT JOIN Invoice i 
ON c.CustomerId = i.CustomerId 
WHERE c.Country='Brazil';

/*Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.*/