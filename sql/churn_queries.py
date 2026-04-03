import pandas as pd
import sqlite3

conn = sqlite3.connect('../exports/churn.db')

queries = {
    "Churn by Contract": "SELECT Contract, COUNT(*) AS TotalCustomers, ROUND(AVG(Churn)*100,1) AS ChurnRate FROM customers GROUP BY Contract ORDER BY ChurnRate DESC",
    "Revenue by Churn": "SELECT Churn, COUNT(*) AS CustomerCount, ROUND(SUM(MonthlyCharges),2) AS TotalMonthlyRevenue FROM customers GROUP BY Churn",
    "Churn by Tenure": "SELECT TenureGroup, COUNT(*) AS TotalCustomers, ROUND(AVG(Churn)*100,1) AS ChurnRate FROM customers GROUP BY TenureGroup ORDER BY ChurnRate DESC",
    "Top Risk Customers": "SELECT customerID, Contract, MonthlyCharges, RiskScore FROM customers WHERE RiskScore = 3 ORDER BY MonthlyCharges DESC LIMIT 10"
}

for name, query in queries.items():
    print(f"\n--- {name} ---")
    print(pd.read_sql_query(query, conn))

conn.close()
