-- 1. Find the top 10 vendors by total paid amount
SELECT
    vendor_id,
    vendor_name,
    SUM(amount) AS total_paid
FROM vendor_payments
WHERE payment_status = 'Paid'
GROUP BY vendor_id, vendor_name
ORDER BY total_paid DESC
LIMIT 10;

-- 2. Find duplicate invoices for each vendor
SELECT
    vendor_id,
    vendor_name,
    invoice_id,
    COUNT(*) AS duplicate_count
FROM vendor_payments
GROUP BY vendor_id, vendor_name, invoice_id
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- 3. Calculate total payments made each month
SELECT
    DATE_TRUNC('month', payment_date) AS payment_month,
    SUM(amount) AS monthly_total
FROM vendor_payments
WHERE payment_status = 'Paid'
GROUP BY DATE_TRUNC('month', payment_date)
ORDER BY payment_month;

-- 4. Find payments made after their due dates
SELECT
    payment_id,
    vendor_name,
    invoice_id,
    due_date,
    payment_date,
    amount,
    (payment_date - due_date) AS days_late
FROM vendor_payments
WHERE payment_status = 'Paid'
  AND payment_date > due_date
ORDER BY days_late DESC;

-- 5. Calculate outstanding payments for each vendor
SELECT
    vendor_id,
    vendor_name,
    COUNT(*) AS unpaid_invoices,
    SUM(amount) AS outstanding_amount
FROM vendor_payments
WHERE payment_status IN ('Pending', 'Overdue')
GROUP BY vendor_id, vendor_name
ORDER BY outstanding_amount DESC;

-- 6. Calculate average invoice amount for each department
SELECT
    department,
    COUNT(*) AS total_invoices,
    ROUND(AVG(amount), 2) AS average_invoice_amount
FROM vendor_payments
GROUP BY department
ORDER BY average_invoice_amount DESC;

-- 7. Count invoices based on payment status
SELECT
    payment_status,
    COUNT(*) AS total_invoices,
    SUM(amount) AS total_amount
FROM vendor_payments
GROUP BY payment_status
ORDER BY total_invoices DESC;

-- 8. Find the 10 highest-value invoices
SELECT
    payment_id,
    vendor_name,
    invoice_id,
    amount,
    payment_status
FROM vendor_payments
ORDER BY amount DESC
LIMIT 10;

-- 9. Analyse payment methods used for paid invoices
SELECT
    payment_method,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount
FROM vendor_payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY total_amount DESC;

-- 10. Find vendors with the most invoices
SELECT
    vendor_id,
    vendor_name,
    COUNT(*) AS total_invoices,
    SUM(CASE
        WHEN payment_status IN ('Pending', 'Overdue') THEN 1
        ELSE 0
    END) AS unpaid_invoices
FROM vendor_payments
GROUP BY vendor_id, vendor_name
ORDER BY total_invoices DESC
LIMIT 10;