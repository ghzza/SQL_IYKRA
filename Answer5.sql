-- We want to send coupons to the 5 customers who have spent the most amount of money. 
-- Get the customer name, email and their spent amount!

select c.first_name as FirstName, c.email , sum(p.amount) as TotalAmount
from customer c 
inner join payment p 
on c.customer_id = p.customer_id 
group by c.customer_id 
order by TotalAmount desc
limit 5