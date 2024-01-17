# Write your MySQL query statement below
(select name as results
from users u
join movierating m
on u.user_id=m.user_id
group by name
order by name
limit 1)

union all

(select title as results
from(
select title, avg(rating) over (partition by mv.movie_id) as average
from movies m
join movierating mv
on m.movie_id=mv.movie_id
where created_at between '2020-02-01' and '2020-02-28'
order by average desc
limit 1)derived_table)




