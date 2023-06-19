create database customers;
use customer;
show tables;

select * from person;

create index index_city_name
on person(city_name);
desc person;
 show tables;
 drop table student;
 create table student(
 id int not null,
 first_name varchar(24),
 last_name varchar(25),
 age int
 );
 
 create index index_age
 on student(age);
 create index index_age_first_name
 on student(age, first_name);
 desc student;
 alter table student
 drop index index_age_first_name;
 alter table student
 drop index index_age;
 desc student;
 
 
 
 
 
 
 
 
 