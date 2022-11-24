select 
Users.name as name,
sum(Transactions.amount) as balance
from Users join Transactions on Users.account = Transactions.account
group by Users.account
having sum(Transactions.amount) > 10000;