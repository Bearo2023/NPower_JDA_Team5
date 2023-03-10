--Q1: Execute a failing query (i.e. one which gives an error) to retrieve all employees records whose salary is lower than the average salary.
SELECT * from employees where salary < AVG(salary);
--Q2: Execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary.
SELECT * from employees where salary < (SELECT AVG(salary) FROM EMPLOYEES);
--Q3: Execute a failing query (i.e. one which gives an error) to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY from employees;	
--Q4: Execute a Column Expression that retrieves all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES AS MAX_SALARY) from employees;	
--Q5: Execute a Table Expression for the EMPLOYEES table that excludes columns with sensitive employee data (i.e. does not include columns: SSN, B_DATE, SEX, ADDRESS, SALARY).
SELECT * FROM ( SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM employees) AS EMP4ALL;