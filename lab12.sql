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
SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date ISNULL

--OPTIONAL TASK

-- a query to list each course_id along with the total number of assignments associated with it. 
SELECT courses.course_id, 
COUNT(assignments.title) AS assignment_count
FROM courses
LEFT JOIN assignments
ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;

-- a query to find all courses that do not have any assignments.
SELECT courses.course_id, courses.course_name, COUNT(assignments.status) AS assignments_count
FROM courses
LEFT JOIN  assignments
ON courses.course_id = assignments.course_id
GROUP BY courses.course_id, courses.course_name
HAVING COUNT(assignments.status) = 0;



