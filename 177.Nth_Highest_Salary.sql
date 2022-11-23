-- Approach 1. Using coreraled subqueries
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    # Write your MySQL query statement below.
    SELECT distinct Salary
    FROM Employee e1
    WHERE N-1 = (SELECT COUNT(distinct Salary) FROM Employee e2 WHERE e1.Salary < e2.Salary)
  );
END
-- Approach 1. Using coreraled subqueries

-- Approach 2. Using limit and offset and group by
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  declare m int;
  set M = N-1;
  RETURN (
      # Write your MySQL query statement below.
      select salary
      from Employee 
      group by salary
      order by salary desc
      limit 1 offset M
  );
END
-- Approach 2. Using limit and offset and group by