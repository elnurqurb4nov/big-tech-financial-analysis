Big Tech Financial Risk & Growth Analysis (2018–2024)

  Project Overview
This project analyzes the financial performance of 10 major technology companies using SEC 10-K annual data (2018–2024).
The objective was to evaluate structural differences in growth, profitability, and cash flow stability using a SQL-driven analytics workflow and Power BI visualization.

  Companies Included
Apple
Microsoft
Alphabet
Meta
Amazon
Nvidia
Netflix
Adobe
Salesforce
Intel

  Data Source
SEC Form 10-K (GAAP consolidated annual financial statements)
Period covered: 2018–2024
Metrics extracted:
Revenue
Gross Profit
Operating Income
Net Income
Operating Cash Flow
Capital Expenditures
Free Cash Flow

  SQL Architecture
The project follows a layered analytics structure:
1.Raw Layer
   financials (master dataset)
2.Analytics Layer
   YoY growth calculation (LAG window function)
   Margin calculations
   Revenue CAGR modeling
   Free Cash Flow volatility
3.Summary Layer
   Risk–Growth quadrant framework
   Executive comparison view

  Key SQL techniques used:
Window functions (LAG)
Aggregations (GROUP BY, STDDEV)
CAGR calculation using POWER
Multi-layered view design
 
Dashboard Components
  Executive Overview:
Revenue CAGR ranking
Risk–Growth quadrant (CAGR vs FCF volatility)
Margin performance comparison

  Trend Analysis:
Revenue trend (2018–2024)
YoY growth trend
Net margin trend
Free Cash Flow trend
  
  Key Observations
Nvidia emerged as a high-growth outlier with elevated volatility.
Adobe demonstrated strong risk-adjusted stability.
Microsoft showed balanced compounding characteristics.
Intel displayed structural contraction signals.

  Tech Stack
PostgreSQL
Power BI
SQL (Window Functions, Aggregations, Financial Modeling)

  Purpose
This project is part of my portfolio as I continue building toward Financial / Business Data Analyst roles focused on finance-first analytics.

## Dashboard Preview

### Executive Overview
![Executive Overview](powerbi/dashboard_overview.png)

### Trend Analysis
![Trend Analysis](powerbi/dashboard_trend.png)
