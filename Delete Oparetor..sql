
-- DELETE 
-- single user delete
select * from students

delete from students
where grade = 'C+'

-- delete with multiple condition
delete from students
where grade = 'O-' and age < 20
