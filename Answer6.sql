--	We want to audit our stock of films in all of our stores. 
-- How many copies of each movie in each store, do we have?

select film_id , count(film_id) as TotalFilm, store_id
from inventory
group by film_id , store_id 
order by film_id 