# SQL Aggregate Functions and Grouping  
   To demonstrate SQL aggregation and grouping to interpret and summarize transactional and film data in Sakila, a sample DVD rental database.


## Objectives
- Categorize data efficiently with GROUP BY
- Filter aggregated results with HAVING
- Derive insights using aggregate functions

## Tools
- Database: MySQL (Sakila)
- IDE: MySQL Workbench

##  Example Queries

```sql
SELECT COUNT(*) AS rental_count FROM rental;
```
![Count](https://github.com/jannaniii/Sql-aggregate-grouping/blob/a3232e3e4c64d791d7141fc71088ee02b00dee25/COUNT.png)

```sql
SELECT customer_id, SUM(amount) AS total_amt
FROM payment
GROUP BY customer_id
LIMIT 10;
```
![Sum](https://github.com/jannaniii/Sql-aggregate-grouping/blob/a3232e3e4c64d791d7141fc71088ee02b00dee25/SUM.png)

```sql
SELECT rating, AVG(length) AS avg_length
FROM film
GROUP BY rating;
```
![Average](https://github.com/jannaniii/Sql-aggregate-grouping/blob/a3232e3e4c64d791d7141fc71088ee02b00dee25/AVG.png)


```sql
SELECT customer_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(*) > 30;
```
![Having](https://github.com/jannaniii/Sql-aggregate-grouping/blob/a3232e3e4c64d791d7141fc71088ee02b00dee25/HAVING.png)

