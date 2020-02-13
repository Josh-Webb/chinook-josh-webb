SELECT SUM(Total) AS 'Total Sales for 2009 and 2011'
FROM Invoice
WHERE InvoiceDate BETWEEN '2008-12-31 23:59:59.999' AND '2009-12-31 23:59:59.999'
OR InvoiceDate BETWEEN '2010-12-31 23:59:59.999' AND '2011-12-31 23:59:59.999';

--What are the respective total sales for each of those years?