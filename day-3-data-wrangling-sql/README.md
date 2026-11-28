# Day 3 – Data Wrangling and SQL

## Project Overview
This project focuses on exploring, cleaning, and analysing vendor payment data using Python, Pandas, and PostgreSQL.

## Technologies Used
- Python
- Pandas
- PostgreSQL
- pgAdmin 4
- SQL

## Project Structure

```text
day-3-data-wrangling-sql/
│
├── data/
│   └── vendor_payments.csv
│
├── sql/
│   └── analysis_queries.sql
│
├── explore_data.py
├── insights.md
└── README.md
```

## Tasks Completed
1. Created and explored the vendor payments dataset.
2. Analysed missing values and payment status distribution using Pandas.
3. Created a PostgreSQL database and table.
4. Imported CSV data into PostgreSQL.
5. Wrote 10 SQL queries for payment and vendor analysis.
6. Created an index on `payment_status`.
7. Compared query execution plans using `EXPLAIN ANALYZE`.
8. Documented five data insights.

## How to Run

### Python Data Exploration

```bash
python explore_data.py
```

### SQL Analysis
1. Open pgAdmin 4.
2. Connect to the `vendor_payments` database.
3. Open Query Tool.
4. Execute queries from `sql/analysis_queries.sql`.

## Dataset Details
- Total records: 103
- Total columns: 11
- Payment statuses: Paid, Pending, Overdue

## Insights
Refer to [insights.md](insights.md) for the key findings from the analysis.
