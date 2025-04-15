# 📊 Monthly Sales Summary Report

This repository contains an SQL script to analyze monthly order performance from an `orders` table. The analysis includes total revenue and order volume, grouped by year and month, with filters for a specific time range.

## 📁 File

- `main.sql` – Contains:
  - Table creation for sample `orders`
  - Sample data insertion
  - A SQL query to generate monthly revenue and volume reports

---

## 🔍 Features Implemented

✅ **Table Creation**  
Creates an `orders` table with fields like `order_id`, `order_date`, `amount`, and more.

✅ **Sample Data**  
20 sample records with varied dates, amounts, and statuses.

✅ **Monthly Aggregation**  
The query uses:
- `YEAR(order_date)` and `MONTH(order_date)` to extract time components  
- `SUM(amount)` to calculate total monthly revenue  
- `COUNT(DISTINCT order_id)` to compute monthly order volume

✅ **Grouping**  
Grouped by `order_year` and `order_month` using:
```sql
GROUP BY order_year, order_month
✅ Sorting
Sorted chronologically using:


ORDER BY order_year ASC, order_month ASC
✅ Date Filtering
Filters data for a specific range (2024) using:


WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
