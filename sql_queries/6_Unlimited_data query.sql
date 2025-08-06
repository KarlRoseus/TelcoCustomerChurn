-- Unlimited Data churn 
SELECT Unlimited_Data,
       COUNT(*) AS total_customers,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_customers), 2) AS percent_of_total,
       SUM(Churn_Label = 'Yes') AS churned_customers,
       ROUND(AVG(Churn_Label = 'Yes') * 100, 2) AS churn_rate_percentage
FROM telco_customers
GROUP BY Unlimited_Data;
