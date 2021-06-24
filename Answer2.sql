-- I wonder, how many films have a rating of “R” and a replacement cost between $5 and $15?

select * from film 
where rating = 'R' and replacement_cost between 5 and 15