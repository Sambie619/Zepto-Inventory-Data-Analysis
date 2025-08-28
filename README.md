📊 Zepto Inventory Dataset – Business Insights & Analysis
📌 Project Overview

This project analyzes Zepto’s Inventory Dataset to uncover business-critical insights regarding product pricing, discounts, availability, and category-level performance.
The dataset simulates real-world retail/e-commerce inventory management where businesses must optimize stock levels, discounts, and pricing strategies to maximize revenue and customer satisfaction.
The analysis leverages SQL queries for data exploration, cleaning, and insight generation.

🗂 Dataset Structure
The dataset is stored in a single table ZEPTO with the following schema:

| Column Name              | Data Type    | Description                                           |
| ------------------------ | ------------ | ----------------------------------------------------- |
| `SKU_ID`                 | SERIAL (PK)  | Unique identifier for each product                    |
| `CATEGORY`               | VARCHAR(120) | Product category (e.g., Grocery, Dairy, Beverages)    |
| `NAME`                   | VARCHAR(120) | Product name                                          |
| `MRP`                    | NUMERIC(8,2) | Maximum Retail Price                                  |
| `DISCOUNTPERCENT`        | NUMERIC(5,2) | Discount percentage applied                           |
| `AVAILABLEQUANTITY`      | INTEGER      | Number of items available in stock                    |
| `DISCOUNTEDSELLINGPRICE` | NUMERIC(8,2) | Final selling price after discount                    |
| `WEIGHTINGMS`            | INTEGER      | Weight in grams                                       |
| `OUTOFSTOCK`             | BOOLEAN      | Indicates if the product is out of stock              |
| `QUANTITY`               | INTEGER      | Ordered quantity (historical transaction perspective) |


🛠 Data Cleaning & Preparation

Key steps taken to ensure data quality:

✅ Removed products with invalid prices (MRP = 0 or DiscountedSellingPrice = 0).
✅ Corrected data format issues by scaling prices appropriately (MRP/100, SellingPrice/100).
✅ Checked for null values across all columns.
✅ Identified and managed duplicate product names.
This ensures our insights are reliable for decision-making.

🔎 Business Insights from Analysis

1. Inventory Overview

Verified total product count.
Assessed out-of-stock products across categories.
Identified duplicate product names & cleaned.

2. Discount Analysis

Top 10 highest discounted products identified.
Categories with highest average discount percentage surfaced.
Highlighted high-value products with minimal discounts (premium strategy).

3. Revenue Insights

Calculated total revenue per category (Selling Price × Available Quantity).
Found best-performing categories in terms of sales contribution.
Cross-checked high-value products that are out of stock (lost sales potential).

4. Price vs Weight Optimization

Computed price per gram for products above 100g.
Identified products delivering best value for money.
Grouped products into Low, Medium, Bulk weight categories for inventory strategy.

5. Inventory Weight Contribution
   
Aggregated total weight per category.
Highlighted which categories dominate logistics & storage costs.

📈 Key Findings

⚡ High-revenue categories drive most of the business → can prioritize for supply chain efficiency.
⚡ Premium products (>₹500 with <10% discount) show low dependency on discounts → potential luxury positioning.
⚡ Certain out-of-stock high-value items indicate missed revenue → need for better demand forecasting.
⚡ Bulk items account for majority of logistics load → essential for warehouse planning.
⚡ Categories with highest discounts may indicate clearance or marketing push.

🚀 Business Applications

Pricing Strategy → Identify products/categories that can sustain low discounts vs those requiring high discounting.
Demand Forecasting → Prevent lost sales by monitoring out-of-stock high-revenue items.
Category Management → Focus marketing & procurement on high-revenue and high-weight categories.
Customer Value Proposition → Use price per gram analysis to highlight best-value items to customers.
Logistics Optimization → Balance low, medium, and bulk categories for warehouse/storage planning.

✅ Conclusion
This project showcases how SQL-based business analytics transforms raw inventory data into actionable business insights.
The methodology ensures clean data, accurate reporting, and strategic recommendations for retail decision-making in Zepto’s ecosystem

Contact:sabinshah619@gmail.com
