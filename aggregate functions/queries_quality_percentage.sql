-- Problem Link : https://leetcode.com/problems/queries-quality-and-percentage/

select query_name , ROUND(AVG(rating/position) , 2) as quality , ROUND(AVG(if (rating <3 , 1 , 0))*100 , 2) as poor_query_percentage 
FROM Queries 
WHERE query_name is not NULL 
Group BY (query_name) ;