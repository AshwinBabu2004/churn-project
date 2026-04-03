# SaaS Customer Churn Prediction & Revenue Impact

## Project Overview
Analyzed 7,032 telecom customers to identify churn drivers, quantify revenue loss, and build a behavioral risk score to prioritize retention efforts.

## Key Findings
- Month-to-month customers churn at **42.7%** vs 2.8% for two-year contracts
- New customers (0–12 months) churn at **47.7%** — nearly half leave in year one
- Fiber optic customers churn at **41.9%**, the highest of any service type
- **$139K/month ($1.67M/year)** in revenue lost to churn
- Churned customers paid **21% more per month** than retained customers

## Churn Risk Score
Built a 0–3 behavioral risk score based on the top 3 churn signals:

| Risk Score | Churn Rate |
|---|---|
| 0 | 3.4% |
| 1 | 14.2% |
| 2 | 39.3% |
| 3 | **70.2%** |

## Tools Used
- **Python** (pandas, scikit-learn, matplotlib, seaborn) — data cleaning, analysis, risk scoring
- **SQL** (SQLite) — segment analysis and revenue queries
- **Tableau** — retention risk dashboard 

## Project Structure

churn_project/
├── data/              # Raw dataset
├── notebooks/         # Jupyter notebook (main analysis)
├── sql/               # SQL queries and execution script
├── exports/           # Cleaned CSVs for Tableau

## Dataset
[Telco Customer Churn — Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
