# Write your MySQL query statement below
select query_name, round((sum(rating/position)/3),2) as quality, round((count(case when rating<3 then 1 end)/3*100),2) as poor_query_percentage
from queries
group by query_name
