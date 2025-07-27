DROP TABLE IF EXISTS IMDB_RATING;
CREATE TABLE IMDB_RATING(
			Poster_Link	VARCHAR(1000),
			Series_Title	VARCHAR(100),
			Released_Year VARCHAR(10),
			Certificate  VARCHAR(10),
			Runtime	VARCHAR(10),
			Genre	VARCHAR(1000),
			IMDB_Rating decimal(10,2),
			Overview	VARCHAR(1000),
			Meta_score	int,
			Director	VARCHAR(1000),
			Star1	VARCHAR(1000),
			Star2	VARCHAR(1000),
			Star3 VARCHAR(1000),
			Star4	VARCHAR(1000),
			No_of_Votes int,	
			Gross VARCHAR(1000)
);

SELECT*FROM IMDB_RATING;

--List the top 10 highest-rated movies.
SELECT series_title,imdb_rating highest_rated_movies FROM IMDB_RATING
ORDER BY IMDB_RATING desc
limit 10;

--Find all movies released after the year 2010.
SELECT series_title, released_year FROM IMDB_RATING
WHERE released_year > '2010';

--Count how many movies are there for each certificate (U, UA, A, etc.)
SELECT Certificate, COUNT(*) AS count
FROM IMDB_RATING
GROUP BY Certificate;

--List all movies directed by Christopher Nolan.
SELECT series_title FROM IMDB_RATING
WHERE director ='Christopher Nolan';

--Show movies with an IMDB rating greater than or equal to 9.0

SELECT series_title , imdb_rating
FROM IMDB_RATING
WHERE imdb_rating >='9.0';

--Find the top 5 directors who have directed the most movies
SELECT director,count(*) as total_movies
FROM IMDB_RATING
GROUP BY director
ORDER BY total_movies desc
LIMIT 5;

--Find the most frequent actor in the Star1 column.

SELECT star1, COUNT(*) AS FREQUENT_ACTOR
FROM IMDB_RATING
GROUP BY star1
ORDER BY FREQUENT_ACTOR DESC
LIMIT 1;

--List all movies that belong to the Drama genre

SELECT series_title, genre
FROM IMDB_RATING
WHERE genre = 'Drama'

--Find the movie with the highest number of votes.
SELECT series_title, max(no_of_votes) as highest_votes
FROM IMDB_RATING 
GROUP BY series_title
ORDER BY highest_votes DESC
LIMIT 1;

--Find the average IMDB rating grouped by genre.

SELECT genre,AVG(imdb_rating) as average_rating 
FROM IMDB_RATING 
GROUP BY genre 
ORDER BY average_rating DESC ;



















