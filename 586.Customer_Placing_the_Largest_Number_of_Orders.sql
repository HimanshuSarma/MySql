select customer_number from Orders 
group by customer_number
having count(order_number) = (
    select max(total_orders) from (
        select count(order_number) as total_orders, customer_number
        from Orders as Customer_total_orders
        group by customer_number
    ) Customer_total_orders
);