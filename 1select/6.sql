
-- 1. uzdevums
-- Atlasi visus datus no 'sql_hr' 
-- datubaazes 'employees' tabulas

 -- use sql_hr;
	-- SELECT * FROM employees

-- 2. uzdevums 
-- Atlasit visu klientu vardus no 'sql_store' datubazes 

use sql_store;
-- SELECT first_name FROM customers

-- 3.uzdevums
-- Atlasi visus datus no 'sql_hr'
-- datubazes 'employees' tabulas,
-- kuriem nav vertibas laukaa 'reports_to'

-- use sql_hr
-- SELECT * FROM employees
 -- WHERE reports_to is  null

 -- 4. uzdevums
 -- Atlasi visus sutijumus no 'sql_store', kuru statuss
 -- ir "Processed" 
 
 SELECT 
	order_id, customer_id, name
FROM
orders
join order_statuses
 on orders.status = order_statuses.order_status_id;