-- Corporate headquarters is auditing the store! 
-- They want to know the average replacement cost of movies by rating!

select rating, avg(replacement_cost) as AVGReplacementCost from film
group by rating
order by rating asc 