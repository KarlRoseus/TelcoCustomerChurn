-- avg tenure 
SELECT Churn_Label,
       COUNT(*) AS total_customers,
       ROUND(AVG(Tenure_in_Months), 2) AS avg_tenure
FROM telco_customers
GROUP BY Churn_Label;
