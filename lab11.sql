-- a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date, course_id
FROM assignments
WHERE course_id = 'COMP1234'

-- a query to find the earliest assignment due date in the assignments table.
SELECT min(due_date), title, course_id
FROM assignments

-- a query to find the latest assignment due date in the assignments table.
SELECT max(due_date), title, course_id
FROM assignments

-- a query to find the title and course_id of assignments due on 2024-10-08.
SELECT due_date, course_id, title
FROM assignments
WHERE due_date LIKE '2024-10-08'

-- a query to display the title and due_date of assignments due in October 2024.
SELECT due_date, course_id, title
FROM assignments
WHERE due_date LIKE '2024-10-%'

-- a query to find the most recent due_date of assignments with a status of "Completed".
SELECT max(due_date), title, course_id
FROM assignments
WHERE status IS 'Completed';

-- a query to find the total number of assignments with a status of "Not Started".
SELECT status, count(*)
FROM assignments
WHERE status = 'Not Started';

-- a query to find the course_id and course_name of courses that have lab sessions on Tuesday.
select course_id, course_name, lecture_time, lab_time
FROM courses
where lab_time like 'Tue%'

-- a query that joins the two tables.
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments
  ON courses.course_id = assignments.course_id;
