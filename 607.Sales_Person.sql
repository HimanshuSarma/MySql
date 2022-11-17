-- Approach 1: Joining
select name from SalesPerson where sales_id not in (
    select Orders.sales_id from Orders inner join Company on Orders.com_id = Company.com_id
        and Company.name = 'RED'
)
-- Approach 1: Joining

-- Approach 2: Without Joining
select name from SalesPerson where sales_id not in
(select sales_id from Orders where com_id in
(select com_id from Company where name = 'RED'));
-- Approach 2: Without Joining