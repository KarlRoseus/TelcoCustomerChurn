-- Compare Monthly Charges and Total Charges by Churn Label
SELECT
    'Monthly Charges' AS charge_type,
    Churn_Label AS churn_status,
    ROUND(MIN(Monthly_Charge), 2) AS min_charge,
    ROUND(AVG(Monthly_Charge), 2) AS avg_charge,
    ROUND(MAX(Monthly_Charge), 2) AS max_charge
FROM telco_customers
GROUP BY Churn_Label

UNION ALL

SELECT
    'Total Charges' AS charge_type,
    Churn_Label AS churn_status,
    ROUND(MIN(Total_Charges), 2),
    ROUND(AVG(Total_Charges), 2),
    ROUND(MAX(Total_Charges), 2)
FROM telco_customers
GROUP BY Churn_Label;
