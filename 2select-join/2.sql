-- Atlasi datus no 'orders' un 'customers' tabulam,
--  lai var redzet klienta vardu pie katras
-- pasutijuma ieraksta


-- izmantojam alias
-- use sql_store 
SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
    -- iegut to pashu rezultatuar USING 
    
    SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	USING (customer_id);
    
-- kreisaja pusee panemt customers 
SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o
	ON o.customer_id = c.customer_id