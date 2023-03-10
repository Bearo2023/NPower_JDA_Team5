--Exercise1
--Q1: Retrieve all employees whose address is in Elgin,IL.
SELECT * FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL%';
--Q2: Retrieve all employees who were born during the 1970's.
SELECT * FROM EMPLOYEES WHERE B_DATE LIKE '197%';
--Q3: Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * FROM EMPLOYEES WHERE DEP_ID = 5 AND (SALARY BETWEEN 60000 and 70000);

--Exercise2
--Q1: Retrieve a list of employees ordered by department ID.
SELECT * FROM EMPLOYEES ORDER by DEP_ID;
--Q2: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT * FROM EMPLOYEES ORDER by DEP_ID DESC, L_NAME DESC;
--Q3: In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME FROM EMPLOYEES as E, DEPARTMENTS as D WHERE E.DEP_ID = D.DEPT_ID_DEP ORDER BY D.DEP_NAME, E.L_NAME DESC;

--Exercise3
--Q1: For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(DEP_ID) FROM EMPLOYEES GROUP BY DEP_ID;
--Q2: For each department retrieve the number of employees in the department, and the average employee salary in the department..
SELECT DEP_ID, COUNT(DEP_ID), AVG(SALARY) FROM EMPLOYEES GROUP BY DEP_ID;
--Q3: Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
SELECT DEP_ID, COUNT(DEP_ID) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY" FROM EMPLOYEES GROUP BY DEP_ID;
--Q4: In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary..
SELECT DEP_ID, COUNT(DEP_ID) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY" FROM EMPLOYEES GROUP BY DEP_ID ORDER BY AVG_SALARY;
--Q5: In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(DEP_ID) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY" FROM EMPLOYEES GROUP BY DEP_ID HAVING COUNT(DEP_ID)<4 ORDER BY AVG_SALARY;