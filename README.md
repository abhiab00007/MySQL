# MySQL

## 1.DDL,DML
DDL and DML command like CREATE, ALTER, DROP, RENAME, TRUNCATE and SELECT, INSERT, UPDATE, DELETE are used to 
- create, edit, display, rename and delete tables
- enter values into tables
- add, rename and delete columns
- delete rows

## 2.DDL Constraints

Steps Performed:

- Create Database and Table
- Column order_quantity added to the Orders table using ALTER TABLE
- Renamed Orders to sales_orders using RENAME TABLE
- 10 rows inserted into the sales_orders table using INSERT INTO 'tablename' VALUES
- Used SELECT to fetch customer_name and Ordered_item.
- Changed the Ordered_item for a specific Order_Id using UPDATE.
- Dropped the sales_orders table using DROP TABLE.

Constraints Used:
- Primary Key to ensures uniqueness for Order_id
- Unique Prevents duplicate entries.
- Not Null ensures mandatory fields 
