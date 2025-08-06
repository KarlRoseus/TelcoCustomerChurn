-- avg CLTV (customer lifetime value)
SELECT Churn_Label,
       COUNT(*) AS total_customers,
       ROUND(AVG(CLTV), 2) AS avg_cltv
FROM telco_customers
GROUP BY Churn_Label;

