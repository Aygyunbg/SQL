-- Query 1: Categorize ticket prices into low/mid/high price buckets
-- Using CASE WHEN on total_amount from bookings table
-- and counting how many bookings fall in each category
SELECT ticket_price, count(1)
FROM(SELECT
book_ref,
CASE
WHEN total_amount < 20000 THEN 'low price ticket'
WHEN total_amount < 150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END as ticket_price
FROM bookings) a
GROUP BY ticket_price;

-- Query 2: Count flights by season (Winter, Spring, Summer, Fall)
-- Uses EXTRACT to get month from scheduled_departure
-- Then categorizes months using CASE WHEN and groups by season
SELECT 
COUNT(*) as flights,
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT (month from scheduled_departure) <= 5 THEN 'Spring'
WHEN EXTRACT (month from scheduled_departure) <= 8 THEN 'Summer'
ELSE 'Fall' 
END as season
FROM flights
GROUP BY season

-- Query 3: Assign a tier to each film based on its rating, description, length, or rental rate
-- Uses multiple CASE WHEN conditions to assign tiers
-- Filters only films that fall into one of the tier categories
SELECT
title,
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END as tier_list
FROM film
WHERE 
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END is not null