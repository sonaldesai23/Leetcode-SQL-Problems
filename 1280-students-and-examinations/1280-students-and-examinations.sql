select s1.student_id, s1.student_name, s2.subject_name, count(s3.subject_name) as attended_exams
From Students s1
CROSS JOIN Subjects s2
LEFT JOIN Examinations s3
ON s1.student_id = s3.student_id
ANd s3.subject_name = s2.subject_name
group by s1.student_id, s1.student_name, s2.subject_name
order by student_id,subject_name
;