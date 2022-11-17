select id, case 
when T1.p_id is null then "Root"
when (select count(*) from Tree as T2 where T2.p_id is not null and T1.id = T2.p_id) > 0 and T1.p_id is not null then "Inner"
else 'Leaf'
end
as type from Tree as T1;
              