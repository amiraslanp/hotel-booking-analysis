
-- ==========================================================
-- Project: Hotel Booking Demand - Exploratory Data Analysis
-- Tool: SQLite & DBeaver
-- ==========================================================

-- 1. Top Countries by Bookings
-- Identifies the countries from which the majority of hotel bookings originate.


SELECT country, COUNT(*) as total_count
FROM hotel_bookings
GROUP BY country 
ORDER BY total_count DESC;



-- 2. Seasonality & Peak Booking Months (Arrival Month)
-- Determines which months record the highest booking volumes to analyze trends.

SELECT 
arrival_date_month, COUNT(*) as total_count
FROM hotel_bookings
GROUP BY arrival_date_month 
ORDER BY total_count DESC;


-- 3. Cancellation Rate by Deposit Type
-- Calculates cancellation percentages grouped by deposit type with precision control.

SELECT 
deposit_type, SUM(is_canceled) as Canceled_bookings,
COUNT(*) as Total_bookings,
ROUND(CAST(SUM(is_canceled) as REAL) * 100 / COUNT(*),2) as Cancellation_rate
FROM hotel_bookings 
GROUP BY deposit_type 
ORDER BY Cancellation_rate DESC;


-- 4. Cancellation Rate by Market Segment
-- Evaluates which booking channels result in the highest drop-off rates.

SELECT 
market_segment , SUM(is_canceled) as Canceled_bookings,
COUNT(*) as Total_bookings,
ROUND(CAST(SUM(is_canceled) as REAL) * 100 / COUNT(*),2) as Cancellation_rate
FROM hotel_bookings
GROUP BY market_segment  
ORDER BY Canceled_bookings DESC;
