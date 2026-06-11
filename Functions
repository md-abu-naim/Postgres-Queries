-- Create function
-- count employee
create function emp_count()
returns int
language sql
as
$$
  select count(*) from employee
$$

select emp_count()

  
-- Delete employee
create function emp_delete(emp_id int)
returns void
language sql
as
$$
  delete from employee where id = emp_id
$$

select emp_delete(15)