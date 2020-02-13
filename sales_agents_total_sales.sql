SELECT e.FirstName, e.LastName, SUM(i.Total)  
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.customerid = i.customerid
WHERE e.title LIKE '%agent%'
GROUP BY e.FirstName, e.LastName, e.EmployeeId;

/*SELECT e.FirstName, e.LastName, SUM(i.Total)  
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.customerid = i.customerid
GROUP BY e.FirstName, e.LastName, e.EmployeeId;*/

/*The WHERE LIKE isn't neccesary in this instance 
but will be useful later.*/

--Provide a query that shows total sales made by each sales agent.