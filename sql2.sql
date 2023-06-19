create database customers;
show databases;
use customers;
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);
select * from customer_info;

# insert records into the table
Insert into customer_info(first_name,last_name,salary)
values
('john','denial',50000),
('pallavi','gautam',80000),
('chandan','gautam',30000),
('ankit','gautam',null);

# sql update ststement
update customer_info set salary= 50000 where id=4;
select * from customer_info;
## sql delete statement
delete from customer_info where id=4;

select * from customer_info;
##sql alter table
## add columns in existing table

alter table customer_info add email varchar(25);
select * from customer_info;
alter table customer_info add dob date;
## after table modify column_format;
alter table customer_info modify dob year;
alter table customer_info drop column email;
desc customer_info;
