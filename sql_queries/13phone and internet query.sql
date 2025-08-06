-- Churn by combination of Phone Service and Internet Service
SELECT 
    Phone_Service,
    Internet_Service,
    COUNT(*) AS total_customers,
    SUM(Churn_Label = 'Yes') AS churned_customers,
    ROUND(SUM(Churn_Label = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM telco_customers
GROUP BY Phone_Service, Internet_Service
ORDER BY churn_rate_percentage DESC;
