# MySQL

## Assignment1.DDL,DML

DDL and DML command like CREATE, ALTER, DROP, RENAME, TRUNCATE and SELECT, INSERT, UPDATE, DELETE are used to 
- create, edit, display, rename and delete tables
- enter values into tables
- add, rename and delete columns
- delete rows

## Assignment2.DDL Constraints

#### Steps Performed:
- Create Database and Table
- Column order_quantity added to the Orders table using ALTER TABLE
- Renamed Orders to sales_orders using RENAME TABLE
- 10 rows inserted into the sales_orders table using INSERT INTO 'tablename' VALUES
- Used SELECT to fetch customer_name and Ordered_item.
- Changed the Ordered_item for a specific Order_Id using UPDATE.
- Dropped the sales_orders table using DROP TABLE.

#### Constraints Used:
- Primary Key to ensures uniqueness for Order_id
- Unique Prevents duplicate entries.
- Not Null ensures mandatory fields 

## Assignment3.DML Commands(2)

#### Steps Performed:

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

#### Queries Executed:
 
- Retrieve Manager Details
Displayed the First_name, Last_name, and DOB of the manager with Manager_Id = 1 using the SELECT command and WHERE clause:.
- Calculate Annual Income:
Computed the annual income of all managers (Salary * 12) and displayed it using the SELECT command with an arithmetic operation:.
- Exclude Specific Manager:
Fetched records of all managers except the one named 'Aaliya' using the SELECT command with the <> operator.
- Filter Managers by Criteria:
Displayed details of managers in the IT department earning more than 25000 using the SELECT command with AND conditions.  
Displayed details of managers whose salary is between 10000 and 35000  using the BETWEEN operator.

## Assignment4.Querying data

### Steps performed:

- Create Tables

1)Country Table: The country table was created with the following structure:  
id:Auto incremented primary key to ensure unique identification for each country.  
country_name:Name of the country.    
population:Population of the country.  
area:Area of the country.  

2)Persons Table: The persons table was created with the following structure:
id: Auto incremented primary key to ensure unique identification for each person.  
fname and lname: First and last names of individuals.   
population: Population associated with the person’s country.   
rating: Rating of the person.     
country_id: Foreign key linking the person to the country table.     
country_name: Name of the associated country.    

- Insert data

Country Table: 10 records were inserted into the country table using the INSERT INTO command.    
Persons Table: 10 records were inserted into the persons table using the INSERT INTO command.

### Queries Executed

- List Distinct Country Names    
Displayed distinct country names by using the distinct function from the persons table     
- Use Aliases for Columns     
Displayed first names and last names by using aliases with the as keyword for better readability     
- Filter by Rating    
Fetched all persons with a rating greater than 4.0 by using the comparison operator > and the where clause     
- Filter Countries by Population    
Displayed countries with a population greater than 10 lakhs by using the comparison operator >    
- Filter by Multiple Conditions    
Fetched persons who are from 'USA' or have a rating greater than 4.5 by using logical operators    
- Check for Null Country Names    
Fetched all persons where the country name is NULL by using the is null function     
- Filter by Specific Countries    
Displayed all persons from the countries 'USA', 'Canada', and 'UK' by using the in function     
- Exclude Specific Countries    
Displayed all persons not from the countries 'India' and 'Australia' by using the not in function    
- Filter Countries by Population Range     
Displayed countries with a population between 5 lakhs and 20 lakhs by using the between function     
- Filter by Country Name Prefix    
Fetched all countries whose names do not start with 'C' by using the not like function

## Assignment5.Sorting and grouping data

### Steps performed:

- Create Tables        
1)Country Table: The country table was created with the following structure:        
id: Auto incremented primary key to ensure unique identification for each country.     
country_name: Name of the country.     
population: Population of the country.         
area: Area of the country in square kilometers.   
2)Persons Table: The persons table was created with the following structure:      
id: Auto incremented primary key to ensure unique identification for each person.     
fname and lname: First and last names of individuals.      
population: Population associated with the person’s country.      
rating: Rating of the person.     
country_id: Foreign key linking the person to the country table.    
country_name: Name of the associated country.      

- Insert Data      
Country Table: 10 records were inserted into the country table using the INSERT INTO command.       
Persons Table: 10 records were inserted into the persons table using the INSERT INTO command.

### Queries Executed

- List Distinct Country Names        
Displayed distinct country names by using the distinct function from the persons table.
- Use Aliases for Columns          
Displayed the concatenated first name and last name of persons using aliases with the AS keyword for better readability.
- Find the Maximum Population in Country Table     
Retrieved the maximum population from the country table using the max() function.  
- Find the Minimum Population in Persons Table    
Retrieved the minimum population from the persons table using the min() function.
- Count Non-null Last Names     
Counted the number of non-null lname entries in the persons table using the count() function.
- Find the Total Number of Rows in Persons Table     
Retrieved the total number of rows in the persons table using the count(*) function.
- Show the Population from the First 3 Countries     
Displayed the population for the first 3 rows in the country table using the limit clause.
- Show Random Countries     
Retrieved 3 random countries from the country table using the rand() function and limit clause.
- Order Persons by Rating      
Displayed all persons ordered by their rating in descending order using the order by clause.
- Find Total Population per Country in Persons Table      
Retrieved the total population for each country in the persons table by using the group by clause and sum() function.
- Find Countries with Total Population Greater than 50,000       
Retrieved countries with a total population greater than 50,000 in the persons table using the having clause.
- List Countries with More than 2 Persons, Ordered by Average Rating        
Displayed the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order using group by, having, and order by clauses.
