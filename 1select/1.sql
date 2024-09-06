-- use sql_store; 
-- SELECT 1,2;

use sql_invoicing;
select * from invoices
where payment_total > 0
order by client_id;