#https://leetcode.com/problems/big-countries
# Write your MySQL query statement below

SELECT  *
FROM (
    SELECT  name, population, area
    FROM
    World
    WHERE population >= 25000000
    OR area >= 3000000
) AS A;
