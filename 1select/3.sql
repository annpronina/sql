-- atlasit visus ierakstus no Orders tabulas,
-- kuri izveidoti 2018. gadaa 

-- SELECT * FROM sql_store.orders;  

-- 2.uzdevums
-- atlasit visus ierakstus no Customer tabulas;
-- kuri nedzivo shtataa ar saisinajumu 'VA' 
  
SELECT * FROM orders 
WHERE (order_date BETWEEN '2018-01-01' AND '2018-12-31'); 
-- where order_date >= '2018-01-1' and order_date < '2018-12-31';

SELECT
first_name,
last_name,
points,
state
FROM customers
WHERE state NOT IN('VA', 'CO'); -- nonemt arii CO shtatu 
