select distinct Users.name as name, 
(case when 
Rides.user_id is not null then sum(Rides.distance) over(partition by Users.name order by Users.name)
else 0 end)
as travelled_distance
from Users left outer join Rides
on Users.id = Rides.user_id
order by travelled_distance desc;