--Augment the records of movie rentals with information about movies and customers, in this order. Use the first letter of the table names as alias.
--Calculate the average rating for each country.
--Calculate the average rating for all aggregation levels of country and genre.

SELECT 
	c.country, 
	m.genre, 
	AVG(r.rating) AS avg_rating -- Calculate the average rating 
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
group by cube(c.country, m.genre); -- For all aggregation levels of country and genre


