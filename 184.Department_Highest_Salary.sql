-- Approach 1 using Common table expression

with EmployeeDept as (
    select Department.id as Did, Employee.id as Eid, Employee.name as Ename, Department.name as Dname, Employee.salary
    from Employee inner join Department 
    on Employee.departmentId = Department.id
)

select E1.Dname as Department, E1.Ename as Employee, E1.salary as salary
from EmployeeDept as E1
where 0 = (
    select count(*) from EmployeeDept as ED2 where E1.Did = ED2.Did and E1.salary < ED2.salary
);

-- Approach 1 using Common table expression


-- Approach 2 using inner join and where in condition

select Department.name as Department, Employee.name as Employee, salary
from Employee inner join Department 
on Employee.departmentId = Department.id
where (Department.id, salary) in (
    select departmentId, max(salary)
    from Employee group by departmentId
)

-- Approach 2 using inner join and where in condition