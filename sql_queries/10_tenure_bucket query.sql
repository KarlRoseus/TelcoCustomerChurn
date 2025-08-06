-- Churn Rate by tenure bucket
SELECT 
  CASE 
    WHEN Tenure_in_Months <= 3 THEN '0–3 months'
    WHEN Tenure_in_Months <= 12 THEN '4–12 months'
    WHEN Tenure_in_Months <= 24 THEN '13–24 months'
    ELSE '25+ months'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_customers), 2) AS percent_of_total,
  SUM(Churn_Label = 'Yes') AS churned_customers,
  ROUND(AVG(Churn_Label = 'Yes') * 100, 2) AS churn_rate_percentage
FROM telco_customers
GROUP BY tenure_group
ORDER BY 
  CASE tenure_group
    WHEN '0–3 months' THEN 1
    WHEN '4–12 months' THEN 2
    WHEN '13–24 months' THEN 3
    ELSE 4
  END;
