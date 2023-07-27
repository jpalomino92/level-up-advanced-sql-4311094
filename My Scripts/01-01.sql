--Challenge  retrive a list of employers including firts and last names and the first and last names of their inmediate managers.

SELECT e.firstName AS EmployeeName,e.lastName AS EmployeeLastName,
m.firstName as ManagerFirstName, m.lastName AS ManagerLastName 
from employee as e
join employee as m
ON e.managerId = m.employeeId
limit 10