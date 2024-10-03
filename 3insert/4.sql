use sql_store;

-- INSERT INTO orders(
			-- customer_id,
			-- order_date,
			-- status)
                
-- VALUES(
     -- 11,
     -- '2019-01-01',
     -- 3);
      
--  SELECT * FROM orders;
--  SELECT last_insert_id();

INSERT INTO order_items
VALUES
	(last_insert_id(), 1, 2, 19.35),
    (last_insert_id(), 2, 3, 5);
    
    SELECT * FROM order_items;
     SELECT * FROM customers
    WHERE customer_id IN (1, 7, 12);

    