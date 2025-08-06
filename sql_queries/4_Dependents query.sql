-- Dependents Churn Breakdown + Summary Totals


-- Number of Dependents (0, 1, 2, etc.)
SELECT 
    CASE 
        WHEN Dependents = 'No' THEN '0'
        ELSE CAST(Number_of_Dependents AS CHAR)
    END AS group_label,
    COUNT(*) AS total_customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_customers), 2) AS percent_of_total,
    SUM(Churn_Label = 'Yes') AS churned_customers,
    ROUND(AVG(Churn_Label = 'Yes') * 100, 2) AS churn_rate_percentage
FROM telco_customers
GROUP BY group_label

UNION ALL

-- Total With Dependents
SELECT 
    'With Dependents',
    COUNT(*),
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_customers), 2),
    SUM(Churn_Label = 'Yes'),
    ROUND(AVG(Churn_Label = 'Yes') * 100, 2)
FROM telco_customers
WHERE Dependents = 'Yes'

UNION ALL

-- Total Without Dependents
SELECT 
    'Without Dependents',
    COUNT(*),
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_customers), 2),
    SUM(Churn_Label = 'Yes'),
    ROUND(AVG(Churn_Label = 'Yes') * 100, 2)
FROM telco_customers
WHERE Dependents = 'No';

