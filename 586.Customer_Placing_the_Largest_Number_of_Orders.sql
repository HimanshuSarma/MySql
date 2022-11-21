with cte as (
    select count(order_number) as total_orders, customer_number
    from Orders as Customer_total_orders
    group by customer_number
)

select customer_number from cte
where total_orders = (
    select max(total_orders) from cte
);


