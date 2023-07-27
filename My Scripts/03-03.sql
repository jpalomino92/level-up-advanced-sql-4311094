-- find all sales where the car purchased was electric

SELECT m.model,s.salesAmount, s.soldDate
FROM sales s
JOIN inventory i
ON s.inventoryId = i.inventoryId
JOIN model m 
ON i.modelId = m.modelId
WHERE i.modelId IN (
SELECT modelId FROM MODEL WHERE EngineType = "Electric")
