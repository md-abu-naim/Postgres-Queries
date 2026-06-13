-- Scaler function
-- upper
select upper(first_name), last_name from students;

-- lower
select lower(first_name), last_name from students;

-- concate
select concat(first_name, last_name) as "Full Name", last_name from students;


-- Aggregate function
-- avg
select avg(age) from students

  -- max
select max(age) from students

  -- min
select min(age) from students

  -- sum
select sum(age) from students

  -- count
select count(age) from students
  
select count(*) from students