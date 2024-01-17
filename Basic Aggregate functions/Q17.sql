# Write your MySQL query statement below
select project_id, round(sum(experience_years)/count(experience_years),2) as average_years
from employee
join project
on project.employee_id=employee.employee_id
group by project_id
