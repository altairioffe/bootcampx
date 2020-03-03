SELECT cohorts.name as cohort_name, count(students.id) as total_students
FROM cohorts 
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(students) >= 18
ORDER BY total_students;