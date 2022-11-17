select W2.id from Weather as W1 inner join Weather as W2 on W1.temperature < W2.temperature 
and datediff(W2.recordDate, W1.recordDate) = 1;
