-- =====================================
-- 04 - Data Validation Queries
-- =====================================

-- Check total rows
SELECT COUNT(*) FROM financials;

-- Check years per company
SELECT company, COUNT(*) AS year_count
FROM financials
GROUP BY company;

-- Preview summary output
SELECT *
FROM company_master_summary
ORDER BY revenue_cagr_pct DESC;
