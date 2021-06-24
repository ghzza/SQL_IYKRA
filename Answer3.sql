-- We have two staff members with staff IDs 1 and 2. 
-- We want to give a bonus to the staff member that handled the most payments.
-- How many payments did each staff member handle? 
-- And how much was the total amount processed by each staff member?

select S.staff_id as StaffId , S.first_name as FirstName , sum(P.amount) as SumAmount, count(P.customer_id) as CountAmount
from staff S
inner join payment P on S.staff_id = P.staff_id 
group by S.staff_id 
