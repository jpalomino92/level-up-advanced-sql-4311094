-- pull a report that totals the number of cars sold by each employee

SELECT count(s.salesId) as SoldCars, e.firstName, e.lastName
from sales s
JOIN employee e
on s.employeeId = e.employeeId
GROUP BY e.firstName,e.lastName
ORDER BY SoldCars DESC
