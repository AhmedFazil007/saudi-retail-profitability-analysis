"""Compare observed discount-band margins; no causal or ROI claims.
Run: python python/discount_margin_analysis.py
Uses saved aggregate results; does not infer row-level causation.
"""
from pathlib import Path
import csv
ROOT = Path(__file__).resolve().parents[1]
rows = list(csv.DictReader((ROOT / "analysis/07_discount_bands.csv").open(encoding="utf-8")))
overall = list(csv.DictReader((ROOT / "analysis/02_overall_kpis.csv").open(encoding="utf-8")))[0]
baseline = float(overall["gross_margin_pct"])
print(f"Overall estimated gross margin: {baseline:.2f}%")
for row in rows:
    margin = float(row["margin_pct"])
    print(f'{row["discount_band"]:>8}: {int(row["transactions"]):>6,} orders | '
          f'SAR {float(row["revenue_sar"]):>12,.2f} revenue | '
          f'{margin:5.2f}% margin | {margin-baseline:+.2f} pp vs overall')
print("\nThese are descriptive differences, not estimated effects of changing discounts.")
