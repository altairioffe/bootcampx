SELECT students.name as name, AVG(assignment_submissions.duration) as avg_time
FROM assignment_submissions
JOIN students ON student_id = students.id 
WHERE students.end_date IS NULL
GROUP BY name
ORDER BY avg_time DESC;