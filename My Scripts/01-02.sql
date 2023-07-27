--get a list of salespeople with zero sales.


SELECT 
  e.firstName , e.lastName
FROM employee as e
LEFT JOIN sales
on e.employeeId = sales.employeeId
where e.title = 'Sales Person'
and sales.salesId IS NULL