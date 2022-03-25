USE bottega_schema;

--Student and professor common courses
SELECT s.students_name, p.professors_name
FROM students s
JOIN professors p
ON s.students_id = p.professors_students_id
GROUP BY students_name;


--Summary report of courses and average grades
SELECT c.courses_name, AVG(g.grades_percent)
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY grades_percent ASC;


--Group students by courses
SELECT students_name, courses_name
FROM students s
JOIN courses c
ON s.students_id = c.courses_students_id
GROUP BY students_name;


--Top grades for each student
SELECT students_name, (grades_percent)
FROM grades g
JOIN students s
ON g.grades_students_id = s.students_id
ORDER BY grades_percent DESC;


--Average grades by professor
SELECT professors_name, AVG(grades_percent)
FROM grades g
JOIN professors p
ON g.grades_professors_id = p.professors_grades_id
GROUP BY professors_name;


--Grades
INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 1, 1, 1);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 2, 2, 2);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 3, 3, 3);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 4, 4, 4);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 5, 5, 5);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("88", 1, 1, 1);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("88", 2, 2, 2);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("88", 3, 3, 3);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("88", 4, 4, 4);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("88", 5, 5, 5);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("92", 1, 1, 1);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("92", 2, 2, 2);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("92", 3, 3, 3);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("92", 4, 4, 4);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("92", 5, 5, 5);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("81", 1, 1, 1);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("81", 2, 2, 2);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("81", 3, 3, 3);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("81", 4, 4, 4);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("81", 5, 5, 5);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 1, 1, 1);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 2, 2, 2);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 3, 3, 3);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 4, 4, 4);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 5, 5, 5);


--Professors
INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Jensen", 1, 1);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Jensen", 2, 2);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Jensen", 3, 3);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Jensen", 4, 4);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Jensen", 5, 5);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Hudgens", 1, 1);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Hudgens", 2, 2);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Hudgens", 3, 3);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Hudgens", 4, 4);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Hudgens", 5, 5);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Moody", 1, 1);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Moody", 2, 2);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Moody", 3, 3);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Moody", 4, 4);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Moody", 5, 5);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Stone", 1, 1);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Stone", 2, 2);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Stone", 3, 3);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Stone", 4, 4);

INSERT INTO professors(professors_name, professors_grades_id, professors_students_id)
VALUES("Stone", 5, 5);

--Courses
INSERT INTO courses(courses_name, courses_students_id)
VALUES("History", 1);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("History", 2);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("History", 3);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("History", 4);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("History", 5);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Math", 1);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Math", 2);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Math", 3);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Math", 4);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Math", 5);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("English", 1);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("English", 2);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("English", 3);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("English", 4);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("English", 5);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Science", 1);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Science", 2);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Science", 3);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Science", 4);

INSERT INTO courses(courses_name, courses_students_id)
VALUES("Science", 5);


--Students
INSERT INTO students(students_name, students_email)
VALUES("Shawn", "shawn@test.com");

INSERT INTO students(students_name, students_email)
VALUES("Sarah", "sarah@test.com");

INSERT INTO students(students_name, students_email)
VALUES("Molly", "molly@test.com");

INSERT INTO students(students_name, students_email)
VALUES("Harper", "harper@test.com");

INSERT INTO students(students_name, students_email)
VALUES("Sonny", "sonny@test.com");