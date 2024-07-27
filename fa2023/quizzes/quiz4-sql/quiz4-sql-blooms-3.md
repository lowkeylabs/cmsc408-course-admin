Quiz title: Quiz 4 - SQL - Blooms 3, Apply.
Quiz description: This quiz focuses on SQL statements and their application.


1. What SQL clause is used to filter the results of a query?
... This question tests a student's understanding of the role of the WHERE clause in SQL queries.
a) FROM
... Incorrect. The FROM clause specifies which table to select or delete data from.
b) ORDER BY
... Incorrect. The ORDER BY clause is used to sort the results of a query.
c) GROUP BY
... Incorrect. The GROUP BY clause is used to arrange identical data into groups.
*d) WHERE
... CORRECT. The WHERE clause is used to filter the results of a query based on a specified condition.

2. Which SQL statement is used to update data in a database table?
... This question assesses the student's knowledge of SQL data manipulation language.
a) INSERT INTO
... Incorrect. The INSERT INTO statement is used to add new rows to a table.
b) SELECT
... Incorrect. The SELECT statement is used to query data from a table.
*c) UPDATE
... CORRECT. The UPDATE statement is used to modify existing data in a table.
d) DELETE
... Incorrect. The DELETE statement is used to remove rows from a table.

3. How can you delete all rows from a table without deleting the table itself?
... This question tests a student's understanding of SQL DELETE statement.
a) DROP TABLE
... Incorrect. The DROP TABLE statement is used to delete a table and all of its data.
*b) DELETE FROM table_name
... CORRECT. The DELETE FROM statement is used to delete all rows from a table without deleting the table itself.
c) TRUNCATE TABLE
... Incorrect. The TRUNCATE TABLE statement also deletes all rows from a table, but it is different from DELETE in that it does not log individual row deletions.
d) REMOVE FROM
... Incorrect. There is no REMOVE FROM statement in SQL.

4. Which SQL statement is used to remove a table from a database?
... This question tests a student's understanding of SQL data definition language.
a) REMOVE TABLE
... Incorrect. There is no REMOVE TABLE statement in SQL.
*b) DROP TABLE
... CORRECT. The DROP TABLE statement is used to remove a table and all of its data from a database.
c) DELETE TABLE
... Incorrect. There is no DELETE TABLE statement in SQL.
d) DESTROY TABLE
... Incorrect. There is no DESTROY TABLE statement in SQL.

5. What is the result of the following SQL query: SELECT * FROM Customers WHERE Age > 30 ORDER BY LastName ASC;
... This question tests a student's understanding of the SELECT, WHERE, and ORDER BY clauses.
*a) A list of all customers older than 30, sorted by last name in ascending order.
... CORRECT. The query selects all columns from the Customers table where the age is greater than 30, and then orders the results by the LastName column in ascending order.
b) A list of all customers younger than 30, sorted by last name in descending order.
... Incorrect. The query specifies Age > 30, not Age < 30, and orders by last name in ascending order, not descending order.
c) A list of all customers older than 30, sorted by last name in descending order.
... Incorrect. The query specifies ORDER BY LastName ASC, not DESC.
d) A list of all customers, sorted by age in ascending order.
... Incorrect. The query specifies Age > 30 and orders by last name, not age.

6. Which SQL statement is used to add a new row to a database table?
... This question tests a student's knowledge of SQL data manipulation language.
*a) INSERT INTO
... CORRECT. The INSERT INTO statement is used to add a new row to a table.
b) ADD ROW
... Incorrect. There is no ADD ROW statement in SQL.
c) APPEND
... Incorrect. There is no APPEND statement in SQL.
d) CREATE
... Incorrect. The CREATE statement is used to create a new table, not to add a row to an existing table.

7. How can you select all columns from a table?
... This question tests a student's understanding of the SELECT clause.
*a) SELECT *
... CORRECT. The asterisk (*) is used as a wildcard character to select all columns from a table.
b) SELECT ALL
... Incorrect. The SELECT ALL statement is not valid syntax in SQL.
c) SELECT COLUMN
... Incorrect. There is no SELECT COLUMN statement in SQL.
d) SELECT COLUMNS
... Incorrect. There is no SELECT COLUMNS statement in SQL.

8. Which data type should be used to store a customer's phone number in a MySQL database?
... This question assesses the student's knowledge of SQL data types.
a) INT
... Incorrect. Phone numbers should not be stored as integers because they may begin with zeros or contain dashes.
*b) VARCHAR
... CORRECT. The VARCHAR data type is appropriate for storing phone numbers because it can hold characters, numbers, and special characters.
c) FLOAT
... Incorrect. The FLOAT data type is used to store floating-point numbers and is not appropriate for phone numbers.
d) DATE
... Incorrect. The DATE data type is used to store date values and is not appropriate for phone numbers.

