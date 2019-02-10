
SELECT a.first_name, a.last_name
	from actor a 


SELECT CONCAT(a.first_name, ' ', a.last_name) as 'actor_name'
	FROM actor a;
    
SELECT a.actor_id, a.first_name, a.last_name
	FROM actor a
    WHERE a.first_name =  'Joe'
    
SELECT a.actor_id, a.first_name, a.last_name
	FROM actor a
    WHERE a.last_name LIKE '%GEN%'
    
SELECT c.country_id
	FROM country c 
    WHERE c.country IN ('Afghanistan', 'Bangladesh','China')

ALTER TABLE actor 
ADD COLUMN description BLOB 

ALTER TABLE actor 
DROP COLUMN description 

SELECT a.last_name , count(a.last_name)
FROM actor a
GROUP BY 1 
ORDER BY 2 DESC 

SELECT s.first_name, s.last_name, a.address
FROM staff s 
	JOIN address a  on s.address_id = a.address_id
    
SELECT s.first_name, s.last_name, p.payment_date, SUM(p.amount) 
	FROM staff s 
    JOIN payment p ON s.staff_id = p.staff_id 
	WHERE p.payment_date LIKE '%2005-08%'
GROUP BY 1,2,3 
ORDER BY 4 DESC 

SELECT f.title, count(fa.actor_id)
FROM film f 
INNER JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY 1
ORDER BY 2 DESC 

SELECT f.title, count(i.inventory_id)
FROM film f  
  JOIN inventory i  ON f.film_id = i.film_id 
  WHERE f.title = 'Hunchback Impossible'
GROUP BY 1 


SELECT f.title
FROM film f
WHERE f.title IN (SELECT f2.title
   FROM film f2
   WHERE f2.title LIKE 'K%'
   OR f2.title LIKE 'Q%')


SELECT c.customer_id , sum(p.amount)
FROM customer c 
	JOIN payment p ON c.customer_id = p.customer_id 
GROUP BY 1
ORDER BY 2 DESC

SELECT   a.first_name, a.last_name
FROM actor a 
	JOIN inventory i ON a.actor_id

