----- NORMAL MODE -----
-- Q1: Select all columns and rows from the movies table
SELECT *
FROM movies;

-- Q2: Select only the title and id of the first 10 rows
SELECT title,
   id
FROM movies
LIMIT 10;

-- Q3 : Find the movie with the id of 485
SELECT *
FROM movies
WHERE id = 485;

-- Q4 : Find the id (only that column) of the movie Made in America (1993)
SELECT *
FROM movies
WHERE title = 'Made in America (1993)';

-- Q5 : Find the first 10 sorted alphabetically
SELECT *
FROM movies
ORDER BY title ASC
limit 10;

-- Q6 : Find all movies from 2002
SELECT *
FROM movies
WHERE title lIKE '%2002%';

-- Q7 : Find out what year the Godfather came out
SELECT *
FROM movies
WHERE title LIKE '%Godfather, the%';

-- Q8 : Without using joins find all the comedies
SELECT *
FROM movies
WHERE genres LIKE '%Comedy%';

-- Q9 : Find all comedies in the year 2000
SELECT *
FROM movies
WHERE genres LIKE '%Comedy%'
   AND title LIKE '%2000%';

-- Q10 : Find any movies that are about death and are a comedy
SELECT *
FROM movies
WHERE genres LIKE '%Comedy%'
   AND title LIKE '%death%';

-- Q11 : Find any movies from either 2001 or 2002 with a title containing super
SELECT *
FROM movies
WHERE (
      title LIKE '%2002%'
      OR title LIKE '%2001%'
   )
   AND title LIKE '%super%';

----- WITH JOINS -----
-- Q1 : Find all the ratings for the movie Godfather, show just the title and the rating
SELECT title,
   rating
FROM movies
   LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movies.title LIKE "%Godfather%";

-- Q2 : Order the previous objective by newest to oldest
SELECT title,
   rating
FROM movies
   LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movies.title LIKE "%Godfather%"
ORDER BY movies.title DESC;

-- Q3 : Find the comedies from 2005 and get the title and imdbid from the links table
SELECT title,
   imdb_Id
FROM movies m
   LEFT JOIN links ON links.movie_id = m.id
WHERE title LIKE "%(2005)%"
   AND genres LIKE "%Comedy%";

----- AGGREGATION OBJECTIVES
-- Q1 : Get the average rating for a movie
SELECT AVG(rating)
FROM movies m
   LEFT JOIN ratings r ON r.movie_id = m.id
WHERE m.id = 339;

-- Q2 : Get the total ratings for a movie
SELECT COUNT(rating)
FROM movies m
   LEFT JOIN ratings r ON r.movie_id = m.id
WHERE m.id = 339 

-- Q3 : Get the total movies for a genre
SELECT COUNT(title)
FROM movies m
WHERE genres LIKE "%Comedy%" 

-- Q4 : Get the average rating for a user
SELECT AVG(rating)
FROM movies m
   LEFT JOIN ratings r ON r.user_id = m.id
WHERE m.id = 4 

-- Q5 : Find the user with the most ratings
SELECT MAX(rating)
FROM movies m
   LEFT JOIN ratings r ON r.user_id = m.id 
   
-- Q6 : Find the user with the highest average rating
SELECT AVG(rating) h,
   user_id
FROM ratings
GROUP BY user_id
ORDER BY h DESC
LIMIT 1 

-- Q7 : Find the user with the highest average rating with more than 50 reviews
SELECT AVG(rating) h,
   user_id,
   COUNT(rating) r
FROM ratings
GROUP BY user_id
HAVING r > 50
ORDER BY h DESC
LIMIT 1