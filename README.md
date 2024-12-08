# MySQL

## Assignment1.DDL,DML

DDL and DML command like CREATE, ALTER, DROP, RENAME, TRUNCATE and SELECT, INSERT, UPDATE, DELETE are used to 
- create, edit, display, rename and delete tables
- enter values into tables
- add, rename and delete columns
- delete rows

## Assignment2.DDL Constraints

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

##Assignment3.DML Commands(2)

Steps Performed:

- Created the Managers Table with the following structure:
Manager_Id: Auto incremented Primary Key to ensure unique identification for each manager,
First_name and Last_name,
DOB,
Age: Restricted to values between 18 and 40 using a CHECK constraint.
Last_update: Tracks the last modification timestamp with DEFAULT CURRENT_TIMESTAMP.
Gender: Restricted to 'M', 'F', or 'O' using a CHECK constraint.
Department,
Salary: Non-nullable to ensure mandatory salary input.
- 10 records were inserted into the Managers table using the INSERT INTO command, adhering to the defined constraints.

 Queries Executed:
 
- Retrieve Manager Details:
Displayed the First_name, Last_name, and DOB of the manager with Manager_Id = 1.
- Calculate Annual Income:
Computed the annual income of all managers (Salary * 12) and displayed it.
- Exclude Specific Manager:
Fetched records of all managers except the one named 'Aaliya'.
- Filter Managers by Criteria:
Displayed details of managers in the IT department earning more than 25000.
Displayed details of managers whose salary is between 10000 and 35000.
