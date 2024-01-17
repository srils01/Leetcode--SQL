# Write your MySQL query statement below
select name
from employee
having count(managerid)>=5
