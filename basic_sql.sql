-- list title, rating and rental rates for all films
SELECT title, 
	rating, 
	rental_rate
FROM film;

-- List customer id, first and last name and the store id for all customers
SELECT customer_id, 
	first_name, 
	last_name, 
	store_id
FROM customer;

-- list all payments data
SELECT * 
FROM payment;

-- retrieve all address and district data from address table
SELECT  address, 
	district
FROM address;

-- get customer id, store id and email address for customer Nancy Thomas
SELECT customer_id, 
	store_id, 
	email
FROM customer
WHERE first_name = 'Nancy'
AND last_name = 'Thomas';

-- get customer id, first and last names for customers 1 - 10 
SELECT customer_id, 
	first_name, 
	last_name
FROM customer
WHERE customer_id BETWEEN 1 AND 10;

/*
Provide	a	list	of	films	(their	titles,	film	IDs and ratings)	that	are	NOT	
rated	NC-17
*/

SELECT title,
	film_id,
	rating
FROM film
WHERE rating != 'NC-17';

/*
Get	 the	 addresses	 and	 postal	 codes	 of customers	 who	 live	 in	
Michigan	district.
*/

SELECT address, 
	postal_code
FROM address
WHERE district = 'Michigan';

/*
List the payment transactions between 2007-02-18 00:00:00 and 2007-02-20 00:00:00. 
Retrieve the payment ID, customer ID, amount and payment dates
*/

SELECT payment_id, 
	customer_id, 
	amount, 
	payment_date
FROM payment
WHERE payment_date  BETWEEN '2007-02-18' AND '2007-02-20';

/*
Retrieve all available information for customers whose last names are either Williams, Taylor or Andrews.	
*/
SELECT * 
FROM customer
WHERE last_name ='Williams'	
OR last_name = 'Taylor'	
OR	last_name = 'Andrews';

/*
The	manager	asks for the rental	ID and customer ID of transactions	
that have rental date starting May 26, 2005 and	return date before May	29,	2005.
*/

SELECT	rental_id,	
	customer_id
FROM rental
WHERE rental_date >= '2005-05-26'
AND	return_date < '2005-05-29';
