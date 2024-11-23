# creating and using database sales
create database sales;
use sales;
#creating table orders
create table orders(
order_id int auto_increment not null primary key unique ,
customer_name varchar(50) not null,
product_category varchar(50) not null,
ordered_item varchar(50) not null,
contact_no int not null);
# adding new column order_quantity
alter table orders
add order_quantity int not null;
# renaming orders table to sales_orders
rename table orders to sales_orders;
#inserting 10 rows into the table:
insert into sales_orders
values
(1,'mark','electronics','mobile',1234567890,1),
(2,'ann','electronics','laptop',1256789234,2),
(3,'jane','automobiles','car',1936246933,1),
(4,'jake','automobiles','car',1272538903,1),
(5,'john','textiles','skirt',1752427392,3),
(6, 'susan', 'electronics', 'tablet', 1876543210, 1),
(7, 'lisa','furniture','sofa', 1567891234,3),
(8, 'paul', 'furniture', 'table', 1531594862,3),
(9, 'steve', 'automobiles', 'bike', 1527419635, 1),
(10, 'emma', 'textiles', 'jacket', 1513574680,7);
# retrieving customer_name and ordered_item from the table
SELECT customer_name, ordered_item
FROM sales_orders;
# changing the name of the product 'bike' to 'truck' using update command
update sales_orders
set ordered_item = 'truck'
where ordered_item = 'bike';
select * from sales_orders;
# deleting sales_orders table from the database
drop table sales_orders;