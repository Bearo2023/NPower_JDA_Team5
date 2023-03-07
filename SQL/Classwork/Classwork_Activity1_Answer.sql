--Where Clause
--1.	Write a query in SQL to find the name and year of the movies.
SELECT mov_name, mov_year from Movies;
--2.	Write a query in SQL to find the year when the movie American Beauty released.
SELECT mov_name, mov_year from Movies WHERE mov_name = "American Beauty";
--3.	Write a query in SQL to find the movie which was released in the year 1999.
SELECT * from Movies WHERE mov_year = 1999;
--4.	Write a query in SQL to find the movies which was released before 1998. 
SELECT * from Movies WHERE mov_year < 1999;
--5.	Write a query in SQL to return the name of all reviewers and name of movies together in a single list.
SELECT rev_name,mov_name from Movies;
--6.	Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating.
SELECT rev_name,mov_name, rev_stars from Movies WHERE rev_stars >= 7;
--7.	Write a query in SQL to find the titles of all movies that have no ratings.
SELECT mov_name, rev_stars from Movies WHERE rev_stars IS NULL;
--8.	Write a query in SQL to find the titles of the movies with ID 905, 907, 917.
SELECT mov_name, mov_id from Movies WHERE mov_id = 905 or  mov_id = 907 or mov_id = 917;
--9.	Write a query in SQL to find the list of all those movies with year which include the words Boogie Nights. 
SELECT mov_name, mov_year from Movies WHERE mov_name = "Boogie Nights";
--10.	Write a query in SQL to find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'.
--Do not have any data for actor names