with cte as (
    select *, lead(id) over() as next, lag(id) over() as prev
    from Seat
)

select case 
when mod(id, 2) <> 0 and next is null then id
when mod(id, 2) <> 0 and next is not null then next
when mod(id, 2) = 0 then prev
end as id, student
from cte
order by id;