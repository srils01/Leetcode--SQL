# Write your MySQL query statement below
select num as consecutiveNUms
from logs
having count(num)
