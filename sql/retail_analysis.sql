-- PostgreSQL examples for the supplied synthetic retail CSV.
-- Import the CSV into retail_sales first; these are illustrative queries, not production ETL.
SELECT COUNT(*) AS transaction_count,
 ROUND(SUM(sales_amount_sar)::numeric,2) AS revenue_sar,
 ROUND(SUM(estimated_gross_profit_sar)::numeric,2) AS gross_profit_sar,
 ROUND(100.0*SUM(estimated_gross_profit_sar)/NULLIF(SUM(sales_amount_sar),0),2) AS gross_margin_pct
FROM retail_sales;

SELECT product_category,
 ROUND(SUM(sales_amount_sar)::numeric,2) AS revenue_sar,
 ROUND(SUM(estimated_gross_profit_sar)::numeric,2) AS gross_profit_sar,
 ROUND(100.0*SUM(estimated_gross_profit_sar)/NULLIF(SUM(sales_amount_sar),0),2) AS margin_pct,
 ROUND(100.0*SUM(sales_amount_sar)/NULLIF(SUM(SUM(sales_amount_sar)) OVER (),0),2) AS revenue_share_pct
FROM retail_sales GROUP BY product_category ORDER BY revenue_sar DESC;

SELECT CASE WHEN discount_pct=0 THEN '0%'
 WHEN discount_pct<=0.05 THEN '>0-5%'
 WHEN discount_pct<=0.10 THEN '>5-10%'
 ELSE '>10%' END AS discount_band,
 COUNT(*) AS transactions,
 ROUND(SUM(sales_amount_sar)::numeric,2) AS revenue_sar,
 ROUND(100.0*SUM(estimated_gross_profit_sar)/NULLIF(SUM(sales_amount_sar),0),2) AS margin_pct
FROM retail_sales GROUP BY 1 ORDER BY 1;
