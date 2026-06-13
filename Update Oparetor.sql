-- UPDATE
-- update single 
select * from students
  
update students set email = 'default@gmail.com' 
where email is null

-- update multiple colunn
update students set first_name = 'Akib', age = 27
where student_id = 1
  
-- update multiple users
update students set grade = 'A+'
where student_id = 1 or student_id = 2
  
update students set grade = 'C+'
where student_id in (3, 4)