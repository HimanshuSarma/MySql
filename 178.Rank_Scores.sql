select S1.score as score, (select count(distinct S2.score) from Scores as S2 where S1.score <= S2.score) as `rank` 
from Scores as S1 order by S1.score desc;
