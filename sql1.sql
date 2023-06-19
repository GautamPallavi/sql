show databases;
create database customers;
use customers;
# create table in databases
create table customer_info(id integer, first_name varchar(10),last_name varchar(10));
show tables;
select * from customer_info;
Insert into customer_info(id,first_name,last_name) values(1,'Pallavi',
'Gautam');
Insert into customer_info(id,first_name,last_name) values(2,'Krish',
'Naik');
#drop table customer_info;
show tables;
#drop database customers;
show databases;
use customer;
create table person2(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);
desc person2;
#alter table person2
#add primary key(id);
alter table person2
add constraint pk_person2 primary key(id,age);
drop table person2;
drop table person;


create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);
desc person;
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);
desc department;
alter table department
add foreign key(id) references person(id);
drop table department;
drop table person;
## check contraint
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)
);
desc person;
insert into person values(1, 'pallavi','gautam',31,40000);
select * from person;

## default constraint
drop table person;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25) default 'Indore'
);
desc person;

alter table person
alter city_name drop default




