create database company_info;
use company_indo;
create table employe_data(
employee_id int not null primary key auto_increment, first_name varchar(25) not null,
last_name varchar(25) not null, salary int not null,
joining_date datetime, department varchar(25)
);
select* from employe_data;

desc employe_data;

create table bonus(
emp_ref_id int,
bonus_amt int,
bonus_date datetime,
foreign key(emp_ref_id) references employe_data(employee_id)
on Delete cascade
);

create table designation(
emp_ref_id int,designation varchar(25),
designation_date datetime,
foreign key(emp_ref_id) references employe_data(employee_id)
on  delete cascade
);

insert into employe_data values(
1,'john','denial',50000,'14-12-11 01.00.00', 'development'),
(2,'pallavi','gautam',80000,'15-02-11 01.00.00', 'HR'),
(3,'chandan','Parey',30000,'17-09-11 01.00.00', 'development'),
(4,'ankit','gautam',25000, '18-08-13 01.00.00', 'Accountant'),
(5,'Manish','Sharma',90000,'18-09-14 01.00.00', 'Head'),
(6,'Kamal','Sharma',90000,'22-09-14 01.00.00', 'Head');

insert into bonus values
(2,5000,'10-10-11'),
(1,500,'11-10-12'),
(4,4000,'12-10-11'),
(3,8000,'13-10-11'),
(6,6000,'13-10-10'),
(3,10000,'13-10-09'),
(1,1000,'14-10-10'),
(2,3000,'14-10-11'),
(2,15000,'18-10-10');

select* from bonus;

insert into designation values
(1, 'sr developer','12-10-11' ),
(6, 'sr Accountant','12-10-11' ),
(3, 'sr Manager','12-10-11' ),
(2, 'Manager','12-10-11' ),
(5, 'Executive','12-10-11' ),
(4, 'sr Executive','12-10-11');


select* from designation;










