--1. How many actors are there with the last name ‘Wahlberg’?
-- 2 actors with the last name wahlberg

select last_name
from actor
where last_name like 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
-- 3 payments between 3.99 and 5.99

select amount
from payment
where amount >= 3.99 and amount <= 5.99;

--3. What film does the store have the most of? (search in inventory)
-- Film_id 1000 Zorro Ark

select film_id, count(inventory_id)
from inventory
group by film_id
order by film_id desc;

--4. How many customers have the last name ‘William’?
-- 0 customers with the last name 'William'

select last_name
from customer
where last_name = 'William'

--5. What store employee (get the id) sold the most rentals?
-- Employee 2 with 4,073

select staff_id, count(distinct inventory_id)
from rental
group by staff_id
order by staff_id desc;


--6. How many different district names are there?
-- 378 distinct districts

select count(distinct district) from address

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- Gina Degeneres has been in 42 movies

select actor_id, count(film_id)
from film_actor
group by actor_id;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 13 customers with a last name ending in 'es'

select last_name, min(store_id)
from customer
where last_name like '%es'
group by last_name;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- 1257 payment amount with number of rentals above 250

select customer_id, rental_id
from payment
where customer_id between 380 and 430
group by rental_id, customer_id
having rental_id > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- 5 ratingsm, PG-13 has 223 movies, with NC-17 coming in second with 209

select count(distinct rating)
from film

select distinct rating, count(film_id)
from film
group by rating;


