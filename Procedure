-- Create Procedure
create procedure delete_emp(emp_id int)
language plpgsql
as 
$$
  begin
     delete from employee where id = emp_id;
  end;
$$

call delete_emp(14)


create procedure increse_low_salary(department varchar(50))
language plpgsql
as $$
  declare avg_salary int;
  begin
    select avg(salary) into avg_salary from employee
    where deparment_name = department;

    update employee set salary = salary * 1.1
    where deparment_name = department and salary < avg_salary;
  end;
$$

  drop procedure increse_low_salary


call increse_low_salary('Engineering')
