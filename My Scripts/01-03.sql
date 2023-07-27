--get a list of all sales and all customer even if some of the data has been removed

SELECT * from sales limit 3;
SELECT * from customer limit 3;

SELECT s.salesId , s.salesAmount,s.soldDate,
  c.customerId,c.firstName,c.lastName
from sales s
FULL JOIN customer c
on s.customerId = c.customerId
