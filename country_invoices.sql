SELECT BillingCountry, COUNT(*) 
AS NumberPerCountry 
FROM Invoice 
GROUP BY BillingCountry

--Provide a query that shows the # of invoices per country.