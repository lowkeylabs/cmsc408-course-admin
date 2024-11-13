# Aggregates 2

Wednesday - Nov 13, 2024

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- CMSC 427 - User Interfaces - Spring 2025

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
  target="_blank">Homework 8 - due 11/17</a>

- Keep working on your semester project!!!

</div>

<div class="column" width="40%">

### Lecture topics

- [Subqueries](#subqueries)

- [Common Table Expressions](#common-table-expressions-cte)

- [Homework 8 discussion](#homework-8-discussion)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| SQL | 13 | 11/13 | Wed | MTG24: L24 (Subqueries and WITH 1) |  |
| SQL | 13 | 11/15 | Fri |  | PrjDel 11 due (Team reflection) |
| SQL | 13 | 11/17 | Sun |  | HW8 due (SQL Funhouse) |
| Adv. SQL | 14 | 11/18 | Mon | MTG25: L25 (Subqueries and WITH 2) |  |
| Adv. SQL | 14 | 11/20 | Wed | MTG26: L26 (Procedures and Triggers 1) |  |
| (break) | 15 | 11/25 | Mon |  | Fall break (11/25-11/29) |
| Adv. SQL | 16 | 12/2 | Mon | MTG27: L27 (Procedures and Triggers 2) |  |
| Adv. SQL | 16 | 12/4 | Wed | MTG28: L28 (Misc. Topics) |  |

</div>

## We are here

<img src="lecture-24_files\figure-commonmark\mermaid-figure-1.png"
style="width:11.93in;height:2.54in" />

# Subqueries

## Subqueries

<div class="columns">

<div class="column">

A subquery is a query nested inside another query, often used to filter,
compare, or transform data.

**Purpose**: Subqueries simplify complex queries by breaking them into
smaller, manageable parts and allow reuse of query logic.

**Types**: Single-row, multi-row, and correlated subqueries, each used
for different types of comparisons or conditions.

**Usage**: Can appear in `SELECT`, `WHERE`, `FROM`, and other clauses,
making them versatile in SQL operations.

</div>

<div class="column">

### Single-row example

Find employees with greater than average salary.

``` sql
SELECT name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

<p>
 
</p>

### Multi-row example

Find employees from small departments (\<5 employees)

``` sql
SELECT name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        GROUP BY department_id
                        HAVING COUNT(*) < 5);
```

</div>

</div>

## Sample data - employees table from HR database

First 20 records from `employees` table in your `24fa_hr_24fa_jdleonard`
database.

<div style="font-size: 0.5em;">

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
employee_id
</th>
<th>
first_name
</th>
<th>
last_name
</th>
<th>
email
</th>
<th>
phone_number
</th>
<th>
hire_date
</th>
<th>
job_id
</th>
<th>
salary
</th>
<th>
commission_pct
</th>
<th>
manager_id
</th>
<th>
department_id
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
100
</td>
<td>
Steven
</td>
<td>
King
</td>
<td>
SKING
</td>
<td>
515.123.4567
</td>
<td>
2003-06-17
</td>
<td>
AD_PRES
</td>
<td>
24000.0
</td>
<td>
NULL
</td>
<td>
NULL
</td>
<td>
90
</td>
</tr>
<tr>
<td>
101
</td>
<td>
Neena
</td>
<td>
Kochhar
</td>
<td>
NKOCHHAR
</td>
<td>
515.123.4568
</td>
<td>
2005-09-21
</td>
<td>
AD_VP
</td>
<td>
17000.0
</td>
<td>
NULL
</td>
<td>
100.0
</td>
<td>
90
</td>
</tr>
<tr>
<td>
102
</td>
<td>
Lex
</td>
<td>
De Haan
</td>
<td>
LDEHAAN
</td>
<td>
515.123.4569
</td>
<td>
2001-01-13
</td>
<td>
AD_VP
</td>
<td>
17000.0
</td>
<td>
NULL
</td>
<td>
100.0
</td>
<td>
90
</td>
</tr>
<tr>
<td>
103
</td>
<td>
Alexander
</td>
<td>
Hunold
</td>
<td>
AHUNOLD
</td>
<td>
590.423.4567
</td>
<td>
2006-01-03
</td>
<td>
IT_PROG
</td>
<td>
9000.0
</td>
<td>
NULL
</td>
<td>
102.0
</td>
<td>
60
</td>
</tr>
<tr>
<td>
104
</td>
<td>
Bruce
</td>
<td>
Ernst
</td>
<td>
BERNST
</td>
<td>
590.423.4568
</td>
<td>
2007-05-21
</td>
<td>
IT_PROG
</td>
<td>
6000.0
</td>
<td>
NULL
</td>
<td>
103.0
</td>
<td>
60
</td>
</tr>
<tr>
<td>
105
</td>
<td>
David
</td>
<td>
Austin
</td>
<td>
DAUSTIN
</td>
<td>
590.423.4569
</td>
<td>
2005-06-25
</td>
<td>
IT_PROG
</td>
<td>
4800.0
</td>
<td>
NULL
</td>
<td>
103.0
</td>
<td>
60
</td>
</tr>
<tr>
<td>
106
</td>
<td>
Valli
</td>
<td>
Pataballa
</td>
<td>
VPATABAL
</td>
<td>
590.423.4560
</td>
<td>
2006-02-05
</td>
<td>
IT_PROG
</td>
<td>
4800.0
</td>
<td>
NULL
</td>
<td>
103.0
</td>
<td>
60
</td>
</tr>
<tr>
<td>
107
</td>
<td>
Diana
</td>
<td>
Lorentz
</td>
<td>
DLORENTZ
</td>
<td>
590.423.5567
</td>
<td>
2007-02-07
</td>
<td>
IT_PROG
</td>
<td>
4200.0
</td>
<td>
NULL
</td>
<td>
103.0
</td>
<td>
60
</td>
</tr>
<tr>
<td>
108
</td>
<td>
Nancy
</td>
<td>
Greenberg
</td>
<td>
NGREENBE
</td>
<td>
515.124.4569
</td>
<td>
2002-08-17
</td>
<td>
FI_MGR
</td>
<td>
12008.0
</td>
<td>
NULL
</td>
<td>
101.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
109
</td>
<td>
Daniel
</td>
<td>
Faviet
</td>
<td>
DFAVIET
</td>
<td>
515.124.4169
</td>
<td>
2002-08-16
</td>
<td>
FI_ACCOUNT
</td>
<td>
9000.0
</td>
<td>
NULL
</td>
<td>
108.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
110
</td>
<td>
John
</td>
<td>
Chen
</td>
<td>
JCHEN
</td>
<td>
515.124.4269
</td>
<td>
2005-09-28
</td>
<td>
FI_ACCOUNT
</td>
<td>
8200.0
</td>
<td>
NULL
</td>
<td>
108.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
111
</td>
<td>
Ismael
</td>
<td>
Sciarra
</td>
<td>
ISCIARRA
</td>
<td>
515.124.4369
</td>
<td>
2005-09-30
</td>
<td>
FI_ACCOUNT
</td>
<td>
7700.0
</td>
<td>
NULL
</td>
<td>
108.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
112
</td>
<td>
Jose Manuel
</td>
<td>
Urman
</td>
<td>
JMURMAN
</td>
<td>
515.124.4469
</td>
<td>
2006-03-07
</td>
<td>
FI_ACCOUNT
</td>
<td>
7800.0
</td>
<td>
NULL
</td>
<td>
108.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
113
</td>
<td>
Luis
</td>
<td>
Popp
</td>
<td>
LPOPP
</td>
<td>
515.124.4567
</td>
<td>
2007-12-07
</td>
<td>
FI_ACCOUNT
</td>
<td>
6900.0
</td>
<td>
NULL
</td>
<td>
108.0
</td>
<td>
100
</td>
</tr>
<tr>
<td>
114
</td>
<td>
Den
</td>
<td>
Raphaely
</td>
<td>
DRAPHEAL
</td>
<td>
515.127.4561
</td>
<td>
2002-12-07
</td>
<td>
PU_MAN
</td>
<td>
11000.0
</td>
<td>
NULL
</td>
<td>
100.0
</td>
<td>
30
</td>
</tr>
<tr>
<td>
115
</td>
<td>
Alexander
</td>
<td>
Khoo
</td>
<td>
AKHOO
</td>
<td>
515.127.4562
</td>
<td>
2003-05-18
</td>
<td>
PU_CLERK
</td>
<td>
3100.0
</td>
<td>
NULL
</td>
<td>
114.0
</td>
<td>
30
</td>
</tr>
<tr>
<td>
116
</td>
<td>
Shelli
</td>
<td>
Baida
</td>
<td>
SBAIDA
</td>
<td>
515.127.4563
</td>
<td>
2005-12-24
</td>
<td>
PU_CLERK
</td>
<td>
2900.0
</td>
<td>
NULL
</td>
<td>
114.0
</td>
<td>
30
</td>
</tr>
<tr>
<td>
117
</td>
<td>
Sigal
</td>
<td>
Tobias
</td>
<td>
STOBIAS
</td>
<td>
515.127.4564
</td>
<td>
2005-07-24
</td>
<td>
PU_CLERK
</td>
<td>
2800.0
</td>
<td>
NULL
</td>
<td>
114.0
</td>
<td>
30
</td>
</tr>
<tr>
<td>
118
</td>
<td>
Guy
</td>
<td>
Himuro
</td>
<td>
GHIMURO
</td>
<td>
515.127.4565
</td>
<td>
2006-11-15
</td>
<td>
PU_CLERK
</td>
<td>
2600.0
</td>
<td>
NULL
</td>
<td>
114.0
</td>
<td>
30
</td>
</tr>
<tr>
<td>
119
</td>
<td>
Karen
</td>
<td>
Colmenares
</td>
<td>
KCOLMENA
</td>
<td>
515.127.4566
</td>
<td>
2007-08-10
</td>
<td>
PU_CLERK
</td>
<td>
2500.0
</td>
<td>
NULL
</td>
<td>
114.0
</td>
<td>
30
</td>
</tr>
</tbody>
</table>

</div>

## Subquery in the WHERE clause

*List employees with salary greater than average salary.*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql
SELECT
  last_name,
  salary
FROM
  employees
WHERE
  salary > (select avg(salary) from employees)
ORDER BY
  salary desc
LIMIT 15
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
</tr>
<tr>
<td>
Kochhar
</td>
<td>
17000.0
</td>
</tr>
<tr>
<td>
De Haan
</td>
<td>
17000.0
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
</tr>
</tbody>
</table>

</div>

</div>

## Subquery in the SELECT clause

*List employees with salary greater than average salary.*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql
SELECT
  last_name,
  salary,
  (select avg(salary) 
   from employees
  ) as "Avg Salary"
FROM
  employees
WHERE
  salary > (select avg(salary) from employees)
ORDER BY
  salary desc
LIMIT 15
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
<th>
Avg Salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Kochhar
</td>
<td>
17000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
De Haan
</td>
<td>
17000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
<td>
6461.831776
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
<td>
6461.831776
</td>
</tr>
</tbody>
</table>

</div>

</div>

Same query as before, with a single-row select included in the SELECT
statement.

## Subquery in the FROM clause

*List employees with salary greater than average salary.*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql
SELECT
  *
FROM (
  SELECT
    department_id,
    SUM(salary) AS total_salary
  FROM
    employees
  GROUP BY department_id
  ) as junk_table
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
department_id
</th>
<th>
total_salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
NULL
</td>
<td>
7000.0
</td>
</tr>
<tr>
<td>
10.0
</td>
<td>
4400.0
</td>
</tr>
<tr>
<td>
20.0
</td>
<td>
19000.0
</td>
</tr>
<tr>
<td>
30.0
</td>
<td>
24900.0
</td>
</tr>
<tr>
<td>
40.0
</td>
<td>
6500.0
</td>
</tr>
<tr>
<td>
50.0
</td>
<td>
156400.0
</td>
</tr>
<tr>
<td>
60.0
</td>
<td>
28800.0
</td>
</tr>
<tr>
<td>
70.0
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
80.0
</td>
<td>
304500.0
</td>
</tr>
<tr>
<td>
90.0
</td>
<td>
58000.0
</td>
</tr>
<tr>
<td>
100.0
</td>
<td>
51608.0
</td>
</tr>
<tr>
<td>
110.0
</td>
<td>
20308.0
</td>
</tr>
</tbody>
</table>

</div>

</div>

- SELECT statements return tables that can be used for additional
  queries.

- In the example above we create a new tables named `junk_table` that
  returns two columns: `department_id` and `total_salary`

## Single-value subqueries

*Find employees hired before the earliest hire date in the Sales
department.*

The *inner query* or *subquery* returns a single value - the earliest
hire date of employees from department 100. The *outer query* or *main
query* uses this value in a comparison with *hire_data*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

SELECT last_name
FROM employees
WHERE hire_date < (
  SELECT MIN(hire_date)
  FROM employees
  WHERE department_id=100
  );
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
De Haan
</td>
</tr>
<tr>
<td>
Mavris
</td>
</tr>
<tr>
<td>
Baer
</td>
</tr>
<tr>
<td>
Higgins
</td>
</tr>
<tr>
<td>
Gietz
</td>
</tr>
</tbody>
</table>

</div>

</div>

## Multi-value subqueries

List the employees in large departments (this with more than 5
employees).

The *inner query* returns a list of department ids. The *outer query*
uses the `IN` operator to test of `department_id` is in the returned
list.

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

SELECT last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        GROUP BY department_id
                        HAVING COUNT(*) > 5);
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
Greenberg
</td>
</tr>
<tr>
<td>
Faviet
</td>
</tr>
<tr>
<td>
Chen
</td>
</tr>
<tr>
<td>
Sciarra
</td>
</tr>
<tr>
<td>
Urman
</td>
</tr>
<tr>
<td>
Popp
</td>
</tr>
<tr>
<td>
Raphaely
</td>
</tr>
<tr>
<td>
Khoo
</td>
</tr>
<tr>
<td>
Baida
</td>
</tr>
<tr>
<td>
Tobias
</td>
</tr>
<tr>
<td>
Himuro
</td>
</tr>
<tr>
<td>
Colmenares
</td>
</tr>
<tr>
<td>
Weiss
</td>
</tr>
<tr>
<td>
Fripp
</td>
</tr>
<tr>
<td>
Kaufling
</td>
</tr>
<tr>
<td>
Vollman
</td>
</tr>
<tr>
<td>
Mourgos
</td>
</tr>
<tr>
<td>
Nayer
</td>
</tr>
<tr>
<td>
Mikkilineni
</td>
</tr>
<tr>
<td>
Landry
</td>
</tr>
<tr>
<td>
Markle
</td>
</tr>
<tr>
<td>
Bissot
</td>
</tr>
<tr>
<td>
Atkinson
</td>
</tr>
<tr>
<td>
Marlow
</td>
</tr>
<tr>
<td>
Olson
</td>
</tr>
<tr>
<td>
Mallin
</td>
</tr>
<tr>
<td>
Rogers
</td>
</tr>
<tr>
<td>
Gee
</td>
</tr>
<tr>
<td>
Philtanker
</td>
</tr>
<tr>
<td>
Ladwig
</td>
</tr>
<tr>
<td>
Stiles
</td>
</tr>
<tr>
<td>
Seo
</td>
</tr>
<tr>
<td>
Patel
</td>
</tr>
<tr>
<td>
Rajs
</td>
</tr>
<tr>
<td>
Davies
</td>
</tr>
<tr>
<td>
Matos
</td>
</tr>
<tr>
<td>
Vargas
</td>
</tr>
<tr>
<td>
Russell
</td>
</tr>
<tr>
<td>
Partners
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
</tr>
<tr>
<td>
Cambrault
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
</tr>
<tr>
<td>
Tucker
</td>
</tr>
<tr>
<td>
Bernstein
</td>
</tr>
<tr>
<td>
Hall
</td>
</tr>
<tr>
<td>
Olsen
</td>
</tr>
<tr>
<td>
Cambrault
</td>
</tr>
<tr>
<td>
Tuvault
</td>
</tr>
<tr>
<td>
King
</td>
</tr>
<tr>
<td>
Sully
</td>
</tr>
<tr>
<td>
McEwen
</td>
</tr>
<tr>
<td>
Smith
</td>
</tr>
<tr>
<td>
Doran
</td>
</tr>
<tr>
<td>
Sewall
</td>
</tr>
<tr>
<td>
Vishney
</td>
</tr>
<tr>
<td>
Greene
</td>
</tr>
<tr>
<td>
Marvins
</td>
</tr>
<tr>
<td>
Lee
</td>
</tr>
<tr>
<td>
Ande
</td>
</tr>
<tr>
<td>
Banda
</td>
</tr>
<tr>
<td>
Ozer
</td>
</tr>
<tr>
<td>
Bloom
</td>
</tr>
<tr>
<td>
Fox
</td>
</tr>
<tr>
<td>
Smith
</td>
</tr>
<tr>
<td>
Bates
</td>
</tr>
<tr>
<td>
Kumar
</td>
</tr>
<tr>
<td>
Abel
</td>
</tr>
<tr>
<td>
Hutton
</td>
</tr>
<tr>
<td>
Taylor
</td>
</tr>
<tr>
<td>
Livingston
</td>
</tr>
<tr>
<td>
Johnson
</td>
</tr>
<tr>
<td>
Taylor
</td>
</tr>
<tr>
<td>
Fleaur
</td>
</tr>
<tr>
<td>
Sullivan
</td>
</tr>
<tr>
<td>
Geoni
</td>
</tr>
<tr>
<td>
Sarchand
</td>
</tr>
<tr>
<td>
Bull
</td>
</tr>
<tr>
<td>
Dellinger
</td>
</tr>
<tr>
<td>
Cabrio
</td>
</tr>
<tr>
<td>
Chung
</td>
</tr>
<tr>
<td>
Dilly
</td>
</tr>
<tr>
<td>
Gates
</td>
</tr>
<tr>
<td>
Perkins
</td>
</tr>
<tr>
<td>
Bell
</td>
</tr>
<tr>
<td>
Everett
</td>
</tr>
<tr>
<td>
McCain
</td>
</tr>
<tr>
<td>
Jones
</td>
</tr>
<tr>
<td>
Walsh
</td>
</tr>
<tr>
<td>
Feeney
</td>
</tr>
<tr>
<td>
OConnell
</td>
</tr>
<tr>
<td>
Grant
</td>
</tr>
</tbody>
</table>

</div>

</div>

## Correlated subqueries

*List employees earning more than the average salary in their
department.*

The *inner query* returns the average salary for the department that
matches the department id of the employee in the outer query.

You can also get the same list by using a *join* in the `FROM` clause.

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

SELECT last_name, salary
FROM employees AS e1
WHERE salary > (SELECT AVG(salary)
                FROM employees AS e2
                WHERE e1.department_id = e2.department_id)
ORDER BY last_name
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Bell
</td>
<td>
4000.0
</td>
</tr>
<tr>
<td>
Bernstein
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Bloom
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Bull
</td>
<td>
4100.0
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Chung
</td>
<td>
3800.0
</td>
</tr>
<tr>
<td>
Dilly
</td>
<td>
3600.0
</td>
</tr>
<tr>
<td>
Ernst
</td>
<td>
6000.0
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
</tr>
<tr>
<td>
Everett
</td>
<td>
3900.0
</td>
</tr>
<tr>
<td>
Faviet
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Fox
</td>
<td>
9600.0
</td>
</tr>
<tr>
<td>
Fripp
</td>
<td>
8200.0
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Greene
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Hall
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Hunold
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Kaufling
</td>
<td>
7900.0
</td>
</tr>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
</tr>
<tr>
<td>
King
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Ladwig
</td>
<td>
3600.0
</td>
</tr>
<tr>
<td>
McEwen
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Mourgos
</td>
<td>
5800.0
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
</tr>
<tr>
<td>
Rajs
</td>
<td>
3500.0
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
</tr>
<tr>
<td>
Sarchand
</td>
<td>
4200.0
</td>
</tr>
<tr>
<td>
Sully
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Tucker
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
</tr>
<tr>
<td>
Vollman
</td>
<td>
6500.0
</td>
</tr>
<tr>
<td>
Weiss
</td>
<td>
8000.0
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
</tr>
</tbody>
</table>

</div>

</div>

## Subquery as a virtual table

*List employees earning more than the average salary in their
department.*

Here is the example as before, joining a subquery.

<div class="columns">

<div class="column" width="70%">

### SQL Code

``` sql

SELECT last_name, salary
FROM 
  employees e1 
    left join (SELECT department_id,AVG(salary) as avg_salary
                FROM employees
                group by department_id) e2
        on (e1.department_id=e2.department_id)
WHERE salary > avg_salary
ORDER BY last_name
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="29%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Bell
</td>
<td>
4000.0
</td>
</tr>
<tr>
<td>
Bernstein
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Bloom
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Bull
</td>
<td>
4100.0
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Chung
</td>
<td>
3800.0
</td>
</tr>
<tr>
<td>
Dilly
</td>
<td>
3600.0
</td>
</tr>
<tr>
<td>
Ernst
</td>
<td>
6000.0
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
</tr>
<tr>
<td>
Everett
</td>
<td>
3900.0
</td>
</tr>
<tr>
<td>
Faviet
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Fox
</td>
<td>
9600.0
</td>
</tr>
<tr>
<td>
Fripp
</td>
<td>
8200.0
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Greene
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Hall
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Hunold
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Kaufling
</td>
<td>
7900.0
</td>
</tr>
<tr>
<td>
King
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
</tr>
<tr>
<td>
Ladwig
</td>
<td>
3600.0
</td>
</tr>
<tr>
<td>
McEwen
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Mourgos
</td>
<td>
5800.0
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
</tr>
<tr>
<td>
Rajs
</td>
<td>
3500.0
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
</tr>
<tr>
<td>
Sarchand
</td>
<td>
4200.0
</td>
</tr>
<tr>
<td>
Sully
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Tucker
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
</tr>
<tr>
<td>
Vollman
</td>
<td>
6500.0
</td>
</tr>
<tr>
<td>
Weiss
</td>
<td>
8000.0
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
</tr>
</tbody>
</table>

</div>

</div>

## Nested subqueries

*List employees who earn more than the average salary in departments
with an average salary above \$7,000 per month.*

<div class="columns">

<div class="column" width="70%">

### SQL Code

``` sql

SELECT last_name
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees
                WHERE department_id IN (SELECT department_id
                                        FROM employees
                                        GROUP BY department_id
                                        HAVING AVG(salary) > 7000));
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="29%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
King
</td>
</tr>
<tr>
<td>
Kochhar
</td>
</tr>
<tr>
<td>
De Haan
</td>
</tr>
<tr>
<td>
Greenberg
</td>
</tr>
<tr>
<td>
Raphaely
</td>
</tr>
<tr>
<td>
Russell
</td>
</tr>
<tr>
<td>
Partners
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
</tr>
<tr>
<td>
Cambrault
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
</tr>
<tr>
<td>
Tucker
</td>
</tr>
<tr>
<td>
King
</td>
</tr>
<tr>
<td>
Vishney
</td>
</tr>
<tr>
<td>
Ozer
</td>
</tr>
<tr>
<td>
Bloom
</td>
</tr>
<tr>
<td>
Abel
</td>
</tr>
<tr>
<td>
Hartstein
</td>
</tr>
<tr>
<td>
Baer
</td>
</tr>
<tr>
<td>
Higgins
</td>
</tr>
</tbody>
</table>

</div>

</div>

# Common Table Expressions (CTE)

## Common Table Expressions (CTE)

<div class="columns">

<div class="column">

### CTE

A Common Table Expression (CTE) is a temporary result set defined within
an SQL statement.

CTE are defined using the WITH keyword at the beginning of a query.

CTE SIGNIFICANTLY simplify complex queries, improves readability, and
allows reusing query logic.

</div>

<div class="column">

### Example CTE

``` sql
WITH cte_name AS (
    SELECT columns
    FROM table
    WHERE condition
)
SELECT * FROM cte_name;
```

</div>

</div>

## CTE Example \#1

*List employees with salaries greater than average salary.*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employees
)
SELECT last_name, salary
FROM employees, avg_salary
WHERE salary > avg_salary.average_salary;
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
</tr>
<tr>
<td>
Kochhar
</td>
<td>
17000.0
</td>
</tr>
<tr>
<td>
De Haan
</td>
<td>
17000.0
</td>
</tr>
<tr>
<td>
Hunold
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Faviet
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Chen
</td>
<td>
8200.0
</td>
</tr>
<tr>
<td>
Sciarra
</td>
<td>
7700.0
</td>
</tr>
<tr>
<td>
Urman
</td>
<td>
7800.0
</td>
</tr>
<tr>
<td>
Popp
</td>
<td>
6900.0
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Weiss
</td>
<td>
8000.0
</td>
</tr>
<tr>
<td>
Fripp
</td>
<td>
8200.0
</td>
</tr>
<tr>
<td>
Kaufling
</td>
<td>
7900.0
</td>
</tr>
<tr>
<td>
Vollman
</td>
<td>
6500.0
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
</tr>
<tr>
<td>
Tucker
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Bernstein
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Hall
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Olsen
</td>
<td>
8000.0
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
7500.0
</td>
</tr>
<tr>
<td>
Tuvault
</td>
<td>
7000.0
</td>
</tr>
<tr>
<td>
King
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Sully
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
McEwen
</td>
<td>
9000.0
</td>
</tr>
<tr>
<td>
Smith
</td>
<td>
8000.0
</td>
</tr>
<tr>
<td>
Doran
</td>
<td>
7500.0
</td>
</tr>
<tr>
<td>
Sewall
</td>
<td>
7000.0
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
</tr>
<tr>
<td>
Greene
</td>
<td>
9500.0
</td>
</tr>
<tr>
<td>
Marvins
</td>
<td>
7200.0
</td>
</tr>
<tr>
<td>
Lee
</td>
<td>
6800.0
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
</tr>
<tr>
<td>
Bloom
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Fox
</td>
<td>
9600.0
</td>
</tr>
<tr>
<td>
Smith
</td>
<td>
7400.0
</td>
</tr>
<tr>
<td>
Bates
</td>
<td>
7300.0
</td>
</tr>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
</tr>
<tr>
<td>
Hutton
</td>
<td>
8800.0
</td>
</tr>
<tr>
<td>
Taylor
</td>
<td>
8600.0
</td>
</tr>
<tr>
<td>
Livingston
</td>
<td>
8400.0
</td>
</tr>
<tr>
<td>
Grant
</td>
<td>
7000.0
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
</tr>
<tr>
<td>
Mavris
</td>
<td>
6500.0
</td>
</tr>
<tr>
<td>
Baer
</td>
<td>
10000.0
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
</tr>
<tr>
<td>
Gietz
</td>
<td>
8300.0
</td>
</tr>
<tr>
<td colspan="2" style="text-align: left;">
Total Rows: 51, Total Columns: 2
</td>
</tr>
</tbody>
</table>

</div>

</div>

## CTE Example \#2

*List employees with salaries greater than the average salary of the
big-salary departments (i.e., avg salary \> \$7000)*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

with big_salary_depts as (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) > 7000
), big_salary_dept_avg as (
    select avg(salary) as big_depts_avg_salary
    from employees 
    where department_id in (select * from big_salary_depts)
)
SELECT last_name
FROM employees
WHERE salary > (select * from big_salary_dept_avg)
ORDER BY last_name
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
Abel
</td>
</tr>
<tr>
<td>
Baer
</td>
</tr>
<tr>
<td>
Bloom
</td>
</tr>
<tr>
<td>
Cambrault
</td>
</tr>
<tr>
<td>
De Haan
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
</tr>
<tr>
<td>
Greenberg
</td>
</tr>
<tr>
<td>
Hartstein
</td>
</tr>
<tr>
<td>
Higgins
</td>
</tr>
<tr>
<td>
King
</td>
</tr>
<tr>
<td>
King
</td>
</tr>
<tr>
<td>
Kochhar
</td>
</tr>
<tr>
<td>
Ozer
</td>
</tr>
<tr>
<td>
Partners
</td>
</tr>
<tr>
<td>
Raphaely
</td>
</tr>
<tr>
<td>
Russell
</td>
</tr>
<tr>
<td>
Tucker
</td>
</tr>
<tr>
<td>
Vishney
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
</tr>
<tr>
<td colspan="1" style="text-align: left;">
Total Rows: 19, Total Columns: 1
</td>
</tr>
</tbody>
</table>

</div>

</div>

## CTE Example \#3

*List employees with salaries greater than the average salary of the
big-salary departments (i.e., avg salary \> \$7000)*

Same question - different solution

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

with big_salary_depts as (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) > 7000
), big_salary_dept_avg as (
    select avg(salary) as big_depts_avg_salary
    from employees 
    where department_id in (select * from big_salary_depts)
)
SELECT last_name, salary, big_depts_avg_salary
FROM employees a, big_salary_dept_avg
WHERE salary > big_depts_avg_salary
ORDER BY last_name
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
salary
</th>
<th>
big_depts_avg_salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
Abel
</td>
<td>
11000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Baer
</td>
<td>
10000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Bloom
</td>
<td>
10000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
11000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
De Haan
</td>
<td>
17000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
12000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
12008.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
13000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
12008.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
King
</td>
<td>
24000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
King
</td>
<td>
10000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Kochhar
</td>
<td>
17000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
11500.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
13500.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
11000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
14000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Tucker
</td>
<td>
10000.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
10500.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
10500.0
</td>
<td>
9654.5
</td>
</tr>
<tr>
<td colspan="3" style="text-align: left;">
Total Rows: 19, Total Columns: 3
</td>
</tr>
</tbody>
</table>

</div>

</div>

## CTE Example \#4

*List employees and their manager_id using a recursive CTE*

<div class="columns">

<div class="column" width="54%">

### SQL Code

``` sql

WITH RECURSIVE employee_hierarchy AS (
    SELECT employee_id, manager_id, last_name, 1 AS level_id
    FROM employees
    WHERE manager_id IS NULL  -- Starting point (top-level manager)
    UNION ALL
    SELECT e.employee_id, e.manager_id, e.last_name, eh.level_id + 1
    FROM employees AS e
    INNER JOIN employee_hierarchy AS eh ON e.manager_id = eh.employee_id
)
SELECT * 
FROM employee_hierarchy
ORDER BY level_id;
```

</div>

<div class="column" width="1%">

<p>
 
</p>

</div>

<div class="column" width="45%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
employee_id
</th>
<th>
manager_id
</th>
<th>
last_name
</th>
<th>
level_id
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
100
</td>
<td>
NULL
</td>
<td>
King
</td>
<td>
1
</td>
</tr>
<tr>
<td>
101
</td>
<td>
100.0
</td>
<td>
Kochhar
</td>
<td>
2
</td>
</tr>
<tr>
<td>
102
</td>
<td>
100.0
</td>
<td>
De Haan
</td>
<td>
2
</td>
</tr>
<tr>
<td>
114
</td>
<td>
100.0
</td>
<td>
Raphaely
</td>
<td>
2
</td>
</tr>
<tr>
<td>
120
</td>
<td>
100.0
</td>
<td>
Weiss
</td>
<td>
2
</td>
</tr>
<tr>
<td>
121
</td>
<td>
100.0
</td>
<td>
Fripp
</td>
<td>
2
</td>
</tr>
<tr>
<td>
122
</td>
<td>
100.0
</td>
<td>
Kaufling
</td>
<td>
2
</td>
</tr>
<tr>
<td>
123
</td>
<td>
100.0
</td>
<td>
Vollman
</td>
<td>
2
</td>
</tr>
<tr>
<td>
124
</td>
<td>
100.0
</td>
<td>
Mourgos
</td>
<td>
2
</td>
</tr>
<tr>
<td>
145
</td>
<td>
100.0
</td>
<td>
Russell
</td>
<td>
2
</td>
</tr>
<tr>
<td>
146
</td>
<td>
100.0
</td>
<td>
Partners
</td>
<td>
2
</td>
</tr>
<tr>
<td>
147
</td>
<td>
100.0
</td>
<td>
Errazuriz
</td>
<td>
2
</td>
</tr>
<tr>
<td>
148
</td>
<td>
100.0
</td>
<td>
Cambrault
</td>
<td>
2
</td>
</tr>
<tr>
<td>
149
</td>
<td>
100.0
</td>
<td>
Zlotkey
</td>
<td>
2
</td>
</tr>
<tr>
<td>
201
</td>
<td>
100.0
</td>
<td>
Hartstein
</td>
<td>
2
</td>
</tr>
<tr>
<td>
103
</td>
<td>
102.0
</td>
<td>
Hunold
</td>
<td>
3
</td>
</tr>
<tr>
<td>
108
</td>
<td>
101.0
</td>
<td>
Greenberg
</td>
<td>
3
</td>
</tr>
<tr>
<td>
115
</td>
<td>
114.0
</td>
<td>
Khoo
</td>
<td>
3
</td>
</tr>
<tr>
<td>
116
</td>
<td>
114.0
</td>
<td>
Baida
</td>
<td>
3
</td>
</tr>
<tr>
<td>
117
</td>
<td>
114.0
</td>
<td>
Tobias
</td>
<td>
3
</td>
</tr>
<tr>
<td>
118
</td>
<td>
114.0
</td>
<td>
Himuro
</td>
<td>
3
</td>
</tr>
<tr>
<td>
119
</td>
<td>
114.0
</td>
<td>
Colmenares
</td>
<td>
3
</td>
</tr>
<tr>
<td>
125
</td>
<td>
120.0
</td>
<td>
Nayer
</td>
<td>
3
</td>
</tr>
<tr>
<td>
126
</td>
<td>
120.0
</td>
<td>
Mikkilineni
</td>
<td>
3
</td>
</tr>
<tr>
<td>
127
</td>
<td>
120.0
</td>
<td>
Landry
</td>
<td>
3
</td>
</tr>
<tr>
<td>
128
</td>
<td>
120.0
</td>
<td>
Markle
</td>
<td>
3
</td>
</tr>
<tr>
<td>
129
</td>
<td>
121.0
</td>
<td>
Bissot
</td>
<td>
3
</td>
</tr>
<tr>
<td>
130
</td>
<td>
121.0
</td>
<td>
Atkinson
</td>
<td>
3
</td>
</tr>
<tr>
<td>
131
</td>
<td>
121.0
</td>
<td>
Marlow
</td>
<td>
3
</td>
</tr>
<tr>
<td>
132
</td>
<td>
121.0
</td>
<td>
Olson
</td>
<td>
3
</td>
</tr>
<tr>
<td>
133
</td>
<td>
122.0
</td>
<td>
Mallin
</td>
<td>
3
</td>
</tr>
<tr>
<td>
134
</td>
<td>
122.0
</td>
<td>
Rogers
</td>
<td>
3
</td>
</tr>
<tr>
<td>
135
</td>
<td>
122.0
</td>
<td>
Gee
</td>
<td>
3
</td>
</tr>
<tr>
<td>
136
</td>
<td>
122.0
</td>
<td>
Philtanker
</td>
<td>
3
</td>
</tr>
<tr>
<td>
137
</td>
<td>
123.0
</td>
<td>
Ladwig
</td>
<td>
3
</td>
</tr>
<tr>
<td>
138
</td>
<td>
123.0
</td>
<td>
Stiles
</td>
<td>
3
</td>
</tr>
<tr>
<td>
139
</td>
<td>
123.0
</td>
<td>
Seo
</td>
<td>
3
</td>
</tr>
<tr>
<td>
140
</td>
<td>
123.0
</td>
<td>
Patel
</td>
<td>
3
</td>
</tr>
<tr>
<td>
141
</td>
<td>
124.0
</td>
<td>
Rajs
</td>
<td>
3
</td>
</tr>
<tr>
<td>
142
</td>
<td>
124.0
</td>
<td>
Davies
</td>
<td>
3
</td>
</tr>
<tr>
<td>
143
</td>
<td>
124.0
</td>
<td>
Matos
</td>
<td>
3
</td>
</tr>
<tr>
<td>
144
</td>
<td>
124.0
</td>
<td>
Vargas
</td>
<td>
3
</td>
</tr>
<tr>
<td>
150
</td>
<td>
145.0
</td>
<td>
Tucker
</td>
<td>
3
</td>
</tr>
<tr>
<td>
151
</td>
<td>
145.0
</td>
<td>
Bernstein
</td>
<td>
3
</td>
</tr>
<tr>
<td>
152
</td>
<td>
145.0
</td>
<td>
Hall
</td>
<td>
3
</td>
</tr>
<tr>
<td>
153
</td>
<td>
145.0
</td>
<td>
Olsen
</td>
<td>
3
</td>
</tr>
<tr>
<td>
154
</td>
<td>
145.0
</td>
<td>
Cambrault
</td>
<td>
3
</td>
</tr>
<tr>
<td>
155
</td>
<td>
145.0
</td>
<td>
Tuvault
</td>
<td>
3
</td>
</tr>
<tr>
<td>
156
</td>
<td>
146.0
</td>
<td>
King
</td>
<td>
3
</td>
</tr>
<tr>
<td>
157
</td>
<td>
146.0
</td>
<td>
Sully
</td>
<td>
3
</td>
</tr>
<tr>
<td>
158
</td>
<td>
146.0
</td>
<td>
McEwen
</td>
<td>
3
</td>
</tr>
<tr>
<td>
159
</td>
<td>
146.0
</td>
<td>
Smith
</td>
<td>
3
</td>
</tr>
<tr>
<td>
160
</td>
<td>
146.0
</td>
<td>
Doran
</td>
<td>
3
</td>
</tr>
<tr>
<td>
161
</td>
<td>
146.0
</td>
<td>
Sewall
</td>
<td>
3
</td>
</tr>
<tr>
<td>
162
</td>
<td>
147.0
</td>
<td>
Vishney
</td>
<td>
3
</td>
</tr>
<tr>
<td>
163
</td>
<td>
147.0
</td>
<td>
Greene
</td>
<td>
3
</td>
</tr>
<tr>
<td>
164
</td>
<td>
147.0
</td>
<td>
Marvins
</td>
<td>
3
</td>
</tr>
<tr>
<td>
165
</td>
<td>
147.0
</td>
<td>
Lee
</td>
<td>
3
</td>
</tr>
<tr>
<td>
166
</td>
<td>
147.0
</td>
<td>
Ande
</td>
<td>
3
</td>
</tr>
<tr>
<td>
167
</td>
<td>
147.0
</td>
<td>
Banda
</td>
<td>
3
</td>
</tr>
<tr>
<td>
168
</td>
<td>
148.0
</td>
<td>
Ozer
</td>
<td>
3
</td>
</tr>
<tr>
<td>
169
</td>
<td>
148.0
</td>
<td>
Bloom
</td>
<td>
3
</td>
</tr>
<tr>
<td>
170
</td>
<td>
148.0
</td>
<td>
Fox
</td>
<td>
3
</td>
</tr>
<tr>
<td>
171
</td>
<td>
148.0
</td>
<td>
Smith
</td>
<td>
3
</td>
</tr>
<tr>
<td>
172
</td>
<td>
148.0
</td>
<td>
Bates
</td>
<td>
3
</td>
</tr>
<tr>
<td>
173
</td>
<td>
148.0
</td>
<td>
Kumar
</td>
<td>
3
</td>
</tr>
<tr>
<td>
174
</td>
<td>
149.0
</td>
<td>
Abel
</td>
<td>
3
</td>
</tr>
<tr>
<td>
175
</td>
<td>
149.0
</td>
<td>
Hutton
</td>
<td>
3
</td>
</tr>
<tr>
<td>
176
</td>
<td>
149.0
</td>
<td>
Taylor
</td>
<td>
3
</td>
</tr>
<tr>
<td>
177
</td>
<td>
149.0
</td>
<td>
Livingston
</td>
<td>
3
</td>
</tr>
<tr>
<td>
178
</td>
<td>
149.0
</td>
<td>
Grant
</td>
<td>
3
</td>
</tr>
<tr>
<td>
179
</td>
<td>
149.0
</td>
<td>
Johnson
</td>
<td>
3
</td>
</tr>
<tr>
<td>
180
</td>
<td>
120.0
</td>
<td>
Taylor
</td>
<td>
3
</td>
</tr>
<tr>
<td>
181
</td>
<td>
120.0
</td>
<td>
Fleaur
</td>
<td>
3
</td>
</tr>
<tr>
<td>
182
</td>
<td>
120.0
</td>
<td>
Sullivan
</td>
<td>
3
</td>
</tr>
<tr>
<td>
183
</td>
<td>
120.0
</td>
<td>
Geoni
</td>
<td>
3
</td>
</tr>
<tr>
<td>
184
</td>
<td>
121.0
</td>
<td>
Sarchand
</td>
<td>
3
</td>
</tr>
<tr>
<td>
185
</td>
<td>
121.0
</td>
<td>
Bull
</td>
<td>
3
</td>
</tr>
<tr>
<td>
186
</td>
<td>
121.0
</td>
<td>
Dellinger
</td>
<td>
3
</td>
</tr>
<tr>
<td>
187
</td>
<td>
121.0
</td>
<td>
Cabrio
</td>
<td>
3
</td>
</tr>
<tr>
<td>
188
</td>
<td>
122.0
</td>
<td>
Chung
</td>
<td>
3
</td>
</tr>
<tr>
<td>
189
</td>
<td>
122.0
</td>
<td>
Dilly
</td>
<td>
3
</td>
</tr>
<tr>
<td>
190
</td>
<td>
122.0
</td>
<td>
Gates
</td>
<td>
3
</td>
</tr>
<tr>
<td>
191
</td>
<td>
122.0
</td>
<td>
Perkins
</td>
<td>
3
</td>
</tr>
<tr>
<td>
192
</td>
<td>
123.0
</td>
<td>
Bell
</td>
<td>
3
</td>
</tr>
<tr>
<td>
193
</td>
<td>
123.0
</td>
<td>
Everett
</td>
<td>
3
</td>
</tr>
<tr>
<td>
194
</td>
<td>
123.0
</td>
<td>
McCain
</td>
<td>
3
</td>
</tr>
<tr>
<td>
195
</td>
<td>
123.0
</td>
<td>
Jones
</td>
<td>
3
</td>
</tr>
<tr>
<td>
196
</td>
<td>
124.0
</td>
<td>
Walsh
</td>
<td>
3
</td>
</tr>
<tr>
<td>
197
</td>
<td>
124.0
</td>
<td>
Feeney
</td>
<td>
3
</td>
</tr>
<tr>
<td>
198
</td>
<td>
124.0
</td>
<td>
OConnell
</td>
<td>
3
</td>
</tr>
<tr>
<td>
199
</td>
<td>
124.0
</td>
<td>
Grant
</td>
<td>
3
</td>
</tr>
<tr>
<td>
200
</td>
<td>
101.0
</td>
<td>
Whalen
</td>
<td>
3
</td>
</tr>
<tr>
<td>
202
</td>
<td>
201.0
</td>
<td>
Fay
</td>
<td>
3
</td>
</tr>
<tr>
<td>
203
</td>
<td>
101.0
</td>
<td>
Mavris
</td>
<td>
3
</td>
</tr>
<tr>
<td>
204
</td>
<td>
101.0
</td>
<td>
Baer
</td>
<td>
3
</td>
</tr>
<tr>
<td>
205
</td>
<td>
101.0
</td>
<td>
Higgins
</td>
<td>
3
</td>
</tr>
<tr>
<td>
104
</td>
<td>
103.0
</td>
<td>
Ernst
</td>
<td>
4
</td>
</tr>
<tr>
<td>
105
</td>
<td>
103.0
</td>
<td>
Austin
</td>
<td>
4
</td>
</tr>
<tr>
<td>
106
</td>
<td>
103.0
</td>
<td>
Pataballa
</td>
<td>
4
</td>
</tr>
<tr>
<td>
107
</td>
<td>
103.0
</td>
<td>
Lorentz
</td>
<td>
4
</td>
</tr>
<tr>
<td>
109
</td>
<td>
108.0
</td>
<td>
Faviet
</td>
<td>
4
</td>
</tr>
<tr>
<td>
110
</td>
<td>
108.0
</td>
<td>
Chen
</td>
<td>
4
</td>
</tr>
<tr>
<td>
111
</td>
<td>
108.0
</td>
<td>
Sciarra
</td>
<td>
4
</td>
</tr>
<tr>
<td>
112
</td>
<td>
108.0
</td>
<td>
Urman
</td>
<td>
4
</td>
</tr>
<tr>
<td>
113
</td>
<td>
108.0
</td>
<td>
Popp
</td>
<td>
4
</td>
</tr>
<tr>
<td>
206
</td>
<td>
205.0
</td>
<td>
Gietz
</td>
<td>
4
</td>
</tr>
</tbody>
</table>

</div>

</div>

## CTE Example \#5

*List the average salaries for each managerial level in the company*

<div class="columns">

<div class="column" width="60%">

### SQL Code

``` sql

WITH RECURSIVE employee_hierarchy AS (
    SELECT employee_id, manager_id, last_name, salary, 1 AS "Level ID"
    FROM employees
    WHERE manager_id IS NULL  -- Starting point (top-level manager)
    UNION ALL
    SELECT e.employee_id, e.manager_id, e.last_name, e.salary, eh.`Level ID` + 1
    FROM employees AS e
    INNER JOIN employee_hierarchy AS eh ON e.manager_id = eh.employee_id
), eh1 as (
SELECT `Level ID`,round(avg(salary),2) as "Avg Salary"
FROM employee_hierarchy
GROUP BY `Level ID`
)
select * from eh1 order by `Level ID`
```

</div>

<div class="column" width="2%">

<p>
 
</p>

</div>

<div class="column" width="38%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
Level ID
</th>
<th>
Avg Salary
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
1
</td>
<td>
24000.00
</td>
</tr>
<tr>
<td>
2
</td>
<td>
11100.00
</td>
</tr>
<tr>
<td>
3
</td>
<td>
5418.49
</td>
</tr>
<tr>
<td>
4
</td>
<td>
6770.00
</td>
</tr>
</tbody>
</table>

</div>

</div>

## CTE Example \#6

*List employeee, managerial levels, salaries, flagging those employees
with lower than average salaries for their managerial level.*

<div style="font-size: 0.8em;">

<div class="columns">

<div class="column" width="50%">

### SQL Code

``` sql

WITH RECURSIVE employee_hierarchy AS (
    SELECT employee_id, manager_id, last_name, salary, 1 AS "Level ID"
    FROM employees
    WHERE manager_id IS NULL  -- Starting point (top-level manager)
    UNION ALL
    SELECT e.employee_id, e.manager_id, e.last_name, e.salary, eh.`Level ID` + 1
    FROM employees AS e
    INNER JOIN employee_hierarchy AS eh ON e.manager_id = eh.employee_id
), eh1 as (
SELECT `Level ID`,round(avg(salary),2) as "Avg Salary"
FROM employee_hierarchy
GROUP BY `Level ID`
)
select
  last_name, eh0.`Level ID`, 
  round(salary,2) as salary, `Avg Salary`,
  case when salary < `Avg Salary` then '<-- LOW!' else '' end as flag
from
  employee_hierarchy eh0 
    left join eh1 eh1 on (eh0.`Level ID`=eh1.`Level ID`)
order by
  eh0.`Level ID`, last_name
```

</div>

<div class="column" width="2%">

<p>
 
</p>

</div>

<div class="column" width="48%">

### Result set

<table border="1" class="dataframe">
<thead>
<tr style="text-align: center;">
<th>
last_name
</th>
<th>
Level ID
</th>
<th>
salary
</th>
<th>
Avg Salary
</th>
<th>
flag
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
King
</td>
<td>
1
</td>
<td>
24000.0
</td>
<td>
24000.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
2
</td>
<td>
11000.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
De Haan
</td>
<td>
2
</td>
<td>
17000.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Errazuriz
</td>
<td>
2
</td>
<td>
12000.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Fripp
</td>
<td>
2
</td>
<td>
8200.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Hartstein
</td>
<td>
2
</td>
<td>
13000.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Kaufling
</td>
<td>
2
</td>
<td>
7900.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Kochhar
</td>
<td>
2
</td>
<td>
17000.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Mourgos
</td>
<td>
2
</td>
<td>
5800.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Partners
</td>
<td>
2
</td>
<td>
13500.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Raphaely
</td>
<td>
2
</td>
<td>
11000.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Russell
</td>
<td>
2
</td>
<td>
14000.0
</td>
<td>
11100.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Vollman
</td>
<td>
2
</td>
<td>
6500.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Weiss
</td>
<td>
2
</td>
<td>
8000.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Zlotkey
</td>
<td>
2
</td>
<td>
10500.0
</td>
<td>
11100.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Abel
</td>
<td>
3
</td>
<td>
11000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Ande
</td>
<td>
3
</td>
<td>
6400.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Atkinson
</td>
<td>
3
</td>
<td>
2800.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Baer
</td>
<td>
3
</td>
<td>
10000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Baida
</td>
<td>
3
</td>
<td>
2900.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Banda
</td>
<td>
3
</td>
<td>
6200.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Bates
</td>
<td>
3
</td>
<td>
7300.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Bell
</td>
<td>
3
</td>
<td>
4000.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Bernstein
</td>
<td>
3
</td>
<td>
9500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Bissot
</td>
<td>
3
</td>
<td>
3300.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Bloom
</td>
<td>
3
</td>
<td>
10000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Bull
</td>
<td>
3
</td>
<td>
4100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Cabrio
</td>
<td>
3
</td>
<td>
3000.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Cambrault
</td>
<td>
3
</td>
<td>
7500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Chung
</td>
<td>
3
</td>
<td>
3800.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Colmenares
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Davies
</td>
<td>
3
</td>
<td>
3100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Dellinger
</td>
<td>
3
</td>
<td>
3400.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Dilly
</td>
<td>
3
</td>
<td>
3600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Doran
</td>
<td>
3
</td>
<td>
7500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Everett
</td>
<td>
3
</td>
<td>
3900.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Fay
</td>
<td>
3
</td>
<td>
6000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Feeney
</td>
<td>
3
</td>
<td>
3000.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Fleaur
</td>
<td>
3
</td>
<td>
3100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Fox
</td>
<td>
3
</td>
<td>
9600.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Gates
</td>
<td>
3
</td>
<td>
2900.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Gee
</td>
<td>
3
</td>
<td>
2400.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Geoni
</td>
<td>
3
</td>
<td>
2800.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Grant
</td>
<td>
3
</td>
<td>
7000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Grant
</td>
<td>
3
</td>
<td>
2600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Greenberg
</td>
<td>
3
</td>
<td>
12008.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Greene
</td>
<td>
3
</td>
<td>
9500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Hall
</td>
<td>
3
</td>
<td>
9000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Higgins
</td>
<td>
3
</td>
<td>
12008.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Himuro
</td>
<td>
3
</td>
<td>
2600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Hunold
</td>
<td>
3
</td>
<td>
9000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Hutton
</td>
<td>
3
</td>
<td>
8800.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Johnson
</td>
<td>
3
</td>
<td>
6200.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Jones
</td>
<td>
3
</td>
<td>
2800.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Khoo
</td>
<td>
3
</td>
<td>
3100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
King
</td>
<td>
3
</td>
<td>
10000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Kumar
</td>
<td>
3
</td>
<td>
6100.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Ladwig
</td>
<td>
3
</td>
<td>
3600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Landry
</td>
<td>
3
</td>
<td>
2400.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Lee
</td>
<td>
3
</td>
<td>
6800.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Livingston
</td>
<td>
3
</td>
<td>
8400.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Mallin
</td>
<td>
3
</td>
<td>
3300.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Markle
</td>
<td>
3
</td>
<td>
2200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Marlow
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Marvins
</td>
<td>
3
</td>
<td>
7200.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Matos
</td>
<td>
3
</td>
<td>
2600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Mavris
</td>
<td>
3
</td>
<td>
6500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
McCain
</td>
<td>
3
</td>
<td>
3200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
McEwen
</td>
<td>
3
</td>
<td>
9000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Mikkilineni
</td>
<td>
3
</td>
<td>
2700.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Nayer
</td>
<td>
3
</td>
<td>
3200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
OConnell
</td>
<td>
3
</td>
<td>
2600.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Olsen
</td>
<td>
3
</td>
<td>
8000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Olson
</td>
<td>
3
</td>
<td>
2100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Ozer
</td>
<td>
3
</td>
<td>
11500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Patel
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Perkins
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Philtanker
</td>
<td>
3
</td>
<td>
2200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Rajs
</td>
<td>
3
</td>
<td>
3500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Rogers
</td>
<td>
3
</td>
<td>
2900.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Sarchand
</td>
<td>
3
</td>
<td>
4200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Seo
</td>
<td>
3
</td>
<td>
2700.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Sewall
</td>
<td>
3
</td>
<td>
7000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Smith
</td>
<td>
3
</td>
<td>
7400.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Smith
</td>
<td>
3
</td>
<td>
8000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Stiles
</td>
<td>
3
</td>
<td>
3200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Sullivan
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Sully
</td>
<td>
3
</td>
<td>
9500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Taylor
</td>
<td>
3
</td>
<td>
3200.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Taylor
</td>
<td>
3
</td>
<td>
8600.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Tobias
</td>
<td>
3
</td>
<td>
2800.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Tucker
</td>
<td>
3
</td>
<td>
10000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Tuvault
</td>
<td>
3
</td>
<td>
7000.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Vargas
</td>
<td>
3
</td>
<td>
2500.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Vishney
</td>
<td>
3
</td>
<td>
10500.0
</td>
<td>
5418.49
</td>
<td>
</td>
</tr>
<tr>
<td>
Walsh
</td>
<td>
3
</td>
<td>
3100.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Whalen
</td>
<td>
3
</td>
<td>
4400.0
</td>
<td>
5418.49
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Austin
</td>
<td>
4
</td>
<td>
4800.0
</td>
<td>
6770.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Chen
</td>
<td>
4
</td>
<td>
8200.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Ernst
</td>
<td>
4
</td>
<td>
6000.0
</td>
<td>
6770.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Faviet
</td>
<td>
4
</td>
<td>
9000.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Gietz
</td>
<td>
4
</td>
<td>
8300.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Lorentz
</td>
<td>
4
</td>
<td>
4200.0
</td>
<td>
6770.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Pataballa
</td>
<td>
4
</td>
<td>
4800.0
</td>
<td>
6770.00
</td>
<td>
\<– LOW!
</td>
</tr>
<tr>
<td>
Popp
</td>
<td>
4
</td>
<td>
6900.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Sciarra
</td>
<td>
4
</td>
<td>
7700.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td>
Urman
</td>
<td>
4
</td>
<td>
7800.0
</td>
<td>
6770.00
</td>
<td>
</td>
</tr>
<tr>
<td colspan="5" style="text-align: left;">
Total Rows: 107, Total Columns: 5
</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

# Homework 8 discussion

## Homework 8 discussion

<div class="columns">

<div class="column" width="60%">

<a
href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
target="_blank"><img src="./assets/homework8-page.png" /></a>

</div>

<div class="column" width="40%">

### Learning Objectives

- A full exploration of `SELECT`

- A full exploration of subqueries and CTEs

- Introduction to data analysis

### Data Source

- <a href="https://data.worldbank.org/indicator" target="_blank">World
  Bank Indicators</a>

</div>

</div>

<center>
We’ll jump to the command line to get the project started!
</center>

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- CMSC 427 - User Interfaces - Spring 2025

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
  target="_blank">Homework 8 - due 11/17</a>

- Keep working on your semester project!!!

</div>

<div class="column" width="40%">

### Lecture topics

- [Subqueries](#subqueries)

- [Common Table Expressions](#common-table-expressions-cte)

- [Homework 8 discussion](#homework-8-discussion)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| SQL | 13 | 11/13 | Wed | MTG24: L24 (Subqueries and WITH 1) |  |
| SQL | 13 | 11/15 | Fri |  | PrjDel 11 due (Team reflection) |
| SQL | 13 | 11/17 | Sun |  | HW8 due (SQL Funhouse) |
| Adv. SQL | 14 | 11/18 | Mon | MTG25: L25 (Subqueries and WITH 2) |  |
| Adv. SQL | 14 | 11/20 | Wed | MTG26: L26 (Procedures and Triggers 1) |  |
| (break) | 15 | 11/25 | Mon |  | Fall break (11/25-11/29) |
| Adv. SQL | 16 | 12/2 | Mon | MTG27: L27 (Procedures and Triggers 2) |  |
| Adv. SQL | 16 | 12/4 | Wed | MTG28: L28 (Misc. Topics) |  |

</div>
