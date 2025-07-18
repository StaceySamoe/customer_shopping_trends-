-- round(1.0 * sum(case when continents = 'Africa' then total_earnings else 0 end)
-- / nullif(sum(total_earnings),0) *100,2)

SELECT * FROM shopping_trends.shopping_trends_updated;

-- How many unique customers have visited the store during the time period provided?
--  (To get a sense of the sample size you're working with.)
SELECT 
	count(distinct `Customer ID`) as total_customers
FROM shopping_trends.shopping_trends_updated;

-- We have a total of 3900

-- Should the store stock more male or female clothing?
--  (What % of customers are male vs. female?)

with data as(
SELECT 
	Gender,
    count(distinct `Customer ID`) as total_customers
FROM shopping_trends.shopping_trends_updated
Group by 1
)
select 
	sum(total_customers) as total_customers,
    round(100* (sum(case when Gender = 'Female' then total_customers else 0 end)/sum(total_customers)),2) as pct_female,
    round(100* (sum(case when Gender = 'Male' then total_customers else 0 end)/sum(total_customers)),2) as pct_male
from data
;
-- 32% are female, and 68% are male.  

-- What seasons are represented in the data?
--  (Helps us track trends by time period.)
SELECT distinct Season FROM shopping_trends.shopping_trends_updated;
-- 'Winter'
-- 'Spring'
-- 'Summer'
-- 'Fall'

-- What are the most purchased categories and items by season?
--  (This will help guide seasonal stocking strategies.)
SELECT 
	`Item Purchased`, 
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
where Season  = 'Fall'
Group by 1
order by 2 desc;

-- Winter: Sunglasses, followed by pants and shirts
-- Spring: Sweater, shorts and Blouse
-- Summer: Pants, Dresses, and Jewelry
-- Fall: Jacket(54), hat(50), handbag(48) and Skirts(46)

-- What are the most popular item colors by season?
--  (Color preference can affect buying decisions.)


-- Should stocking strategies vary by store location?
--  (You can also explore if customer gender varies by location.)

-- step one most popular location
-- SELECT 
-- 	Location, 
--     count(`Customer ID`) as count_of_items
--  FROM shopping_trends.shopping_trends_updated
--  group by 1;
-- 'Kentucky'(79), 'Rhode Island'(63), 'Montana'(96)
SELECT 
	`Item Purchased`, 
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
where Season  = 'Fall'
and Location = 'Montana'
Group by 1
order by 2 desc;
-- In fall in Montana, most popular items are Handbag, sweater and t-shirt, so yes each location should have a different stocking strategy. 

-- Which locations are top-performing in terms of customer experience?
--  (Use metrics like frequency of repeat visits or average spend.)

SELECT 
	Location, 
    round(avg(`Review Rating`),2) as avg_ratings
 FROM shopping_trends.shopping_trends_updated
 group by 1
 order by 2 desc;
 
 -- Locations such as Texas and Wisconsin have ratings above 3.88 and hence other locations can learn from 
 -- processes in those locations. 

-- Does having more than 10 previous purchases correlate with higher total spend?
--  (Understanding customer loyalty and value

SELECT 
	case 
		when `Previous Purchases` >= 10 then 'more than ten'
        else 'less than 10'
	end as previous_purchases_status, 
    round(sum(`Purchase Amount (USD)`),2) as total_purchase_amount
 FROM shopping_trends.shopping_trends_updated
 group by 1
 order by 2 desc;
 
 -- YEs, customers who made higher number of purchases previously, maintain the trend of higher purchases when they return. 
 -- They would be a good segment to target with any campaigns. 

