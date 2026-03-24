# Big Tech Financial Risk & Growth Analysis (2018–2024)

## Overview
This project provides a **financial risk and growth analysis** of 10 major technology companies using SEC 10-K (GAAP) data from 2018–2024.  
It evaluates structural differences in **growth, profitability, and cash flow stability** through a **SQL-based analytics workflow** and **Power BI dashboard design**.  

The project transforms raw financial statements into structured analytical insights suitable for **investors, analysts, and data-driven finance roles**.

---

## Companies Included

- Apple  
- Microsoft  
- Alphabet  
- Meta  
- Amazon  
- Nvidia  
- Netflix  
- Adobe  
- Salesforce  
- Intel  

---

## Data Sources

- SEC Form 10-K (Annual Reports)  
- GAAP consolidated financial statements  
- Period: 2018–2024  

**Metrics extracted:**

- Revenue  
- Gross Profit  
- Operating Income  
- Net Income  
- Operating Cash Flow  
- Capital Expenditures  
- Free Cash Flow  

---

## SQL Analytical Architecture

The project uses a **layered SQL approach** for data transformation and analysis:

### 1. Raw Layer
- `financials` table: Master dataset containing cleaned annual financial data for all companies

### 2. Analytics Layer
- Revenue YoY Growth (using `LAG` window function)  
- Margin calculations (Gross, Operating, Net, Free Cash Flow)  
- Revenue CAGR modeling (`POWER` function)  
- Free Cash Flow volatility (`STDDEV`)  

### 3. Summary Layer
- Risk–Growth quadrant framework (CAGR vs FCF volatility)  
- Executive overview comparisons  
- Company-level performance aggregation  

**Key SQL techniques:** Window functions, aggregations (`GROUP BY`, `STDDEV`), CAGR calculation, multi-layered views, metric modeling

---

## Power BI Dashboard

### Executive Overview
- Revenue CAGR ranking  
- Risk–Growth quadrant visualization  
- Margin comparison across companies  
- KPI summary cards

### Trend Analysis
- Revenue trends (2018–2024)  
- Revenue YoY growth trends  
- Net margin trends  
- Free Cash Flow trends  

**Example Visualizations:**
- Risk–Growth quadrant chart  
- Revenue trend lines per company  
- Free Cash Flow volatility comparison  

---

## Key Insights

- **Nvidia:** High-growth outlier with elevated volatility  
- **Adobe:** Strong risk-adjusted stability  
- **Microsoft:** Balanced compounding characteristics  
- **Intel:** Structural contraction signals over the period  

These insights highlight **differences in growth vs risk profiles** across Big Tech companies.

---

## Technologies Used

- PostgreSQL / SQL (window functions, aggregations, financial metric modeling)  
- Power BI for dashboard and interactive visualizations  

---

## How to Run

1. Load `financials` table into PostgreSQL  
2. Execute SQL scripts sequentially:  
```sql
-- Clean raw financials
RUN scripts/01_raw_layer.sql;

-- Calculate analytics metrics
RUN scripts/02_analytics_layer.sql;

-- Generate summary & risk-growth quadrant
RUN scripts/03_summary_layer.sql;
