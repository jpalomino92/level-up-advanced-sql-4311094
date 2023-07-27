-- Create a report that shows the amount of sales per employee for each month in 2021

SELECT e.firstName , e.lastName, FORMAT("$%.2f",SUM(s.salesAmount)) AS "Ventas Totales", strftime('%m', s.soldDate) AS "MES"
FROM sales s
JOIN employee e
ON s.employeeId = e.employeeId
WHERE strftime('%Y', s.soldDate) = "2021"
GROUP BY e.firstName,e.lastName,strftime('%m', s.soldDate)