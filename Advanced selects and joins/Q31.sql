# Write your MySQL query statement below
select employee_id, department_id
from(
select employee_id, department_id,case when count(department_id)<=1 then "Y" end as yes_primary_flag
from employee
group by employee_id) derived_table
where yes_primary_flag="Y" 

UNION

Select employee_id, department_id
from employee
where primary_flag="Y"
