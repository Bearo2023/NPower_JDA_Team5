--Exercise1
--Q1: Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);
--Q2: Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');
--Q3: Retrieve JOB information and who earn more than $70,000.
SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);
--Q4: Retrieve JOB information and whose birth year is after 1976.
SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > 1976);
--Q5: Retrieve JOB information for female employees whose birth year is after 1976.
SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > 1976 AND SEX = 'F');

--Exercise2
--Q1: Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
SELECT * FROM EMPLOYEES,JOBS;
--Q2: Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM EMPLOYEES E,JOBS J WHERE E.JOB_ID = J.JOB_IDENT;
--Q3: Redo the previous query, using shorter aliases for table names.
SELECT * FROM EMPLOYEES E,JOBS J WHERE E.JOB_ID = J.JOB_IDENT;
--Q4: Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
SELECT EMP_ID,F_NAME,L_NAME,JOB_TITLE FROM EMPLOYEES E,JOBS J WHERE E.JOB_ID = J.JOB_IDENT;
--Q5: Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
SELECT E.EMP_ID,E.F_NAME,E.L_NAME,J.JOB_TITLE FROM EMPLOYEES E,JOBS J WHERE E.JOB_ID = J.JOB_IDENT;