# Saudi Retail Profitability Analysis

**Revenue drivers · Gross margin · Discounts · Retail analytics**

I started with a straightforward retail question: **Are the products bringing in the most revenue also helping the business make money?**

For this project, I analyzed **30,000 synthetic retail transactions** from a fictional Saudi retailer (2023–2025). I looked at revenue, estimated gross profit, discounts, product categories, sales channels and city-level performance.

The figures are simulated. They don't represent an actual retailer or measured business results.

## Executive dashboard

![Retail executive overview](assets/RetailSales-Dashboard_Executive-Overview.png)

| KPI | Result from synthetic data |
|---|---:|
| Revenue | **SAR 19.62M** |
| Estimated gross profit | **SAR 5.29M** |
| Estimated gross margin | **26.93%** |
| Transactions | **30,000** |
| Average order value | **SAR 654.11** |

## Interactive profitability explorer

[Open the interactive discount and margin explorer](dashboard/index.html). It uses the saved aggregate results to compare observed discount bands with the overall estimated margin. The same comparison is available in a [Python reproduction script](python/discount_margin_analysis.py) for the same comparison. The explorer is a **summary dashboard**, not the original full interactive report or a live data connection.

## Three findings I'd bring to a business review

### 1. Electronics drive most of the revenue

Electronics contribute about **SAR 14.94M**, or **76.1%** of revenue. Laptops and smartphones are particularly important within the category.

**Why I'd look closer:** Heavy dependence on one category can make performance sensitive to inventory availability, pricing and product mix. I'd compare product-level margins and stock turnover before deciding to expand or diversify.

### 2. Bigger discounts are linked with lower margins

Non-discounted transactions have an estimated gross margin of **32.93%**, compared with **18.94%** for discounts above 10%—a difference of **13.99 percentage points**.

**Why I'd look closer:** Discounts can help move stock, but a promotion should be judged on total contribution, not sales volume alone. This comparison doesn't prove discounts *caused* the margin difference, so I'd test pricing changes rather than making assumptions.

### 3. Revenue is split almost evenly between channels

Branch sales contribute about **50.4%** of revenue and e-commerce about **49.6%**.

**Why I'd look closer:** Both channels deserve attention. I'd compare their estimated margins, product mix and costs before choosing where to invest more resources.

## Dashboard gallery

**Product and discount analysis**

![Product and discount analysis](assets/RetailSales-Dashboard_Product&Discount-Analysis.png)

**Geographic and channel performance**

![Geographic and channel performance](assets/RetailSales-Dashboard_Geographic&Channel-Performance.png)

These screenshots show the original dashboard views. The separate [discount and margin explorer](dashboard/index.html) is available in the repository, but the original full dashboard isn't included. This project does not include a native Power BI file.

## How I approached the analysis

I checked transaction IDs and numeric fields, calculated revenue and estimated gross-profit KPIs, and compared categories, discount bands, cities and channels. The analysis exports make it easier to trace the dashboard's headline figures.

A useful follow-up in a real business would be to measure **gross profit after promotions, stock turnover, channel costs and repeat purchase rates** before changing pricing or inventory strategy.

## Explore the files

| File | Description |
|---|---|
| [Synthetic transaction data](data/05_retail_transactions_synthetic.csv) | Source CSV |
| [Analysis results](analysis/) | Data-quality and KPI summaries |
| [SQL examples](sql/retail_analysis.sql) | Queries for retail performance analysis |
| [Dashboard screenshots](assets/) | Three report views |

The SQL queries are reproducible examples, not evidence of a production database pipeline.

## Scope and limitations

Gross profit is **estimated**, not audited accounting profit. The data is synthetic, so these findings aren't actual Saudi retail statistics. No revenue increase, cost saving or implemented operational change is claimed.

---

[Ahmed Fazil](https://github.com/AhmedFazil007)
