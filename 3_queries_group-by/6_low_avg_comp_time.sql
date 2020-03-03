SELECT students.name as name, AVG(assignment_submissions.duration) as avg_time, AVG(assignments.duration)
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY avg_time;