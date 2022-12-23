# Write your MySQL query statement below

select Department.name as Department, e1.name as Employee, e1.salary as Salary
from Employee as e1 inner join Department 
on e1.departmentId = Department.id
where 3 > (
    select count(distinct(salary))
    from Employee as e2 
    where e2.departmentId = e1.departmentId
        and e1.salary < e2.salary
)