9. Which SQL statement is used to remove a column from a table?
... This question tests a student's understanding of SQL data definition language.
*a) ALTER TABLE table_name DROP COLUMN column_name
... CORRECT. The ALTER TABLE statement is used to modify the structure of a table, and the DROP COLUMN clause is used to remove a column.
b) DELETE COLUMN column_name
... Incorrect. There is no DELETE COLUMN statement in SQL.
c) REMOVE COLUMN column_name
... Incorrect. There is no REMOVE COLUMN statement in SQL.
d) DROP COLUMN column_name
... Incorrect. There is no DROP COLUMN statement in SQL.

10. How do you rename a column in a MySQL database table?
... This question tests a student's understanding of SQL data definition language.
*a) ALTER TABLE table_name CHANGE old_column_name new_column_name data_type
... CORRECT. The ALTER TABLE statement is used to modify the structure of a table, and the CHANGE clause is used to rename a column.
b) RENAME COLUMN old_column_name TO new_column_name
... Incorrect. There is no RENAME COLUMN statement in SQL.
c) MODIFY COLUMN old_column_name TO new_column_name
... Incorrect. There is no MODIFY COLUMN statement in SQL.
d) UPDATE COLUMN old_column_name TO new_column_name
... Incorrect. There is no UPDATE COLUMN statement in SQL.


11. What is the result of the following SQL query: SELECT FirstName, LastName FROM Employees WHERE Department = 'HR' AND Salary > 50000;
... This question tests a student's understanding of the SELECT, WHERE, and AND clauses.
*a) A list of first and last names of employees in the HR department who earn more than 50,000.
... CORRECT. The query selects the FirstName and LastName columns from the Employees table where the department is HR and the salary is greater than 50,000.
b) A list of first and last names of all employees who earn more than 50,000.
... Incorrect. The query specifies that the department must be HR.
c) A list of first and last names of all employees in the HR department.
... Incorrect. The query specifies that the salary must be greater than 50,000.
d) A list of all employees in the HR department who earn less than 50,000.
... Incorrect. The query specifies that the salary must be greater than 50,000.

12. How do you create a new table in a database?
... This question tests a student's understanding of SQL data definition language.
*a) CREATE TABLE table_name (column1 data_type, column2 data_type, ...);
... CORRECT. The CREATE TABLE statement is used to create a new table in a database.
b) NEW TABLE table_name (column1 data_type, column2 data_type, ...);
... Incorrect. There is no NEW TABLE statement in SQL.
c) ADD TABLE table_name (column1 data_type, column2 data_type, ...);
... Incorrect. There is no ADD TABLE statement in SQL.
d) INSERT TABLE table_name (column1 data_type, column2 data_type, ...);
... Incorrect. The INSERT TABLE statement is not valid syntax in SQL.

13. Which SQL statement is used to delete a specific row from a table?
... This question tests a student's understanding of SQL data manipulation language.
*a) DELETE FROM table_name WHERE condition;
... CORRECT. The DELETE FROM statement is used to delete specific rows from a table based on a condition.
b) REMOVE FROM table_name WHERE condition;
... Incorrect. There is no REMOVE FROM statement in SQL.
c) DROP FROM table_name WHERE condition;
... Incorrect. The DROP FROM statement is not valid syntax in SQL.
d) TRUNCATE FROM table_name WHERE condition;
... Incorrect. The TRUNCATE FROM statement is not valid syntax in SQL.

14. Which SQL statement is used to change the value of a specific column in a row?
... This question tests a student's understanding of SQL data manipulation language.
*a) UPDATE table_name SET column_name = value WHERE condition;
... CORRECT. The UPDATE statement is used to modify the value of a column in a row based on a condition.
b) CHANGE table_name SET column_name = value WHERE condition;
... Incorrect. There is no CHANGE statement in SQL.
c) MODIFY table_name SET column_name = value WHERE condition;
... Incorrect. There is no MODIFY statement in SQL.
d) ALTER table_name SET column_name = value WHERE condition;
... Incorrect. The ALTER statement is used to modify the structure of a table, not the value of a column in a row.

15. Which SQL clause is used to sort the results of a query?
... This question tests a student's understanding of the role of the ORDER BY clause in SQL queries.
a) GROUP BY
... Incorrect. The GROUP BY clause is used to arrange identical data into groups.
b) WHERE
... Incorrect. The WHERE clause is used to filter the results of a query based on a specified condition.
*c) ORDER BY
... CORRECT. The ORDER BY clause is used to sort the results of a query.
d) FROM
... Incorrect. The FROM clause specifies which table to select or delete data from.

16. Which SQL data type should be used to store a customer's email address?
... This question assesses the student's knowledge of SQL data types.
a) INT
... Incorrect. The INT data type is used to store integers and is not appropriate for email addresses.
*b) VARCHAR
... CORRECT. The VARCHAR data type is appropriate for storing email addresses because it can hold characters, numbers, and special characters.
c) FLOAT
... Incorrect. The FLOAT data type is used to store floating-point numbers and is not appropriate for email addresses.
d) DATE
... Incorrect. The DATE data type is used to store date values and is not appropriate for email addresses.

