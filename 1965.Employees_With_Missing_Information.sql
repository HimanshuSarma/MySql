-- Approach 1. For MS SQL Server and Oracle.
select (
    case when
    Employees.employee_id is null then Salaries.employee_id
    else Employees.employee_id
    end
) as employee_id
from Employees full outer join Salaries
on Employees.employee_id = Salaries.employee_id
where Employees.employee_id is null or Salaries.employee_id is null
order by employee_id;
-- Approach 1. For MS SQL Server and Oracle.


-- Approach 2. For MySql(As MySql doesn't support full outer join)
select (
    case when
    Employees.employee_id is null then Salaries.employee_id
    else Employees.employee_id
    end
) as employee_id
from Employees left outer join Salaries
on Employees.employee_id = Salaries.employee_id
where (Employees.employee_id is null or Salaries.employee_id is null)

union

select (
    case when
    Employees.employee_id is null then Salaries.employee_id
    else Employees.employee_id
    end
) as employee_id
from Employees right outer join Salaries
on Employees.employee_id = Salaries.employee_id
where (Employees.employee_id is null or Salaries.employee_id is null)
order by employee_id;
-- Approach 2. For MySql