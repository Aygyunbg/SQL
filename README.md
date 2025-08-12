#  Basic SQL Query Collection

This repository contains 27 SQL files showcasing **basic-level SQL queries** using a sample database with tables such as `payment`, `customer`, `rental`, `film`, `orders`, and more.

The queries cover a variety of fundamental SQL operations including:

- Selecting data
- Filtering with `WHERE`, `IN`, `BETWEEN`, `LIKE`
- Sorting with `ORDER BY`
- Grouping with `GROUP BY`
- Aggregate functions (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`)
- Logical conditions (`AND`, `OR`, parentheses for precedence)
- Limiting results
- Using aliases for clarity

Each `.sql` file is individually named and numbered for organization. Below is a full list with short descriptions.

---

##  SQL Files Overview

### 1. `01-select-all.sql`
> Retrieves all records from the `address` table.

### 2. `02-select-columns-address.sql`
> Retrieves only the `address` and `district` columns from the `address` table.

### 3. `03-GetPaymentsOrderedByCustomerAndAmount.sql`
> Selects all payments and sorts them by `customer_id` (ascending) and `amount` (descending).

### 4. `04-Get-Distinct-Amounts-Descending.sql`
> Retrieves distinct payment amounts, sorted in descending order.

### 5. `05-Get-Latest-10-Rentals.sql`
> Shows the 10 most recent rentals from the `rental` table.

### 6. `06-Count-Unique-First-Names-In-Customers.sql`
> Counts how many different first names exist in the `customer` table.

### 7. `07-filter_payments_using_in_and_between.sql`
> Contains multiple queries filtering payments by amount, date, and customer using `IN`, `BETWEEN`, and combinations of conditions.

### 8. `08-find_customers_with_specific_name_pattern.sql`
> Selects customers whose first names are exactly 3 characters long and whose last names end in "X" or "Y".

### 9. `09-payment-queries-with-logical-conditions.sql`
> Demonstrates use of `AND`, `OR`, and parentheses in payment filtering with multiple queries.

### 10. `10-count_payments_by_amount_and_date.sql`
> Counts how many payments were made between $1.99 and $3.99 during a specific date range.

### 11. `11-count-returned-not-returned-low-payments.sql`
> Multiple queries:
> - Count of returned rentals
> - Count of not returned rentals
> - List of low-value payments (≤ $2), sorted by amount

### 12. `12-filter_payments_by_customers_and_amount.sql`
> Filters payments made by specific customers where amount is `< 2` or `> 10`.

### 13. `13-get-customers-with-first-name-adam.sql`
> Selects all customers whose first name is exactly `'ADAM'`.

### 14. `14-customer-specific-queries.sql`
> Multiple queries:
> - Count of payments by customer with ID 100
> - List of customers with first name `'ERICA'`

### 15. `15-get-payments-over-10.sql`
> Selects payments greater than $10, sorted descending by amount.

### 16. `16-order-and-payment-aggregates-august-2024.sql`
> Aggregates data from `orders` and `payment` (e.g., total orders in August 2024, replacement costs for films).

### 17. `17-film-replacement-cost-stats.sql`
> Shows min, max, average, and total replacement cost from the `film` table.

### 18. `18-top-customers-by-total-payments.sql`
> Groups payments by `customer_id`, showing total and maximum payment per customer.

### 19. `19-staff-and-customer-payment-summary.sql`
> Two queries:
> - Payments per staff member per day
> - Payments per staff+customer pair, sorted by number of transactions

### 20. `20-daily-payments-by-staff.sql`
> Groups and summarizes daily payments for each staff member.

### 21. `21-high-activity-staff-and-customer-payments.sql`
> Two queries:
> - Staff who processed over 450 payments on a day
> - Customers who made multiple payments on April 28–30, 2020, with average amount per day

### 22. `22-product-101-positive-reviews-length.sql`
> **Reviews for product 101 containing 'great', with their lengths.**  
> Ordered by review length (ascending).

### 23. `23-concat_initials_from_names.sql`
> **Get customer initials by combining first letters of first and last name.**

### 24. `24-email_prefix_by_lastname.sql`
> **Get last name and email prefix (before first dot) using `POSITION`.**

### 25. `25-mask-email-addresses.sql`
> **Masks customer emails for privacy, keeping only parts of the name and domain.**

### 26. `26-calculate_total_price.sql`
> **SQL Query: Calculate total price for each order with conditional discount.**  
> If quantity > 1, apply a 10% discount on product total (excluding shipping).  
> The total_price includes the shipping fee in all cases.

### 27. `27-case_when_examples.sql`
> **Query 1**: Categorize ticket prices into low/mid/high price buckets.  
> Uses `CASE WHEN` on `total_amount` from the `bookings` table, and counts how many bookings fall in each category.

> **Query 2**: Count flights by season (Winter, Spring, Summer, Fall).  
> Uses `EXTRACT` to get month from `scheduled_departure`. Then categorizes months using `CASE WHEN` and groups by season.

> **Query 3**: Assign a tier to each film based on its rating, description, length, or rental rate.  
> Uses multiple `CASE WHEN` conditions to assign tiers and filters only films that fall into one of the tier categories.


---

##  Notes

- All files follow consistent formatting.
- Comments in the SQL files explain **what each query does**, and help beginners understand the logic.
- Ideal for anyone learning SQL fundamentals.

---

##  How to Use

1. Open this repository in Visual Studio Code or any SQL editor.
2. Run queries one by one to explore the logic.
3. Modify or extend queries for practice.
4. Use the filenames and comments to navigate by topic.

---

##  License

This project is open for educational use. You may modify, share, and build upon it freely.

---

Happy querying!
