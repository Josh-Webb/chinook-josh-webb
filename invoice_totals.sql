SELECT 
e.FirstName AS EmployeeFirstName, 
e.LastName AS EmployeeLastName, 
c.FirstName AS CustomerFirstName, 
c.LastName AS CustomerFirstName, c.Country 
AS CustomerCountry, i.Total  
FROM Invoice i 
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId 
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;