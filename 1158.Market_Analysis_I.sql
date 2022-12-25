# Write your MySQL query statement below

with cte as (
    select Users.user_id as user_id, Users.join_date as join_date,
    sum(case when year(Orders.order_date) = 2019 then 1 else 0 end) as orders_in_2019
    from Users left outer join Orders
    on Users.user_id = Orders.buyer_id
    group by Users.user_id
)

select Users.user_id as buyer_id, Users.join_date, cte.orders_in_2019 as orders_in_2019
from cte inner join Users
on cte.user_id = Users.user_id;

