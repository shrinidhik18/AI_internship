# Vendor Payments – Data Insights

## 1. Payment Status Distribution
The dataset contains 103 payment records:
- 68 Paid
- 18 Pending
- 17 Overdue

Most payment records have been paid.

## 2. Missing Values
The `payment_date` and `payment_method` columns each contain 35 missing values. These correspond to payments that have not yet been completed.

## 3. Top Vendors
The top vendor by total paid amount is Indigo Software (V009), with ₹714,477.53 in paid payments. Granite Manufacturing and Delta Facility Services are the next two vendors.

## 4. Query Performance
The original query used a sequential scan with an execution time of 0.131 ms. When sequential scans were disabled, PostgreSQL used a bitmap index scan with a bitmap heap scan.

## 5. Index Performance
For this dataset of only 103 records, the indexed query took approximately 0.230 ms for the bitmap heap scan. This shows that adding an index does not always improve query performance for small datasets.
