
use customer;
create table student(
student_id int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(student_id)
);
Insert into student values(1,'pallavi','gautam',31),
(2,'john','denial',35),
(3,'pallavi','gautam',48),
(4,'chandan','gautam',25),
(5,'ankit','gautam',null);

create table department(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key(student_id) references student(student_id)
);

desc department;
insert into department values(1,'computer science'),
(2,'electronics'),
(3,'mechanical');

create view student_info as
select first_name, last_name, age from student inner join department
using (student_id);
select* from student_info;
select * from student;

insert into student values(6,'ramesh','singh',26);
select * from department;
## inner join
select * from student inner join department on student.student_id=department.student_id; 
select student.first_name,student.last_name,student.age,department.department_name from student inner join department 
on student.student_id=department.student_id;

## left outer join
select student.first_name,student.last_name,student.age,department.department_name from student left join department 
on student.student_id=department.student_id;

### right join
select student.first_name,student.last_name,student.age,department.department_name from student right join department 
on student.student_id=department.student_id;

## full outer join 

select student.first_name,student.last_name,student.age,department.department_name from student left join department 
on student.student_id=department.student_id
union
select student.first_name,student.last_name,student.age,department.department_name from student right join department 
on student.student_id=department.student_id;

##cross join

 select student.first_name,student.last_name,student.age,department.department_name from student cross join department;
 ## natural join
  select student.first_name,student.last_name,student.age,department.department_name from student natural join department   

