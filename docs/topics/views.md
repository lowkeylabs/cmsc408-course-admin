# Views


# VIEWS in SQL

## VIEWS in SQL

<div class="columns">

<div class="column">

### What is a VIEW?

- A View is a virtual table in SQL.
- It does not store data itself but retrieves data from one or more
  underlying tables.

### Why Use VIEWS?

- Simplify complex queries.
- Provide an abstraction layer for security.
- Hide the complexity of underlying database schema.
- Very useful with API development

</div>

<div class="column">

![](./assets/sql-view.jpg)

</div>

</div>

## VIEWS - Creating a VIEW

<div class="columns">

<div class="column">

### Syntax

``` sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

- CREATE VIEW is a DDL statement
- VIEWS should be defined in same DDL file that creates your database
- VIEWS should be designed with API to simplify API queries.

</div>

<div class="column">

### Example

``` sql
CREATE VIEW customer_orders AS
  SELECT 
    customers.customer_name, orders.order_date
  FROM
    customers
    JOIN orders ON 
    customers.customer_id = orders.customer_id;
```

</div>

</div>

## VIEWS in SQL: Benefits and Considerations

<div class="columns">

<div class="column">

### Other DDL commands

- CREATE VIEW
- DROP VIEW
- CREATE OR REPLACE VIEW

### Benefits of Views

- Data abstraction and security.
- Reusability of complex queries.
- Performance optimization by precomputing results.

</div>

<div class="column">

### Considerations

- Views can hide underlying schema complexity, but overuse can lead to
  confusion.
- Views may impact query performance if they involve complex operations
  or large datasets.
- Views are NOT tables, they are reevaluated every time they’re called.
- Views are NOT a substitute for a well-structured WITH query.
- WARNING - changes in underlying tables can affect view results.

</div>

</div>
