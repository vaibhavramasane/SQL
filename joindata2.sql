use onlineexamdb;
/*  tables 

USE OnlineExamDB;

-- STUDENT TABLE
CREATE TABLE Student (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	email VARCHAR(100),
	gender VARCHAR(10),
	city VARCHAR(50),
	registration_date DATE
);
 
-- SUBJECT TABLE
CREATE TABLE Subject (
	subject_id INT PRIMARY KEY,
	subject_name VARCHAR(100),
	total_marks INT
);
 
-- EXAM SCHEDULE TABLE
CREATE TABLE ExamSchedule (
	exam_id INT PRIMARY KEY,
	subject_id INT,
	exam_date DATE,
	duration_minutes INT,
	FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);
 
-- QUESTION TABLEa
CREATE TABLE Question (
	question_id INT PRIMARY KEY,
	question_text VARCHAR(500),
	difficulty_level VARCHAR(20),
	marks INT
);
 
-- SUBJECT-QUESTION (Many-to-Many)
CREATE TABLE SubjectQuestion (
	subject_id INT,
	question_id INT,
	PRIMARY KEY(subject_id, question_id),
	FOREIGN KEY (subject_id) REFERENCES Subject(subject_id),
	FOREIGN KEY (question_id) REFERENCES Question(question_id)
);
 
-- RESULT TABLE
CREATE TABLE Result (
	result_id INT PRIMARY KEY,
	student_id INT,
	exam_id INT,
	marks_obtained INT,
	result_status VARCHAR(20),
	FOREIGN KEY (student_id) REFERENCES Student(student_id),
	FOREIGN KEY (exam_id) REFERENCES ExamSchedule(exam_id));



*/

/* 1.List all students */
select * from student;

/*2.️Show student names and emails*/
select student_name,email from student;

/*3.️Students from 'New York'*/
select * from student where city='New York';

/*4.️Female students*/
select * from student where gender='female';

/*5️.Students registered after 2024-01-01*/
select * from student where registration_date>'2024-01-01';

/*6.️Subjects with total marks > 80*/
select * from student where total_marks >80;

/*7.️Exams between two dates*/
select * from examschedule where exam_date between '2024-05-10' and '2024-05-18';

/*8.Questions with difficulty = 'Hard'*/
select * from question where difficulty_level='Hard';

/*9️.Students whose name starts with 'A'*/
select * from student where student_name like 'A%';
 
/*10. Students whose email ends with gmail.com*/
select * from student where email like '%gmail.com';

/*11️.Subjects containing 'Math'*/
select * from subject where subject_name like '%math%';

/*12.️Questions having marks between 5 and 10*/
select * from subject where total_marks between 5 and 10;

/*13.️Results where marks_obtained >= 40*/
select * from result where marks_obtained >=40;

/*14️.Students from multiple cities*/
select * from student where city in('pune','new york','mumbai');

/*15️.Exams longer than 90 minutes*/
select * from examschedule where duration_minutes >90;

/*16️.Male students from Chicago*/
select * from student where gender='male' and city='chicago';


/*17️.Subjects with total_marks between 50 and 100*/
select * from subject where total_marks between 50 and 100;

/*18️.Questions with marks = 2*/
select * from question where marks =2;

/*19️.Students whose name contains 'son'*/
select * from student where student_name like '%son%';

/*20️. Results with status 'Pass'*/
select * from result where result_status='pass';

/*21️.Students ordered by name*/
select * from student order by student_name;

/*22️.Students ordered by registration_date DESC*/
select * from student order by registration_date Desc;

/*23️Subjects ordered by total_marks DESC*/
select * from subject order by total_marks desc;

/*24️.Questions ordered by marks*/
select * from question order by marks;

/*25️.Results ordered by marks_obtained DESC*/
select * from result order by marks_obtained desc;

/*26️.Exams ordered by date*/
select * from examschedule order by exam_date;

/*27️.Students ordered by city then name*/
select * from student order by city asc;

