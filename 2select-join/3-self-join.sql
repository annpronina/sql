-- self join

-- use sql_hr;
SELECT 
    e.employee_id as "Employee ID",
    e.first_name as "First Name",
    e.last_name as "Last Name",
    -- e.reports_to
    m.first_name as "Manager"
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id
