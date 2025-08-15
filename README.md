
![Banner](Elements/Velynx.png)

## Table of Contents
- [Background and Overview](#background-and-overview)
- [Dataset Overview](#data-structure-overview)
- [Executive Summary](#executive-summary)
- [Key Insights](#insights-deep-dive)
- [Insights to Action](#recommendations)

## Background and Overview
Velynx is a fictional U.S.-based telecommunications provider offering broadband internet and phone (home and mobile) services. Velynx competes in a fast-moving market where customer loyalty is critical to long-term success.

Velynx is facing a growing challenge with customer churn, which threatens both revenue stability and future growth. This project analyzes demographic and service-related data to pinpoint the biggest churn drivers, focusing on broadband service types (DSL, Fiber Optic, Cable), data plan choices, contract structures, and payment methods, and applies these findings to develop data-driven recommendations aimed at improving customer retention.

Insights from this analysis are grouped into the following key areas:
- **Customer Demographics** – How factors such as gender, age group, and dependent status influence churn.  
- **Service Types** – Churn patterns across different internet service offerings.  
- **Contract and Payment Types** – The role of contract length and payment method in customer retention.  
- **Tenure** – How the length of time a customer has been with Velynx correlates with churn rates.  

## Dataset Overview
This analysis uses a dataset of 7,043 customers containing 38 variables covering demographic details, account information, and service usage. Each record includes whether the customer churned, as well as key attributes such as gender, age, marital and dependent status, broadband service type (DSL, Fiber Optic, Cable), data plan type, contract length, payment method, satisfaction score, churn score, and customer lifetime value (CLTV). This combination of data provides a comprehensive view of the factors that may influence customer churn.

The dataset that was used can be found here [Kaggle Telco Customer Churn Data](https://www.kaggle.com/datasets/alfathterry/telco-customer-churn-11-1-3)

Table columns can be found [here](sql/Create_Table.sql)

## Executive Summary
### Summary
The overall churn rate for Velynx stands at 26.54%. The analysis shows that senior citizens, customers without dependents, and single customers exhibit notably higher churn rates. Month-to-month contract holders churn at a much higher rate than those with one or two year agreements, while fiber optic users show higher churn compared to DSL and cable subscribers. Customers using electronic checks as their payment method are also more likely to leave. Addressing these high-risk groups with targeted, data-driven retention strategies could significantly improve customer loyalty and revenue stability.

## Key Insights
### Customer Demographics
![Customer Demographics](Elements/Demographics.png)
**Customer Distribution (Graph)**
- The customer base is nearly balanced in terms of gender:
  - Male: **50.48%**
  - Female: **49.52%**
- Singles make up a slightly larger portion (**51.7%**) compared to married customers (**48.3%**).
- A large majority of customers are:
  - Without dependents: **76.9%**
  - Non-senior citizens: **83.79%**
- Smaller portions of the customer base include:
  - Senior citizens: **16.21%**
  - Customers with dependents: **23.1%**

### Customer Demographic Churn Rate

| Category            | Total Customers | Churned Customers | Churn Rate (%) |
|---------------------|----------------:|------------------:|---------------:|
| Male                |           3,555 |               930 |          26.16 |
| Female              |           3,488 |               939 |          26.92 |
| Single              |           3,641 |             1,200 |          32.96 |
| Married             |           3,402 |               669 |          19.66 |
| Dependents          |           1,627 |               106 |           6.52 |
| No Dependents       |           5,416 |             1,763 |          32.55 |
| Senior Citizen      |           1,142 |               476 |          41.68 |
| Non-Senior Citizen  |           5,901 |             1,393 |          23.61 |

**Churn Rate by Demographic**
- Gender appears to have little impact on churn, with similar rates for:
  - Males: **26.16%**
  - Females: **26.92%**
- Senior citizens show the highest churn rate (**41.68%**), far exceeding non-senior customers (**23.61%**). They are **76% more likely** to churn more than non-seniors, making them a key focus for rentention initiatives. 
- Customers without dependents churn at **32.55%**, compared to just **6.52%** for those with dependents.
- Single customers experience a churn rate of **32.96%**, much higher than married customers (**19.66%**).

### Contract and Tenure
![Banner](Elements/Contract_Type.png)
- Over half of the customer base (**51.26%**) are on month-to-month contracts, which have by far the highest churn rate (**45.84%**).
- One-year contracts make up **22.01%** of customers and have a much lower churn rate (**10.71%**).
- Two-year contracts account for **26.74%** of customers and show the lowest churn rate (**2.55%**).
- This shows that longer contract commitments dramatically reduce churn.

![Banner](Elements/Tenure_Bucket_Churn.png)
- Customers in the **0–3 months** group churn the most, with a rate of **56.80%**, despite being only **14.92%** of the customer base.
- **4–12 months** tenure has a churn rate of **38.77%**.
- Churn steadily drops as tenure increases: **28.71%** for **13–24 months**, and just **14.04%** for **25+ months**.
- This trend suggests that improving early customer experience and onboarding could significantly improve retention.

### Service Types
![Banner](Elements/Services.png)
### Service Type Comparison
Fiber optic customers are nearly **2 times more likely** to churn than DSL customers.  
- Fiber optic churn rate: **41.89%**  
- DSL churn rate: **19.44%**  
- Cable churn rate: **15.44%**  
- This indicates that fiber optic customers may face specific issues — such as pricing, service quality, or competition, that should be investigated and addressed.

### Payment
![Banner](Elements/Payment_Method.png)
- Electronic check users make up **33.56%** of the customer base and have the **highest churn rate at 45.29%**.  
- Mailed check users account for **21.91%** of customers and show the **lowest churn rate at 18.28%**.  
- Bank transfer users make up **22.91%** with a churn rate of **16.85%**.  
- Credit card users represent **21.62%** with a churn rate of **15.03%**.   
- Electronic check customers are **over 2.5 times more likely** to churn compared to credit card customers (45.29% vs. 15.03%). This suggests that customers using electronic checks may represent a more price-sensitive or less loyal segment, making them a prime target for retention incentives.

## Insights to Action 
 **Target Senior Citizens with Retention Offers**  
  - Seniors churn at **41.68%**, far above the overall rate.  
  - Provide loyalty discounts, senior-friendly service plans, and implement early engagement strategies to            proactively address customer needs and mitigate the risk of churn before it occurs.

- **Focus on Customers Without Dependents**  
  - No-dependent customers churn at **32.55%**, compared to just **6.52%** for those with dependents.  
  - Create premium solo plans, flexible service options, or exclusive perks designed for individuals to boost         engagement and loyalty.

- **Address Month-to-Month Contract Holders**  
  - Churn is **over 17 times higher** for month-to-month vs. two-year contracts.  
  - Incentivize switching from shorter-term contracts to longer-term contracts with discounts or free upgrades.

- **Onboard New Customers More Effectively**  
  - The first 3 months see the **highest churn at 56.80%**.  
  - Introduce welcome offers, check-in calls, and usage tips during the onboarding period.

- **Reconsider Fiber Optic Retention Strategies**  
  - Fiber customers churn more than DSL or Cable users.  
  - Conduct targeted surveys and exit interviews with fiber customers to identify recurring issues in pricing,        performance, and service interactions. Use this feedback to guide network upgrades, adjust pricing models,        and refine customer support touchpoints for higher satisfaction and retention

- **Reduce Electronic Check Churn**  
  - Electronic check users churn at **45.29%**, over 2.5× higher than credit card customers.  
  - Promote auto-pay discounts for credit/debit or bank transfers to encourage payment method changes.