/*28️.Hard questions ordered by marks DESC*/
select * from question where difficulty_level ='Hard' order by marks desc;

/*29️.Passed results ordered by marks*/
select * from result where result_status='pass' order by marks_obtained asc;

/*30️.Subjects containing 'Science' ordered*/
select * from subject where subject_name like '%science%' order by subject_name;

/*31️.Student with their exam results*/
select s.student_name,r.marks_obtained from student s inner join Result r on s.student_id=r.student_id;

/*32️.Student with exam date*/
select s.student_name,e.exam_date from student s inner join result r on s.student_id = r.student_id inner join examschedule e on r.exam_id = e.exam_id;

/*33️.Student with subject name*/
 SELECT s.student_name, sub.subject_name FROM Student s JOIN Result r ON s.student_id=r.student_id JOIN ExamSchedule e ON r.exam_id=e.exam_id JOIN Subject sub ON e.subject_id=sub.subject_id;
 
/*34️.Subject with questions*/
SELECT sub.subject_name, q.question_text FROM Subject sub
JOIN SubjectQuestion sq ON sub.subject_id=sq.subject_id
JOIN Question q ON sq.question_id=q.question_id;

/*35️.Left join students and results*/
SELECT s.student_name, r.marks_obtained
FROM Student s
LEFT JOIN Result r ON s.student_id=r.student_id;

/*36️.Right join results and student */
SELECT s.student_name, r.marks_obtained
FROM Student s
RIGHT JOIN Result r ON s.student_id=r.student_id;

/*37️.Students who passed with subject name*/
SELECT s.student_name, sub.subject_name
FROM Student s
JOIN Result r ON s.student_id=r.student_id
JOIN ExamSchedule e ON r.exam_id=e.exam_id
JOIN Subject sub ON e.subject_id=sub.subject_id
WHERE r.result_status='Pass';


/*38.Count students by city*/
SELECT city, COUNT(*) FROM Student GROUP BY city;

/*39.Count students by gender*/
select gender,count(*) from student group by gender;


/*40.Total exams per subject*/
SELECT subject_id, COUNT(*) FROM ExamSchedule GROUP BY subject_id;

/*41.Average marks per student*/
select subject_id, Avg(marks_obtained) from result group by student_id;

/*42.Students with avg marks > 60*/
SELECT subject_id, COUNT(*) cnt
FROM SubjectQuestion
GROUP BY subject_id
HAVING cnt > 5;

/*43.Count questions per subject*/
SELECT subject_id, COUNT(question_id)
FROM SubjectQuestion
GROUP BY subject_id;

/*44.Subjects having more than 5 questions*/

SELECT subject_id, COUNT(*) cnt
FROM SubjectQuestion
GROUP BY subject_id
HAVING cnt > 5;

/*45. Total marks obtained per exam
46. Exams where total marks > 200
47. Count pass and fail

48.Student Name, Subject Name, Exam Date, Marks
49.Students Who Scored More Than 70
50. Count of Exams Given by Each Student

51.Average Marks Per Subject
5️2. Subjects With More Than 3 Students Appeared
53. Student Exam Details Between Two Dates
54. Total Marks Obtained Per Student
55. Hard Questions Per Subject
57. Students Who Failed
58. Exam Duration With Subject
59. Students From New York Appeared in Exams
60. Count Questions Per Subject
61.Students Appeared in More Than 2 Exams
62. Average Marks Greater Than 60
63. Easy Questions With Subject
64. Students and Total Exams Per Subject
65. Highest Marks Per Exam
66 Lowest Marks Per Subject
67 Students Appeared in Subjects Containing 'Math'
68.Count Students By Gender In Exams
69. Students Who Appeared in 2025 Exams
70. Total Marks Per Subject
71. Students Who Passed More Than 1 Exam
72. Students Ordered By Total Marks Desc
73.Subjects With Exam Duration > 90
74. Students From Chicago Who Passed
75 Total Questions By Difficult
76 Students With Marks Between 50 and 80
78.Full Report (Student + Subject + Questions Count + Marks)
*/
