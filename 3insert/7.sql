-- jaizmanto sql komandas nevis gui

-- 1.uzdevums
-- izveido jaunu klientu sql_store datubazee.
-- 2.uzdevums
-- izveido tris sutijumus jaunizveidotajam klientam
-- 3.uzdevums
-- maini izveidota lietotaja vardu uz kadu citu vardu
-- 4.uzdevums
-- izdzes gan klientu, gan taa sutijumus

use sql_store;
INSERT INTO customers (
						first_name,
                        last_name, 
                        address,
                        city,
                        state
)
VALUES (
	'Pronina',
    'Anna',
    'Saules iela',
    'Ventspils',
    'VA'
    );
    
    INSERT INTO orders (
						order_id, 
                        order_date,
                        customer_id, 
                        status
)
VALUES (
		 123,
        '2024-01-01',
		 346,
         3
);

SELECT * FROM customers;
SELECT * FROM orders;
         
