-- problem Link : https://leetcode.com/problems/students-and-examinations/

SELECT s.student_id ,s.student_name ,sub.subject_name , COUNT(e.subject_name) as attended_exams
FROM Students s CROSS JOIN Subjects sub 
LEFT JOIN EXaminations e
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name 
Group BY s.student_id ,s.student_name ,sub.subject_name
ORDER BY s.student_id , sub.subject_name 