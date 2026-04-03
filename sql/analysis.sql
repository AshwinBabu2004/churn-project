-- 1. Churn rate by contract type
SELECT 
    Contract,
    COUNT(*) AS TotalCustomers,
    SUM(Churn) AS ChurnedCustomers,
    ROUND(AVG(Churn) * 100, 1) AS ChurnRate
FROM customers
GROUP BY Contract
ORDER BY ChurnRate DESC;


-- 2. Revenue lost by churn segment
SELECT
    Churn,
    COUNT(*) AS CustomerCount,
    ROUND(AVG(MonthlyCharges), 2) AS AvgMonthlyCharges,
    ROUND(SUM(MonthlyCharges), 2) AS TotalMonthlyRevenue
FROM customers
GROUP BY Churn;


-- 3. Churn rate by tenure group
SELECT
    TenureGroup,
    COUNT(*) AS TotalCustomers,
    ROUND(AVG(Churn) * 100, 1) AS ChurnRate
FROM customers
GROUP BY TenureGroup
ORDER BY ChurnRate DESC;


-- 4. High risk customers (score = 3)
SELECT
    customerID,
    Contract,
    TenureGroup,
    InternetService,
    MonthlyCharges,
    RiskScore
FROM customers
WHERE RiskScore = 3
ORDER BY MonthlyCharges DESC
LIMIT 20;
