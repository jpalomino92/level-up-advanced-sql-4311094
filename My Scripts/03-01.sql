--create a report showing the total sales per year

SELECT FORMAT("$%.2f",SUM(salesAmount)) AS "Ventas Totales", strftime('%Y', soldDate) AS "AÑO"
FROM sales
GROUP BY strftime('%Y', soldDate)


