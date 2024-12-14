create database countryandpeople;
use countryandpeople;

create table country (
    id int primary key auto_increment,
    country_name varchar(100) not null,
    population bigint,
    area int
);

create table persons (
    id int primary key,
    fname varchar(50),
    lname varchar(50),
    population bigint,
    rating decimal(2,1),
    country_id int,
    country_name varchar(100),
    foreign key (country_id) references country(id)
);

insert into country (id, country_name, population, area) values
(1, 'india', 1393409038, 3287263),
(2, 'usa', 331002651, 9833517),
(3, 'china', 1444216107, 9596961),
(4, 'brazil', 212559417, 8515767),
(5, 'russia', 145934462, 17098242),
(6, 'canada', 37742154, 9984670),
(7, 'australia', 25499884, 7692024),
(8, 'germany', 83783942, 357022),
(9, 'france', 65273511, 643801),
(10, 'mexico', 128933262, 1972550);

insert into persons (id, fname, lname, population, rating, country_id, country_name) values
(1, 'john', 'doe', 1000000, 4.5, 1, 'india'),
(2, 'jane', 'smith', 2000000, 4.2, 2, 'usa'),
(3, 'carlos', 'martinez', 1500000, 3.8, 3, 'china'),
(4, 'maria', 'garcia', 1200000, 4.1, 4, 'brazil'),
(5, 'robert', 'johnson', 800000, 3.9, 5, 'russia'),
(6, 'emily', 'brown', 950000, 4.6, 6, 'canada'),
(7, 'david', 'davis', 500000, 3.7, 7, 'australia'),
(8, 'sophia', 'wilson', 700000, 4.3, 8, 'germany'),
(9, 'william', 'moore', 400000, 3.5, 9, 'france'),
(10, 'olivia', 'taylor', 300000, 4.7, 10, 'mexico');

select substr(country_name, 1, 3) as first_3_letters from country;

select concat(fname, ' ', lname) as full_name from persons;

select count(distinct country_name) as distinct_countrynames from persons;

select max(population) as Max from country;

select min(population) as Min from persons;

insert into persons (id, fname, lname, population, rating, country_id, country_name) values
(11, 'lucas', null, 600000, 4.2, 2, 'usa'),
(12, 'ava', null, 700000, 4.3, 5, 'russia');

select count(lname) as lname_count from persons;

select count(*) as no_of_rows from persons;

select population from country limit 3;

select * from country order by rand() limit 3;

select * from persons order by rating desc;

select country_name, sum(population) as total_population from persons group by country_name;

select country_name, sum(population) as total_population from persons
group by country_name
having sum(population) > 50000;

select country_name, count(*) as total_persons, avg(rating) as avg_rating
from persons
group by country_name
having count(*) > 2
order by avg_rating asc;






