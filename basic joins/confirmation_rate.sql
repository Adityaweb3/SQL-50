-- Problem Link : https://leetcode.com/problems/confirmation-rate/
Select s.user_id , Coalesce(ROUND(SUM(action = "confirmed")/COUNT(c.user_id) , 2),0.00) as confirmation_rate 
FROM Signups s LEFT JOIN Confirmations c 
ON s.user_id = c.user_id 
Group BY user_id ;