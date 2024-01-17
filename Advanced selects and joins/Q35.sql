# Write your MySQL query statement below





select person_name 
from(select person_name, (select sum(weight)from queue q2 where q2.turn<=q1.turn)as sum
from queue q1
order by turn)derived_table
where sum=1000







