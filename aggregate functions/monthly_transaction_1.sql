-- Problem Link : https://leetcode.com/problems/monthly-transactions-i/

# Write your MySQL query statement below
select 
DATE_FORMAT(trans_date,'%Y-%m') as month ,
country,
COUNT(id) as trans_count ,
sum(state='approved') as approved_count , 
SUM(amount) as trans_total_amount ,
SUM(IF(state='approved' , amount , 0)) as approved_total_amount 

FROM Transactions 
Group BY month,country ;