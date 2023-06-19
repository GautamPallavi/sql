## sql constraints
# not null
create database customer;
use customer;
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int

);
desc student;
alter table student modify age int not null;
create table person(
id int not null,
first_name varchar (25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);
insert into person values(3,'pallavi1','gautam2',31);
select * from person;
alter table person
ADD unique(first_name);
alter table person
add constraint uc_person unique(age, first_name);
desc person;
alter table person
drop index first_name;
##primary key

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk_person primary key(id,last_name)
);
desc person1;
alter table person1
drop primary key









