-- =====================================
-- 03 - Executive Summary Layer
-- =====================================

DROP VIEW IF EXISTS company_master_summary CASCADE;

CREATE VIEW company_master_summary AS
SELECT
    f.company,

    ROUND(AVG(f.revenue_yoy_growth_pct), 2) AS avg_yoy_growth_pct,
    ROUND(AVG(f.gross_margin_pct), 2) AS avg_gross_margin_pct,
    ROUND(AVG(f.operating_margin_pct), 2) AS avg_operating_margin_pct,
    ROUND(AVG(f.net_margin_pct), 2) AS avg_net_margin_pct,
    ROUND(AVG(f.fcf_margin_pct), 2) AS avg_fcf_margin_pct,

    r.fcf_volatility,
    c.revenue_cagr_pct

FROM financial_performance f
JOIN company_risk_profile r
    ON f.company = r.company
JOIN company_revenue_cagr c
    ON f.company = c.company
GROUP BY
    f.company,
    r.fcf_volatility,
    c.revenue_cagr_pct;
