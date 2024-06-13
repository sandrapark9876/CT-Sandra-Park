-- Number 1: How many actors are there with the last name 'Wahlberg'?
select count(*)
from actor
where last_name = 'Wahlberg'

-- Number 2: How many payments were made between $3.99 and $5.99?
select count(*)
from payment
where amount between 3.99 and 5.99;

-- Number 3: What film does the store have the most of? (search in inventory)
select title, count(title) as mostseen
from film 
group by title

-- Number 4: How many customers have the last name ‘William’?
select count(*)
from customer
where last_name = 'William'

-- Number 5: What store employee (get the id) sold the most rentals?
select staff_id, count(*) as sold_amount
from rental
group by staff_id


-- Number 6: How many different district names are there?
select count(distinct district) as district_count
from address;

-- Number 7: What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(*) as actor_count
from film_actor
group by film_id
order by actor_count desc
limit 1;

-- Number 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(*) as customer_count
from customer
where store_id = 1
and last_name like '%es';

-- Number 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount, count(*) as rental_count
from payment
where customer_id between 380 and 430
group by amount
having count(*) > 250


-- Number 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating) as rating_count
from film;
select rating, count(*)
from film
group by rating 

