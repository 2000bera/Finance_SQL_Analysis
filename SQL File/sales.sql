-- viewing the data
select *
from sales.public.ecommorce
limit 100;

-- stats for the data
select
    count(*) as total_data,
    sum(price) as total_revnue,
    max(price) as max_price,
    min(price) as min_price,
    round(avg(price),2) as average_price
from sales.public.ecommorce;

-- getting customers that are premium
select *
from sales.public.ecommorce
where customer_segment = 'Premium'
order by price desc;

-- getting customers that are regular
select *
from sales.public.ecommorce
where customer_segment = 'Regular'
order by price desc;

-- getting customers that are occasional
select *
from sales.public.ecommorce
where customer_segment = 'Occasional'
order by price desc;


-- total customers
select 
    customer_segment, 
    count(*) as total_customers
from sales.public.ecommorce
group by customer_segment
order by total_customers desc;


-- top 5 product that are most brought
select
    product_category,
    count(*) as price
from sales.public.ecommorce
group by product_category
order by price desc
limit 5;


-- customers that are spending the most
select 
    customer_segment, 
    sum(price) as total_spending
from sales.public.ecommorce
group by customer_segment
order by total_spending desc;


-- 1. Which customer segment generates the most revenue? 
-- Ans = Occasional
-- 2. How many unique customers are there? 
-- Ans = 1000 cutomers
-- 3. Which customers have spent the most overall?
-- Ans = Occasional and Regular
-- 4.  What are the top 5 product categories by revenue?
-- Ans = Electronics, Sports, Toys, Fashion, and Home Decor