create database fifth_db;
use fifth_db;
create table pupil(
pupil_id int auto_increment not null,
name varchar(20) not null,
class varchar(20) not null,
passport_number varchar(20) unique,
primary key(pupil_id));
insert into pupil (name , class, passport_number)
values ('Jon K', '2-A', 'FP564');
insert into pupil (name , class, passport_number)
values ('Alice F', '4-A', 'FG987');
insert into pupil (name , class, passport_number)
values ('Bob L', '3-A', 'HJ876');

create table course (
course_id int auto_increment not null,
subgect varchar(20) not null,
teacher varchar (20) not null,
primary key(course_id));

insert into course (subgect, teacher)
values ('algebra', 'Mr. Tom');
insert into course (subgect, teacher)
values ('psyhology', 'Mrs. Lain');

select* from pupil;
select * from course;



drop table pupil_course;
use fifth_db;
create table pupil_course(pupil_id

);
insert into pupil_corse(pupil_id, course_id)
values (1, 2), (2,3), (3, 1);
select * from pupil

select * from pupil_course;

create table bag(
id int not null auto_increment primary key,
color varchar(50) not null,
brand varchar(50) not null,
pupil_id int,
foreign key (pupil_id) 
references pupil(pupil_id)
);
insert into bag(color, brand, pupil_id)
values ('red', 'puma', 1),
('yellow', 'adidas', 2),
('bluea', 'nike', 3);
select * from bag;
select id, color, name, class from bag
right join pupil on pupil.pupil_id = bag.pupil_id;
update bag
set pupil_id = null where pupil_id in (
select pupil_id from pupil where name like 'A%'
);




