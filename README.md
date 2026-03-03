# Big Tech Financial Risk & Growth Analysis (2018–2024)

## Project Overview

This project analyzes the financial performance of 10 major technology companies using SEC 10-K annual (GAAP) data from 2018–2024.

The objective is to evaluate structural differences in growth, profitability, and cash flow stability through a SQL-based analytics workflow and Power BI dashboard design.

This is a finance-first analytics project focused on transforming raw financial statements into structured analytical insights.

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

## Data Source

- SEC Form 10-K (Annual Reports)  
- GAAP consolidated financial statements  
- Period: 2018–2024  

Metrics extracted:

- Revenue  
- Gross Profit  
- Operating Income  
- Net Income  
- Operating Cash Flow  
- Capital Expenditures  
- Free Cash Flow  

---

## SQL Architecture

The project follows a layered analytical structure:

### 1. Raw Layer
`financials`  
Master dataset containing cleaned annual financial data for all companies.

### 2. Analytics Layer
- Revenue YoY Growth (LAG window function)
- Margin calculations (Gross, Operating, Net, FCF)
- Revenue CAGR modeling (POWER function)
- Free Cash Flow volatility (STDDEV)

### 3. Summary Layer
- Risk–Growth quadrant framework
- Executive comparison view
- Company-level performance aggregation

Key SQL techniques used:

- Window Functions (LAG)
- Aggregations (GROUP BY, STDDEV)
- CAGR calculation using POWER
- Multi-layered view design
- Financial metric modeling

---

## Dashboard Components

### Executive Overview
- Revenue CAGR ranking
- Risk–Growth quadrant (CAGR vs FCF volatility)
- Margin comparison across companies
- KPI summary cards

### Trend Analysis
- Revenue trend (2018–2024)
- Revenue YoY growth trend
- Net margin trend
- Free Cash Flow trend

---

## Key Observations

- Nvidia emerged as a high-growth outlier with elevated volatility.
- Adobe demonstrated strong risk-adjusted stability.
- Microsoft showed balanced compounding characteristics.
- Intel displayed structural contraction signals over the period.

---

## Tech Stack

- PostgreSQL
- SQL (Window Functions, Aggregations, Financial Modeling)
- Power BI

---

## Purpose

This project is part of my portfolio as I continue building toward Financial / Business Data Analyst roles focused on finance-driven analytics and structured data modeling.

The full SQL workflow and dashboard visualizations are included in this repository.
