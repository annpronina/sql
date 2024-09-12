-- use sql_store;

-- -- inner join

-- SELECT * FROM
--     orders o
-- 		JOIN
--     customers c USING (customer_id);
--     
--     
-- -- left outer join
-- SELECT * FROM
--     orders o
-- 		LEFT JOIN
--     customers c USING (customer_id);
--     
--     -- right outer join
-- SELECT * FROM
--     customers c
-- 		RIGHT JOIN
--     orders o USING (customer_id);
    
    -- uzdevums;
    -- atlasit produktus un pasutijuma vienibas
    -- taa, lai tiktu atlasiti visi produkti
    -- arii tadi, kuri nav pasutiti 
    
    SELECT * FROM products p
	RIGHT JOIN 
    order_items o USING(product_id)
   