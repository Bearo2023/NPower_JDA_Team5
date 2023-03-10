--Exercise2
--Q1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
SELECT SUM(COST) FROM PETRESCUE;
--Q2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
SELECT SUM(COST) as SUM_OF_COST FROM PETRESCUE;
--Q3: Enter a function that displays the maximum quantity of animals rescued.
SELECT MAX(QUANTITY) as MAX_QUANTITY FROM PETRESCUE;
--Q4: Enter a function that displays the average cost of animals rescued.
SELECT AVG(COST) as SUM_OF_COST FROM PETRESCUE;
--Q5: Enter a function that displays the average cost of rescuing a dog.
SELECT AVG(COST/QUANTITY) as SUM_OF_COST FROM PETRESCUE WHERE UCASE(ANIMAL) = 'DOG';

--EXERCISE3
--Q1: Enter a function that displays the rounded cost of each rescue.
SELECT ROUND(COST) FROM PETRESCUE;
--Q2: Enter a function that displays the length of each animal name.
SELECT ANIMAL, LENGTH(ANIMAL) as A_LENGTH FROM PETRESCUE;
--Q3: Enter a function that displays the animal name in each rescue in uppercase.
SELECT UCASE(ANIMAL) FROM PETRESCUE;
--Q4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
SELECT DISTINCT(UCASE(ANIMAL)) FROM PETRESCUE;
--Q5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL) = 'cat';

--Exercise4
--Q1: Enter a function that displays the day of the month when cats have been rescued.
SELECT DAY(RESCUEDATE) FROM PETRESCUE;
--Q2: Enter a function that displays the number of rescues on the 5th month.
SELECT QUANTITY FROM PETRESCUE WHERE MONTH(RESCUEDATE) = '05';
--Q3: Enter a function that displays the number of rescues on the 14th day of the month.
SELECT QUANTITY FROM PETRESCUE WHERE DAY(RESCUEDATE) = '14';
--Q4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
SELECT (RESCUEDATE + 3 DAYS) FROM PETRESCUE;
--Q5: Enter a function that displays the length of time the animals have been rescued; the difference between today???s date and the rescue date.
SELECT (CURRENT_DATE - RESCUEDATE) FROM PETRESCUE;