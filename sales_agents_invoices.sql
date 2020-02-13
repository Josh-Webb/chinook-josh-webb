SELECT e.FirstName 
AS EmployeeFirstName, e.LastName 
AS EmployeeLastName, c.CustomerId, i.InvoiceId, e.EmployeeId  
FROM Invoice i 
LEFT JOIN Customer c 
ON i.CustomerId = c.CustomerId 
LEFT JOIN Employee e 
ON c.SupportRepId = e.EmployeeId;

--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.