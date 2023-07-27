-- produce a report that lists the least and most expensive car sold by each employee this year

SELECT * from sales limit 3;
SELECT * from employee limit 3;

SELECT  
  e.firstName, e.lastName,
  MAX(s.salesAmount) as "Most expensive car",
  MIN(s.salesAmount) as "Least expensive car"
FROM sales s
JOIN employee e
on s.employeeId = e.employeeId
where s.soldDate >= date('now','start of year')
GROUP BY e.firstName,e.lastName