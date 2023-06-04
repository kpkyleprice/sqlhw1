select * from actor
-- 1. How many actors are there with the last name ‘Wahlberg’?!
select count(LAST_NAME)
from actor
where last_name = 'Wahlberg';
-- 2. How many payments were made between $3.99 and $5.99?
select * from payment
select count(amount)
from payment
where amount between 3.99 AND 5.99;
-- 3. What film does the store have the most of? (search in inventory)
select * from inventory 
select film_id , count(film_id)  
from inventory
group by film_id
order by count DESC;
-- 4. How many customers have the last name ‘William’?!
select count(LAST_NAME)
from actor
where last_name = 'William';
-- 5. What store employee (get the id) sold the most rentals?!
select count(rental_id)
from rental
group by staff_id 
-- 6. How many different district names are there?!
select * from address
select count(distinct district) 
from address
-- 7. What film has the most actors in it? (use film_actor table and get film_id)!
select * from film_actor
select film_id, count(actor_id)
from film_actor
group by film_id
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)!
select * from customer
select store_id, last_name
from customer
where last_name like '%es' and store_id = 1
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select * from payment
select COUNT(PAYMENT_ID), amount 
from payment
where customer_id between 380 and 430
group by PAYMENT.amount
having count(rental_id) > 250
-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?!
select rating, count(rating)
from film
GROUP BY rating;