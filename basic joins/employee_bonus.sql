-- Problem Link : https://leetcode.com/problems/employee-bonus/

SELECT Employee.name , Bonus.bonus 
FROM Employee Left JOIN Bonus ON 
Employee.empId = Bonus.empId 
Where bonus< 1000 or bonus is NULL 