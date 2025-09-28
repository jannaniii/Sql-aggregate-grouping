-- Use the Sakila database
USE sakila;

-- Count total rentals
SELECT COUNT(*) FROM rental;

-- Rentals by each customer
SELECT customer_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id;

-- Total amount paid by each customer (first 10 customers)
SELECT customer_id, SUM(amount) AS total_amt
FROM payment
GROUP BY customer_id
LIMIT 10;

-- Average film length grouped by rating
SELECT rating, AVG(length) AS avg_length
FROM film
GROUP BY rating;

-- Customers who rented more than 30 films
SELECT customer_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(*) > 30;

-- Ratings with an average film length over 120 minutes
SELECT rating, AVG(length) AS avg_length
FROM film
GROUP BY rating
HAVING AVG(length) > 120;

-- Top 5 customers by total payment
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
