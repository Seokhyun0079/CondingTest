#https://leetcode.com/problems/second-highest-salary/
# Write your MySQL query statement below
SELECT  B.Salary AS SecondHighestSalary
FROM  (
        SELECT Salary AS Salary
        FROM EMPLOYEE
        ORDER BY Salary DESC
        LIMIT 1
) AS A LEFT JOIN (
        SELECT Salary AS Salary
        FROM EMPLOYEE
        ORDER BY Salary DESC
        LIMIT 2
) AS B
ON A.Salary<> B.Salary;
