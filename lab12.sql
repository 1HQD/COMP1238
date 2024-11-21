--EXERCISE QUESTIONS

-- a query to list all courses, concatenating the course_name and semester fields with a hyphen between them.
SELECT concat (courses.course_name, ' - ', courses.semester)
FROM courses

-- a query to find all courses that have a lab session scheduled on Friday.
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%'

-- a query to list all assignments with a due date after the current date.
SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date > '2024-11-21'
ORDER BY due_date;

-- a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

-- a query to find the course with the longest course_name. Use the length() function to compare the lengths.
SELECT course_name, length(course_name)
FROM courses
ORDER BY length(course_name) DESC;

-- a query to return a list of all course names in uppercase.
SELECT upper(course_name)
FROM courses;

-- a query to list the titles of all assignments that are due in September, regardless of year.
SELECt course_id, title, due_date
FROM assignments
WHERE SUBSTRING(due_date, 6, 2) = '09';

-- a query to find all assignments where the due_date is missing.

--OPTIONAL TASK

-- a query to list each course_id along with the total number of assignments associated with it. 
SELECT course_id, COUNT(*) AS assignment_count
FROM assignments
GROUP BY course_id

-- a query to find all courses that do not have any assignments.
Hint: LEFT JOIN ... WHERE assignments.id IS NULL



