#creating school database:
create database school;
use school;

#creating student table:
create table student(
rollno int not null auto_increment primary key,
name varchar(50) not null,
marks int not null,
grade char(1) check(grade in ('A','B','C','D'))
);

#entering values to student table:
insert into student
values
(1,'ANN',45,'A'),
(2,'SAM',38,'B'),
(3,'JANE',30,'C');

#displaying student table:
select * from student;

#adding a new contact column:
alter table student
add contact varchar(15) not null;

#deleting the grade column:
alter table student
drop column grade;

#renaming the table:
rename table student to classten;

#deleting all rows from table:
truncate table classten;

#removing the table from database:
drop table classten;

show tables;


