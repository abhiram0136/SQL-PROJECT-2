# 🎬 IMDB Top 1000 Movies – SQL Project

This SQL project explores the **IMDB Top 1000 Movies dataset** using structured SQL queries. It focuses on extracting valuable insights using filtering, aggregation, and sorting techniques in SQL. The queries range from beginner to intermediate level.

---

## 📂 Dataset

The dataset contains information about top-rated movies and includes columns such as:

- Poster_Link
- Series_Title
- Released_Year
- Certificate
- Runtime
- Genre
- IMDB_Rating
- Overview
- Meta_score
- Director
- Star1, Star2, Star3, Star4
- No_of_Votes
- Gross

---

## 🧱 Table Structure

```sql
CREATE TABLE IMDB_RATING (
  Poster_Link     VARCHAR(1000),
  Series_Title    VARCHAR(100),
  Released_Year   VARCHAR(10),
  Certificate     VARCHAR(10),
  Runtime         VARCHAR(10),
  Genre           VARCHAR(1000),
  IMDB_Rating     DECIMAL(10,2),
  Overview        VARCHAR(1000),
  Meta_score      INT,
  Director        VARCHAR(1000),
  Star1           VARCHAR(1000),
  Star2           VARCHAR(1000),
  Star3           VARCHAR(1000),
  Star4           VARCHAR(1000),
  No_of_Votes     INT,
  Gross           VARCHAR(1000)
);
```
## 📜 SQL Queries Used
1.Show All Records
```sql
SELECT * FROM IMDB_RATING;
```
 2.list the top 10 highest-rated movies
```sql
SELECT series_title, imdb_rating AS highest_rated_movies
FROM IMDB_RATING
ORDER BY imdb_rating DESC
LIMIT 10;
```
3. Find All Movies Released After the Year 2010
```sql
SELECT series_title, released_year
FROM IMDB_RATING
WHERE released_year > '2010';
```
4. Count How Many Movies Exist for Each Certificate (U, UA, A, etc.)
```sql
SELECT certificate, COUNT(*) AS count
FROM IMDB_RATING
GROUP BY certificate;
```
5. List All Movies Directed by Christopher Nolan
```sql
SELECT series_title
FROM IMDB_RATING
WHERE director = 'Christopher Nolan';
```
6. Show Movies with an IMDB Rating ≥ 9.0
```sql
SELECT series_title, imdb_rating
FROM IMDB_RATING
WHERE imdb_rating >= 9.0;
```
7. Find the Top 5 Directors with the Most Movies
```sql
SELECT director, COUNT(*) AS total_movies
FROM IMDB_RATING
GROUP BY director
ORDER BY total_movies DESC
LIMIT 5;
```
8. Find the Most Frequent Actor in the Star1 Column
```sql
SELECT star1, COUNT(*) AS frequent_actor
FROM IMDB_RATING
GROUP BY star1
ORDER BY frequent_actor DESC
LIMIT 1;
```
9. List All Movies That Belong to the Drama Genre
```sql
SELECT series_title, genre
FROM IMDB_RATING
WHERE genre = 'Drama';
```
10. Find the Movie with the Highest Number of Votes
```sql
SELECT series_title, no_of_votes
FROM IMDB_RATING
ORDER BY no_of_votes DESC
LIMIT 1;
```
11. Find the Average IMDB Rating Grouped by Genre
```sql
SELECT genre, AVG(imdb_rating) AS average_rating
FROM IMDB_RATING
GROUP BY genre
ORDER BY average_rating DESC;
```
## 💡 Project Highlights
->SQL basics: SELECT, WHERE, ORDER BY, GROUP BY, LIMIT

->Aggregate functions: AVG, COUNT, MAX

->Simple string filtering and numeric comparisons

->Data insights from real-world movie data

## 👨‍💻 Author
Abhiram
B.Tech in Data Science
This is one of my beginner SQL projects as part of my data science learning journey.










