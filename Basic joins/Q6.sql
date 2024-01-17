# Write your MySQL query statement below
select name, unique_id
from employees
left join employeeUNI
on employees.id=employeeUNI.id