17. How do you add a new column to an existing table in a MySQL database?
... This question tests a student's understanding of SQL data definition language.
*a) ALTER TABLE table_name ADD COLUMN column_name data_type;
... CORRECT. The ALTER TABLE statement is used to modify the structure of a table, and the ADD COLUMN clause is used to add a new column.
b) ADD COLUMN table_name column_name data_type;
... Incorrect. There is no ADD COLUMN statement in SQL.
c) INSERT COLUMN table_name column_name data_type;
... Incorrect. There is no INSERT COLUMN statement in SQL.
d) CREATE COLUMN table_name column_name data_type;
... Incorrect. There is no CREATE COLUMN statement in SQL.

18. Which SQL clause is used to group rows that have the same values in specified columns?
... This question tests a student's understanding of the role of the GROUP BY clause in SQL queries.
a) ORDER BY
... Incorrect. The ORDER BY clause is used to sort the results of a query.
b) WHERE
... Incorrect. The WHERE clause is used to filter the results of a query based on a specified condition.
*c) GROUP BY
... CORRECT. The GROUP BY clause is used to arrange identical data into groups.
d) FROM
... Incorrect. The FROM clause specifies which table to select or delete data from.

19. How do you retrieve data from a database table?
... This question tests a student's understanding of SQL data manipulation language.
*a) SELECT column_name FROM table_name;
... CORRECT. The SELECT statement is used to query data from a table.
b) INSERT INTO table_name (column_name);
... Incorrect. The INSERT INTO statement is used to add new rows to a table.
c) UPDATE table_name SET column_name = value;
... Incorrect. The UPDATE statement is used to modify existing data in a table.
d) DELETE FROM table_name WHERE condition;
... Incorrect. The DELETE FROM statement is used to remove rows from a table.

20. Which SQL statement is used to add a primary key to a table?
... This question tests a student's understanding of SQL data definition language.
*a) ALTER TABLE table_name ADD PRIMARY KEY (column_name);
... CORRECT. The ALTER TABLE statement is used to modify the structure of a table, and the ADD PRIMARY KEY clause is used to add a primary key.
b) ADD PRIMARY KEY table_name (column_name);
... Incorrect. There is no ADD PRIMARY KEY statement in SQL.
c) CREATE PRIMARY KEY table_name (column_name);
... Incorrect. There is no CREATE PRIMARY KEY statement in SQL.
d) INSERT PRIMARY KEY table_name (column_name);
... Incorrect. There is no INSERT PRIMARY KEY statement in SQL.

22. Which SQL clause is used to filter the results of a query based on a specified condition?
... This question tests a student's understanding of the role of the WHERE clause in SQL queries.
a) GROUP BY
... Incorrect. The GROUP BY clause is used to arrange identical data into groups.
*b) WHERE
... CORRECT. The WHERE clause is used to filter the results of a query based on a specified condition.
c) ORDER BY
... Incorrect. The ORDER BY clause is used to sort the results of a query.
d) FROM
... Incorrect. The FROM clause specifies which table to select or delete data from.

23. Which SQL statement is used to modify existing data in a table?
... This question tests a student's understanding of SQL data manipulation language.
*a) UPDATE table_name SET column_name = value WHERE condition;
... CORRECT. The UPDATE statement is used to modify the value of a column in a row based on a condition.
b) SELECT column_name FROM table_name;
... Incorrect. The SELECT statement is used to query data from a table.
c) INSERT INTO table_name (column_name) VALUES (value);
... Incorrect. The INSERT INTO statement is used to add new rows to a table.
d) DELETE FROM table_name WHERE condition;
... Incorrect. The DELETE FROM statement is used to remove rows from a table.

24. Which SQL statement is used to add a new row to a table?
... This question tests a student's understanding of SQL data manipulation language.
*a) INSERT INTO table_name (column_name) VALUES (value);
... CORRECT. The INSERT INTO statement is used to add a new row to a table.
b) SELECT column_name FROM table_name;
... Incorrect. The SELECT statement is used to query data from a table.
c) UPDATE table_name SET column_name = value WHERE condition;
... Incorrect. The UPDATE statement is used to modify existing data in a table.
d) DELETE FROM table_name WHERE condition;
... Incorrect. The DELETE FROM statement is used to remove rows from a table.

25. Which SQL clause is used to specify which table to select or delete data from?
... This question tests a student's understanding of the role of the FROM clause in SQL queries.
a) GROUP BY
... Incorrect. The GROUP BY clause is used to arrange identical data into groups.
b) WHERE
... Incorrect. The WHERE clause is used to filter the results of a query based on a specified condition.
c) ORDER BY
... Incorrect. The ORDER BY clause is used to sort the results of a query.
*d) FROM
... CORRECT. The FROM clause specifies which table to select or delete data from.

