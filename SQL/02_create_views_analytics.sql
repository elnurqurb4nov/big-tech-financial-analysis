 =====================================
-- 02 - Analytics Layer Views
-- =====================================

-- Drop old views
DROP VIEW IF EXISTS financial_performance CASCADE;
DROP VIEW IF EXISTS company_risk_profile CASCADE;
DROP VIEW IF EXISTS company_revenue_cagr CASCADE;

-- 1️ Financial Performance View (YoY + Margins)

CREATE VIEW financial_performance AS
SELECT
    company,
    fiscal_year,
    revenue,
    free_cash_flow,

    LAG(revenue) OVER (PARTITION BY company ORDER BY fiscal_year) AS prev_revenue,

    ROUND(
        (revenue - LAG(revenue) OVER (PARTITION BY company ORDER BY fiscal_year))
        / LAG(revenue) OVER (PARTITION BY company ORDER BY fiscal_year) * 100
    , 2) AS revenue_yoy_growth_pct,

    ROUND(gross_profit / revenue * 100, 2) AS gross_margin_pct,
    ROUND(operating_income / revenue * 100, 2) AS operating_margin_pct,
    ROUND(net_income / revenue * 100, 2) AS net_margin_pct,
    ROUND(free_cash_flow / revenue * 100, 2) AS fcf_margin_pct

FROM financials;


-- 2️ Risk Profile (Volatility)

CREATE VIEW company_risk_profile AS
SELECT
    company,
    ROUND(STDDEV_POP(free_cash_flow), 2) AS fcf_volatility
FROM financials
GROUP BY company;


-- 3️ Revenue CAGR

CREATE VIEW company_revenue_cagr AS
SELECT
    company,
    ROUND(
        (POWER(
            MAX(revenue)::NUMERIC / MIN(revenue)::NUMERIC,
            1.0 / (MAX(fiscal_year) - MIN(fiscal_year))
        ) - 1) * 100
    , 2) AS revenue_cagr_pct
FROM financials
GROUP BY company;

