
-- Delete employee
create function emp_delete(emp_id int)
returns void
language sql
as
$$
  delete from employee where id = emp_id
$$


create table emp_logs(
  id serial primary key,
  emp_name varchar(100),
  action varchar(20),
  action_time timestamp default now()
)


-- Create trigger
create trigger save_dlt_emp_logs
after delete
on employee
for each row
execute function log_emp_deletion()


-- create function
create function log_emp_deletion()
returns trigger
language plpgsql
as $$
  begin
     insert into emp_logs(emp_name, action) values(old.name, 'Delete');
     return old;
  end;
$$


select emp_delete(13)