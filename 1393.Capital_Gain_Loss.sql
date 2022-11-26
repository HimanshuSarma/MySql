-- Approach 1. Using parition by and window function
select distinct stock_name,
sum(
    case when 
    operation = 'Buy' then price*-1
    else price
    end
) over(partition by stock_name) as capital_gain_loss
from Stocks;
-- Approach 1. Using parition by and window function

-- Approach 2. Using group by and case when
select stock_name,
sum(
    case when
    operation = 'Buy' then price*-1
    else price
    end
) as capital_gain_loss
from Stocks
group by stock_name;
-- Approach 2. Using group by and case when