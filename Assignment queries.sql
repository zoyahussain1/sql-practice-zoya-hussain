-- Get all films with title and release year
--(SELECT title, release_year FROM film);

-- Find films released between 2005 and 2007
--(SELECT title, release_year FROM film WHERE release_year BETWEEN 2005 AND 2007);

-- Count films per rating
--SELECT rating, COUNT(*) AS film_count FROM film GROUP BY rating;

-- Join film and film_actor to get actor names per film

/*
SELECT f.title, a.first_name, a.last_name
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id;
*/

-- CTE to find top 5 customers by payment amount
/* 
WITH top_customers AS (
  SELECT customer_id, SUM(amount) AS total_spent
  FROM payment
  GROUP BY customer_id
  ORDER BY total_spent DESC
  LIMIT 5
)
SELECT c.first_name, c.last_name, tc.total_spent
FROM top_customers tc
INNER JOIN customer c ON tc.customer_id = c.customer_id;
*/

-- Running total of payments per store

/*
SELECT store_id, payment_date, amount,
       SUM(amount) OVER (PARTITION BY store_id ORDER BY payment_date) 
	   AS running_total
FROM payment;
*/

-- Pivot film counts by rating
/*
SELECT
  SUM(CASE WHEN rating = 'G' THEN 1 END) AS g_count,
  SUM(CASE WHEN rating = 'PG' THEN 1 END) AS pg_count,
  SUM(CASE WHEN rating = 'PG-13' THEN 1 END) AS pg13_count
FROM film;
*/

--EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM payment WHERE customer_id = 1;

-- Get films by rating
--SELECT title, rating FROM film WHERE rating = 'PG';

-- Count rentals per customer
/*
SELECT c.customer_id, c.first_name, COUNT(r.rental_id) AS rental_count
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name;
*/

/*
SELECT
  SUM(CASE WHEN rating = 'G' THEN 1 END) AS g_count,
  SUM(CASE WHEN rating = 'PG' THEN 1 END) AS pg_count,
  SUM(CASE WHEN rating = 'PG-13' THEN 1 END) AS pg13_count
FROM film;
*/

-- Get all films with title and release year
SELECT title, release_year FROM film;
