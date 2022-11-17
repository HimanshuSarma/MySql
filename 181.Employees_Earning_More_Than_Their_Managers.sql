select Emp1.name as Employee from Employee as Emp1 inner join Employee as Emp2 on Emp1.managerId = Emp2.id and 
Emp1.salary > Emp2.salary;