create database countries;
use countries;

create table country (
    id int primary key auto_increment,
    country_name varchar(50),
    population bigint,
    area decimal(10, 2)
);

insert into country (country_name, population, area) values
('USA', 331000000, 9834000),
('Canada', 38000000, 9985000),
('UK', 67000000, 243610),
('India', 1390000000, 3287000),
('Australia', 26000000, 7692000),
('Germany', 83000000, 357580),
('France', 67000000, 551695),
('Japan', 126000000, 377975),
('China', 1440000000, 9597000),
('Brazil', 212000000, 8516000);

create table persons (
    id int primary key auto_increment,
    fname varchar(50),
    lname varchar(50),
    population bigint,
    rating decimal(2,1),
    country_id int,
    country_name varchar(50),
    foreign key (country_id) references country(id)
);

insert into persons (fname, lname, population, rating, country_id, country_name) values
('John', 'Smith', 331000000, 4.5, 1, 'USA'),
('Aaliya', 'Khan', 1390000000, 4.8, 4, 'India'),
('David', 'Brown', 38000000, 3.9, 2, 'Canada'),
('Sarah', 'Miller', 67000000, 4.1, 3, 'UK'),
('Michael', 'Lee', 26000000, 3.5, 5, 'Australia'),
('Sophia', 'Taylor', 67000000, 4.7, 3, 'UK'),
('William', 'Johnson', 83000000, 4.2, 6, 'Germany'),
('Emily', 'Davis', null, 4.6, null, null),
('James', 'Wilson', 212000000, 3.8, 10, 'Brazil'),
('Olivia', 'Moore', 126000000, 4.3, 8, 'Japan');


select distinct country_name from persons;

select fname as first_name, lname as last_name from persons;

select * from persons where rating > 4.0;

select * from country where population > 1000000;

select * from persons where country_name = 'USA' or rating > 4.5;

select * from persons where country_name = null;

select * from persons where country_name in ('USA', 'Canada', 'UK');

select * from persons where country_name not in ('India', 'Australia');

select * from country where population between 500000 and 2000000;

select * from country where country_name not like 'C%';









