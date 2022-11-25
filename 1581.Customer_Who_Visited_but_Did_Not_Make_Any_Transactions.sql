select customer_id, count(Visits.visit_id) as count_no_trans
from Visits 
where 0 = (
    select count(Transactions.visit_id) 
    from Transactions 
    where Transactions.visit_id = Visits.visit_id
)
group by customer_id;