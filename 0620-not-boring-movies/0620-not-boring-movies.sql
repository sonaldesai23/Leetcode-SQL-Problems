/* Write your PL/SQL query statement below */
SELECT *
FROM CINEMA
WHERE (MOD(ID, 2) =1 ) AND description NOT LIKE 'boring'
ORDER BY RATING DESC;

