SELECT * FROM TrainingProgram
SELECT * FROM Employee
SELECT * FROM EmployeeTraining

-- Connects/Displays employee to training program.

SELECT e.FirstName, e.LastName, tp.Name, tp.StartDate, tp.EndDate, tp.MaxAttendees
FROM Employee e
JOIN EmployeeTraining ON e.Id = EmployeeTraining.EmployeeId
JOIN TrainingProgram tp ON EmployeeTraining.TrainingProgramId = tp.Id

-- 
SELECT Id, [Name], StartDate, EndDate, MaxAttendees
FROM TrainingProgram

INSERT INTO TrainingProgram ([Name], StartDate, EndDate, MaxAttendees)
VALUES ('Empty', '2019-08-30', '2019-09-20', 2)

SELECT [Name], StartDate
FROM TrainingProgram
WHERE CONVERT(date,StartDate)=CONVERT(DATE,getdate());

-- Assigning employee training. 
INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId)
VALUES (6, 10);

-- Elligible training programs
SELECT e.FirstName, e.LastName, tp.Name, tp.StartDate, e.Id AS 'Employee Id', tp.Id AS 'Training Program Id'
FROM Employee e
JOIN EmployeeTraining et ON e.Id = et.EmployeeId
JOIN TrainingProgram tp ON et.TrainingProgramId = tp.Id
WHERE CURRENT_TIMESTAMP < tp.StartDate



SELECT COUNT(Id) AS AttendeeCount
FROM EmployeeTraining
GROUP BY TrainingProgramId

-- Grabbing departments and employees
SELECT e.FirstName, e.LastName, d.Name, d.Budget
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
WHERE d.Id = 2;

INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId)
VALUES (1, 6)

SELECT tp.Name AS [Name], tp.StartDate AS StartDate, tp.EndDate AS EndDate, e.Id AS EmployeeId, tp.Id AS TrainingProgramId, tp.MaxAttendees AS MaxAttendees 
 FROM Employee e 
JOIN EmployeeTraining et ON e.Id = et.EmployeeId 
JOIN TrainingProgram tp ON et.TrainingProgramId = tp.Id 
WHERE CURRENT_TIMESTAMP < StartDate
AND EmployeeId != 4

SELECT tp.Name AS [Name], tp.StartDate AS StartDate, tp.EndDate AS EndDate, tp.Id AS TrainingProgramId, tp.MaxAttendees AS MaxAttendees
FROM TrainingProgram tp 
JOIN EmployeeTraining et ON TrainingProgramId = tp.Id

INSERT INTO TrainingProgram (
                                Name,
                                StartDate,
                                EndDate,
                                MaxAttendees
                                ) VALUES (
                                'August',
                                2019-09-26,
                                2019-10-31,
                                7)

                                SELECT tp.Name AS [Name], tp.StartDate AS StartDate, tp.EndDate AS EndDate, e.Id AS EmployeeId, tp.Id AS TrainingProgramId, tp.MaxAttendees AS MaxAttendees 
                                        FROM EmployeeTraining et 
                                        LEFT JOIN Employee e ON e.Id = et.EmployeeId 
                                        JOIN TrainingProgram tp ON et.TrainingProgramId = tp.Id 
                                        WHERE CURRENT_TIMESTAMP < tp.StartDate AND EmployeeId != 7


 SELECT [d].[Id], [d].[Budget], [d].[Name]
      FROM [Department] AS [d]