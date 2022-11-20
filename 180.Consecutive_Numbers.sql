select distinct l1.num as `ConsecutiveNums`
from Logs as l1
inner join Logs as l2 on l1.id = l2.id+1 and l1.num = l2.num
inner join Logs as l3 on l1.id = l3.id+2 and l1.num = l3.num;