-- We want to know what customers are eligible for our platinum credit card. 
-- The requirements are that the customer has at least a total of 40 transaction payments. 
-- Get the customer name, email who are eligible for the credit card! 

select c.first_name as FirstName , c.email as Email , count(p.payment_id) as Total
from customer c 
inner join payment p 
on c.customer_id = p.customer_id 
group by c.customer_id 
having count(p.payment_id) >= 40 