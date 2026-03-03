-- Create master financials table

CREATE TABLE financials (
    company TEXT,
    fiscal_year INT,
    revenue NUMERIC,
    gross_profit NUMERIC,
    operating_income NUMERIC,
    net_income NUMERIC,
    operating_cash_flow NUMERIC,
    capital_expenditures NUMERIC,
    free_cash_flow NUMERIC
);
