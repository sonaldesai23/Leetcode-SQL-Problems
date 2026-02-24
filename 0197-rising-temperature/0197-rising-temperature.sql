# Write your MySQL query statement below
SELECT w1.id
from Weather w1
join Weather w2
on w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
where W1.temperature > W2.temperature;