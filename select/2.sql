-- uzdevums: atlasit datus no tabulas 'customers' 
-- datubaze 'sql_store'
-- atlasit vardu, uzvardu un punktus  

-- use sql_store;

-- select first_name, last_name, points, points+10 as "points_increased"
-- from customers;

SELECT DISTINCT state from customers; 

SELECT * FROM customers
limit 5;