-- get a list of employees who have made more than five sales this year

SELECT  
  e.firstName, e.lastName, count(s.salesId),
  MAX(s.salesAmount) as "Most expensive car",
  MIN(s.salesAmount) as "Least expensive car"
FROM sales s
JOIN employee e
on s.employeeId = e.employeeId
where s.soldDate >= date('now','start of year')
GROUP BY e.firstName,e.lastName
HAVING count(s.salesId) > 5