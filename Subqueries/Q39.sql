# Write your MySQL query statement below
(select max(visited_on),sum(amount) as amount, round(sum(amount)/7,2) as average_amount
from customer
where visited_on between '2019-01-01' and '2019-01-07')

union all

(select max(visited_on),sum(amount) as amount, round(sum(amount)/7,2) as average_amount
from customer
where visited_on between '2019-01-02' and '2019-01-08')

union all

(select max(visited_on),sum(amount) as amount, round(sum(amount)/7,2) as average_amount
from customer
where visited_on between '2019-01-03' and '2019-01-09')

union all

(select max(visited_on),sum(amount) as amount, round(sum(amount)/7,2) as average_amount
from customer
where visited_on between '2019-01-04' and '2019-01-10')
