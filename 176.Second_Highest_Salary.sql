-- Approach 1
select max(salary) as SecondHighestSalary from Employee where salary not in (
    select salary from Employee group by salary order by salary desc limit 1
);
-- Approach 1


-- Approach 2
-- Query returns empty table when 2nd highest salary doesn't exist, but leetcode asks to return null if no 
-- answer exists. So, not getting accepted in LC, but query is correct.
select salary as SecondHighestSalary from Employee as e1 where 1 = (
    select count(*) from Employee as e2 where e2.salary > e1.salary
);
-- Approach 2
