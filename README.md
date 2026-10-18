# Saudi Retail Profitability & Revenue Driver Analysis

**Interactive 3-page portfolio dashboard | 30,000 synthetic transactions | 2023–2025**

> **Synthetic data disclosure:** This is a fictional Saudi retail scenario for analytics demonstration. Figures are not real company performance, and recommendations are not implemented business outcomes.

## Executive summary

A fictional multi-city retailer needs to understand the drivers of sales, gross profitability, discount performance, and geographic differences. This project analyzes transaction-level data and presents commercial insights in an interactive browser-based dashboard.

| KPI | Result |
|---|---:|
| Revenue | 19.62M SAR |
| Estimated gross profit | 5.29M SAR |
| Estimated gross margin | 26.93% |
| Transactions | 30,000 |
| Average order value | 654.11 SAR |

## Key findings and recommendations

1. **Category concentration:** Electronics contributes approximately **76.1%** of revenue (14.94M SAR). **Action:** Monitor high-value electronics inventory and explore diversification opportunities.
2. **Discount sensitivity:** Estimated gross margin is **32.93%** on non-discounted transactions versus **18.94%** on transactions discounted above 10%—a **13.99 percentage-point difference**. **Action:** Evaluate discounts by product and test promotions before adjusting policy. This is an association, not proof of causation.
3. **Channel balance:** Branch contributes approximately **50.4%** of revenue and E-commerce **49.6%**. **Action:** Maintain cross-channel performance tracking and investigate city-level margin variation.

## Explore the dashboard

Open [dashboard/index.html](dashboard/index.html) in Chrome or Edge after downloading the project files. The dashboard uses a fixed **1920 × 1080** canvas with page navigation positioned beneath it.

- **Executive Overview:** KPIs, monthly trends, products, channels, and categories.
- **Product & Discount Analysis:** profitability, discount bands, and product performance.
- **Geographic & Channel Performance:** city and channel comparisons.

The HTML is an offline interactive deliverable, **not a native .pbix or Tableau workbook**.

## Project structure

```text
dashboard/index.html
data/retail_transactions_synthetic.csv
analysis/                 # Aggregated results and quality checks
sql/retail_analysis.sql   # Reproducible PostgreSQL example queries
assets/design_reference.png
README.md
```

## Methods and tools

- **Data:** 30,000 synthetic transaction records across 2023–2025.
- **Analysis:** revenue and gross-profit aggregation, category mix, product rankings, discount bands, and city/channel comparisons.
- **SQL:** Example PostgreSQL queries provided for replication; not an executed production ETL pipeline.
- **Excel/Power BI:** Explored with spreadsheet and Power BI reporting workflows; the repository's main deliverable is HTML.
- **Quality:** Transaction uniqueness and numeric integrity checks; see analysis/01_data_quality.csv.

## Limitations

Gross profit is an **estimated** source field, not audited accounting profit. The data is fictional. No incremental lift or causal impact from discounting is established. The dashboard is for portfolio demonstration, not a live production connection.

## Suggested topics

`retail-analytics` `business-intelligence` `power-bi` `sql` `data-analysis` `profitability` `dashboard` `portfolio-project`
