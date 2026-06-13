-- Create table
create table students (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) not null,
  last_name varchar(50) not null,
  age int,
  grade char(20),
  course varchar(50),
  email varchar(100) unique,
  dob date,
  blood_group varchar(5),
  country varchar(50)
)

  drop table students

-- Inset table
insert into students(first_name, last_name, age, grade, course, email, dob, blood_group, country)
values('Arif', 'Hossain', 20, 'A+', 'Computer Science', 'arif@gmail.com', '2005-03-15', 'B+', 'Bangladesh'),

('Rahim', 'Ahmed', 22, 'O+', 'Software Engineering', 'rahim@gmail.com', '2003-07-21', 'A', 'Bangladesh'),

('Karim', 'Islam', 21, 'B+', 'Electrical Engineering', 'karim@gmail.com', '2004-01-10', 'A-', 'Nepal'),

('Nusrat', 'Jahan', 23, 'AB+', 'Computer Science', 'nusrat@gmail.com', '2002-05-18', 'A+', 'Sri lanka'),

('Sadia', 'Akter', 19, 'O-', 'Information Technology', 'sadia@gmail.com', '2006-09-12', 'B', 'Varat'),

('Tanvir', 'Hasan', 24, 'A-', 'Mechanical Engineering', 'tanvir@gmail.com', '2001-11-30', 'A', 'Bangladesh'),

('Farhan', 'Kabir', 20, 'B-', 'Computer Science', 'farhan@gmail.com', '2005-04-25', 'A-', 'Pakistan'),

('Mim', 'Sultana', 22, 'AB-', 'Software Engineering', 'mim@gmail.com', '2003-08-14', 'A+', 'Bangladesh'),

('Rifat', 'Chowdhury', 21, 'O+', 'Civil Engineering', 'rifat@gmail.com', '2004-06-05', 'B+', 'Bhutan'),

('Sumaiya', 'Rahman', 20, 'A+', 'Computer Science', 'sumaiya@gmail.com', '2005-12-22', 'A', 'Soudi Arab'),
  
('Naim', 'Ahmed', 25, 'A+', 'Degree Science',  '2005-12-22', 'A', 'Soudi Arab');

insert into students (first_name, last_name, age, grade, course, dob, blood_group, country)
  values('Naim', 'Ahmed', 25, 'A+', 'Degree Science',  '2005-12-22', 'A', 'Soudi Arab');


-- Using select
select first_name, last_name from students;
select * from students;

-- Coulum alias
select first_name as "First Name", age as user_age from students;

-- Sorting
select first_name, last_name, age, country from students order by age desc;
select first_name, last_name, age, country from students order by age asc;

-- Distinct (for unique value)
select distinct country from students
select distinct course from students

-- Filtering
select * from students 
where country = 'Bangladesh';
  
select first_name, last_name, course, country from students 
where country = 'Bangladesh'
  
select first_name, last_name, course, grade from students 
where grade = 'A+'

-- OR oparetor (for filtering)
select * from students
where country = 'Bangladesh' or country = 'Bhutan'

-- AND oparetor (for filtering)
select * from students 
where (grade = 'A+' or grade = 'O+') and (course = 'Civil Engineering' or course = 'Computer Science')

-- Comparison oparetors
  -- greter than
select * from students
where age >= 20

-- less than
select * from students
where age <= 20

  -- not equal
select * from students
where country != 'Bangladesh'

select * from students
where country <> 'Varat'

  -- BETWEEN
select * from students
where age between 20 and 22


-- IN oparetor
select * from students
where country = 'Bangladesh' or country = 'Varat' or country = 'Nepal';

select * from students
where country in ('Bangladesh', 'Varat', 'Nepal')


-- LIKE oparetor
  -- first letter
select * from students
where first_name like 'A%'
  -- end letter
select * from students
where first_name like '%a'
  -- charecter select
select * from students
where first_name like 'A___'

  
-- ILIKE oparetor (for case sansetive)
select * from students
where email ilike 'M%'
  
select * from students
where email ilike 'm%'


-- NOT oparetor
select * from students
where not country = 'Bangladesh'

select * from students
where not grade = 'A+'