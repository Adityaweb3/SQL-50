-- Problem Link : https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Write your MySQL query statement below
select e1.name FROM 
Employee e1 INNER JOIN Employee e2 
on e1.id = e2.managerId 
Group BY e2.managerId 
Having COUNT(e2.managerId)>=5 