-- use sql_store;

-- SELECT 
   -- c.first_name, c.last_name, c.customer_id, o.order_id, o.order_date, sh.name AS 'shipper name', os.name AS 'status name'
-- FROM
   -- customers c
     --   LEFT JOIN
   -- orders o USING (customer_id)
    
  --  LEFT JOIN order_statuses os ON o.status = os.order_status_id
    
  --  RIGHT JOIN shippers sh USING(shipper_id)
  
  use sql_hr;
  
  SELECT 
    e.employee_id,
    e.first_name AS 'manager first name', 
    e.last_name AS 'manager last name', 
    e.job_title,
    e.salary,
    e.reports_to,
    e.office_id
    FROM employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id
    