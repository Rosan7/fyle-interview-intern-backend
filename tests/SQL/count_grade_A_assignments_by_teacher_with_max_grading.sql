-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT COUNT(*) AS num_grade_as
FROM assignments
where grade = 'A' AND teacher_id = (
    SELECT teacher_id
    FROM (
        SELECT teacher_id,count(*) AS num_assignments
        FROM assignments
        WHERE state = 'GRADED'
        GROUP BY teacher_id
        ORDER BY num_assignments DESC
        LIMIT 1
    ) AS max_assignments_teacher
);

