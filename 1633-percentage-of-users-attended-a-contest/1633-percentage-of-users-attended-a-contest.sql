/* Write your PL/SQL query statement below */
select 
    r.contest_id, 
    ROUND(
        COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) 
        AS percentage
from Users u 
inner join Register r
on u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;