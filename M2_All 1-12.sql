--------------------------------------------------------------------------------------------------------------

------------------------------------    2.1       ------------------------------------ 
-- Adding 10 records to the Course table
INSERT INTO Course(name, major, is_offered, credit_hours, semester)  VALUES
( 'Mathematics 2', 'Science', 1, 3, 2),
( 'CSEN 2', 'Engineering', 1, 4, 2),
( 'Database 1', 'MET', 1, 3, 5),
( 'Physics', 'Science', 0, 4, 1),
( 'CSEN 4', 'Engineering', 1, 3, 4),
( 'Chemistry', 'Engineering', 1, 4, 1),
( 'CSEN 3', 'Engineering', 1, 3, 3),
( 'Computer Architecture', 'MET', 0, 3, 6),
( 'Computer Organization', 'Engineering', 1, 4, 4),
( 'Database2', 'MET', 1, 3, 6);


-- Adding 10 records to the Instructor table
INSERT INTO Instructor(name, email, faculty, office) VALUES
( 'Professor Smith', 'prof.smith@example.com', 'MET', 'Office A'),
( 'Professor Johnson', 'prof.johnson@example.com', 'MET', 'Office B'),
( 'Professor Brown', 'prof.brown@example.com', 'MET', 'Office C'),
( 'Professor White', 'prof.white@example.com', 'MET', 'Office D'),
( 'Professor Taylor', 'prof.taylor@example.com', 'Mechatronics', 'Office E'),
( 'Professor Black', 'prof.black@example.com', 'Mechatronics', 'Office F'),
( 'Professor Lee', 'prof.lee@example.com', 'Mechatronics', 'Office G'),
( 'Professor Miller', 'prof.miller@example.com', 'Mechatronics', 'Office H'),
( 'Professor Davis', 'prof.davis@example.com', 'IET', 'Office I'),
( 'Professor Moore', 'prof.moore@example.com', 'IET', 'Office J');

-- Adding 10 records to the Semester table
INSERT INTO Semester(semester_code, start_date, end_date) VALUES
('W23', '2023-10-01', '2024-01-31'),
('S23', '2023-03-01', '2023-06-30'),
('S23R1', '2023-07-01', '2023-07-31'),
('S23R2', '2023-08-01', '2023-08-31'),
('W24', '2024-10-01', '2025-01-31'),
('S24', '2024-03-01', '2024-06-30'),
('S24R1', '2024-07-01', '2024-07-31'),
('S24R2', '2024-08-01', '2024-08-31')

-- Adding 10 records to the Advisor table
INSERT INTO Advisor(name, email, office, password) VALUES --CHANGE FROM advisor_name to name
( 'Dr. Anderson', 'anderson@example.com', 'Office A', 'password1'),
( 'Prof. Baker', 'baker@example.com', 'Office B', 'password2'),
( 'Dr. Carter', 'carter@example.com', 'Office C', 'password3'),
( 'Prof. Davis', 'davis@example.com', 'Office D', 'password4'),
( 'Dr. Evans', 'evans@example.com', 'Office E', 'password5'),
( 'Prof. Foster', 'foster@example.com', 'Office F', 'password6'),
( 'Dr. Green', 'green@example.com', 'Office G', 'password7'),
( 'Prof. Harris', 'harris@example.com', 'Office H', 'password8'),
( 'Dr. Irving', 'irving@example.com', 'Office I', 'password9'),
( 'Prof. Johnson', 'johnson@example.com', 'Office J', 'password10');

-- Adding 10 records to the Student table
INSERT INTO Student (f_name, l_name, GPA, faculty, email, major, password, semester, acquired_hours, assigned_hours, advisor_id)   VALUES 
( 'John', 'Doe', 3.5, 'Engineering', 'john.doe@example.com', 'CS', 'password123', 1, 90, 30, 1),
( 'Jane', 'Smith', 3.8, 'Engineering', 'jane.smith@example.com', 'CS', 'password456', 2, 85, 34, 2),
( 'Mike', 'Johnson', 3.2, 'Engineering', 'mike.johnson@example.com', 'CS', 'password789', 3, 75, 34, 3),
( 'Emily', 'White', 3.9, 'Engineering', 'emily.white@example.com', 'CS', 'passwordabc', 4, 95, 34, 4),
( 'David', 'Lee', 3.4, 'Engineering', 'david.lee@example.com', 'IET', 'passworddef', 5, 80, 34, 5),
( 'Grace', 'Brown', 3.7, 'Engineering', 'grace.brown@example.com', 'IET', 'passwordghi', 6, 88, 34, 6),
( 'Robert', 'Miller', 3.1, 'Engineerings', 'robert.miller@example.com', 'IET', 'passwordjkl', 7, 78, 34, 7),
( 'Sophie', 'Clark', 3.6, 'Engineering', 'sophie.clark@example.com', 'Mechatronics', 'passwordmno', 8, 92, 34, 8),
( 'Daniel', 'Wilson', 3.3, 'Engineering', 'daniel.wilson@example.com', 'DMET', 'passwordpqr', 9, 87, 34, 9),
( 'Olivia', 'Anderson', 3.7, 'Engineeringe', 'olivia.anderson@example.com', 'Mechatronics', 'passwordstu', 10, 89, 34, 10);
-- Adding 10 records to the Student_Phone table
INSERT INTO Student_Phone(student_id, phone_number) VALUES
(4, '456-789-0123'),
(5, '567-890-1234'),
(6, '678-901-2345'),
(7, '789-012-3456'),
(8, '890-123-4567'),
(9, '901-234-5678'),
(10, '012-345-6789');

-- Adding 10 records to the PreqCourse_course table
INSERT INTO PreqCourse_course(prerequisite_course_id, course_id) VALUES
(2, 7),
(3, 10),
(2, 4),
(5, 6),
(4, 7),
(6, 8),
(7, 9),
(9, 10),
(9, 1),
(10, 3);


-- Adding 10 records to the Instructor_Course table
INSERT INTO Instructor_Course (instructor_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


-- Adding 10 records to the Student_Instructor_Course_Take table
INSERT INTO Student_Instructor_Course_Take (student_id, course_id, instructor_id, semester_code,exam_type, grade) VALUES
(1, 1, 1, 'W23', 'Normal', 'A'),
(2, 2, 2, 'S23', 'First_makeup', 'B'),
(3, 3, 3, 'S23R1', 'Second_makeup', 'C'),
(4, 4, 4, 'S23R2', 'Normal', 'B+'),
(5, 5, 5, 'W23', 'Normal', 'A-'),
(6, 6, 6, 'W24', 'First_makeup', 'B'),
(7, 7, 7, 'S24', 'Second_makeup', 'C+'),
(8, 8, 8, 'S24R1', 'Normal', 'A+'),
(9, 9, 9, 'S24R2', 'Normal', 'FF'),
(10, 10, 10, 'S24', 'First_makeup', 'B-');



-- Adding 10 records to the Course_Semester table
INSERT INTO Course_Semester (course_id, semester_code) VALUES
(1, 'W23'),
(2, 'S23'),
(3, 'S23R1'),
(4, 'S23R2'),
(5, 'W23'),
(6, 'W24'),
(7, 'S24'),
(8, 'S24R1'),
(9, 'S24R2'),
(10, 'S24');

-- Adding 10 records to the Slot table
INSERT INTO Slot (day, time, location, course_id, instructor_id) VALUES
( 'Monday', 'First', 'Room A', 1, 1),
( 'Tuesday', 'First', 'Room B', 2, 2),
( 'Wednesday', 'Third', 'Room C', 3, 3),
( 'Thursday', 'Fifth', 'Room D', 4, 4),
( 'Saturday', 'Second', 'Room E', 5, 5),
( 'Monday', 'Fourth', 'Room F', 6, 6),
( 'Tuesday', 'Second', 'Room G', 7, 7),
( 'Wednesday', 'Fifth', 'Room H', 8, 8),
( 'Thursday', 'First', 'Room I', 9, 9),
( 'Sunday', 'Fourth', 'Room J', 10, 10);


-- Adding 10 records to the Graduation_Plan table
-- CHANGED FROM expected_grad_semester TO expected_grad_date
INSERT INTO Graduation_Plan (semester_code, semester_credit_hours, expected_grad_date, student_id, advisor_id) VALUES
( 'W23', 90,    '2024-01-31' ,   1, 1),
( 'S23', 85,    '2025-01-31'  ,     2, 2),
( 'S23R1', 75,  '2025-06-30' ,  3, 3),
( 'S23R2', 95,  '2024-06-30' , 4, 4),
( 'W23', 80,    '2026-01-31'   ,  5, 5),
( 'W24', 88,    '2024-06-30'   ,    6, 6),
( 'S24', 78,    '2024-06-30'    ,  7, 7),
( 'S24R1', 92,  '2025-01-31'  , 8, 8),
( 'S24R2', 87,  '2024-06-30'    ,  9, 9),
( 'S24', 89,    '2025-01-31'    ,    10, 10);

-- Adding 10 records to the GradPlan_Course table
INSERT INTO GradPlan_Course(plan_id, semester_code, course_id) VALUES
(1, 'W23', 1),
(2, 'S23', 2),
(3, 'S23R1', 3),
(4, 'S23R2', 4),
(5, 'W23', 5),
(6, 'W24', 6),
(7, 'S24', 7),
(8, 'S24R1', 8),
(9, 'S24R2', 9),
(10, 'S24', 10);

-- Adding 10 records to the Request table
INSERT INTO Request (type, comment, status, credit_hours, course_id, student_id, advisor_id) VALUES 
( 'course', 'Request for additional course', 'pending', null, 1, 1, 2),
( 'course', 'Need to change course', 'accepted', null, 2, 2, 2),
( 'credit_hours', 'Request for extra credit hours', 'pending', 3, null, 3, 3),
( 'credit_hours', 'Request for reduced credit hours', 'accepted', 1, null, 4, 5),
( 'course', 'Request for special course', 'rejected', null, 5, 5, 5),
( 'credit_hours', 'Request for extra credit hours', 'pending', 4, null, 6, 7),
( 'course', 'Request for course withdrawal', 'accepted', null, 7, 7, 7),
( 'course', 'Request for course addition', 'rejected', null, 8, 8, 8),
( 'credit_hours', 'Request for reduced credit hours', 'accepted', 2, null, 9, 8),
( 'course', 'Request for course substitution', 'pending', null, 10, 10, 10);

-- Adding 10 records to the MakeUp_Exam table
INSERT INTO MakeUp_Exam (date, type, course_id) VALUES
('2023-02-10', 'First MakeUp', 1),
('2023-02-15', 'First MakeUp', 2),
('2023-02-05', 'First MakeUp', 3),
('2023-02-25', 'First MakeUp', 4),
('2023-02-05', 'First MakeUp', 5),
('2024-09-10', 'Second MakeUp', 6),
('2024-09-20', 'Second MakeUp', 7),
('2024-09-05', 'Second MakeUp', 8),
('2024-09-10', 'Second MakeUp', 9),
( '2024-09-15', 'Second MakeUp', 10);

-- Adding 10 records to the Exam_Student table
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (1, 1, 1);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (1, 2, 2);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (1, 3, 3);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (2, 2, 4);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (2, 3, 5);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (2, 4, 6);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (3, 3, 7);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (3, 4, 8);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (3, 5, 9);
INSERT INTO Exam_Student(exam_id, student_id,course_id) VALUES (4, 4, 10);

-- Adding 10 records to the Payment table
-- CHANGED FROM startdate TO start_date
INSERT INTO Payment (amount, start_date,n_installments, status, fund_percentage, student_id, semester_code, deadline)  VALUES
( 500, '2023-11-22', 1, 'notPaid', 50.00, 1, 'W23', '2023-12-22'),
( 700, '2023-11-23', 1, 'notPaid', 60.00, 2, 'S23', '2023-12-23'),
( 600, '2023-11-24', 4, 'notPaid', 40.00, 3, 'S23R1', '2024-03-24'),
( 800, '2023-11-25', 1, 'notPaid', 70.00, 4, 'S23R2', '2023-12-25'),
( 550, '2023-11-26', 5, 'notPaid', 45.00, 5, 'W23', '2024-04-26'),
( 900, '2023-11-27', 1, 'notPaid', 80.00, 6, 'W24', '2023-12-27'),
( 750, '2023-10-28', 2, 'Paid', 65.00, 7, 'S24', '2023-12-28'),
( 620, '2023-08-29', 4, 'Paid', 55.00, 8, 'S24R1', '2023-12-29'),
( 720, '2023-11-30', 2, 'notPaid', 75.00, 9, 'S24R2', '2024-01-30'),
( 580, '2023-11-30', 1, 'Paid', 47.00, 10, 'S24', '2023-12-31');



-- Adding 10 records to the Installment table
-- CHANGED FROM startdate TO start_date
INSERT INTO Installment (payment_id, start_date, amount, status, deadline) VALUES
(1, '2023-11-22', 50, 'notPaid','2023-12-22'),
(2, '2023-11-23', 70, 'notPaid','2023-12-23'),
(3, '2023-12-24', 60, 'notPaid','2024-01-24'),
( 4,'2023-11-25', 80, 'notPaid','2023-12-25'),
(5, '2024-2-26', 55, 'notPaid','2024-3-26'),
( 6,'2023-11-27', 90, 'notPaid','2023-12-06'),
(7, '2023-10-28', 75, 'Paid','2023-11-28'),
( 7,'2023-11-28', 62, 'Paid','2023-12-28'),
( 9,'2023-12-30', 72, 'notPaid','2024-01-30'),
( 10,'2023-11-30', 58, 'Paid','2023-12-30');
-- 1)
CREATE DATABASE Advising_Team_94;

--HELPER
go
create function student_financial_status(@StudentID int)
returns bit
AS
BEGIN
declare @ReturnValue bit
if @StudentID in (
				select S.student_id
				from Student S inner join Payment P on S.student_id=P.student_id inner join Installment I on P.payment_id = I.payment_id
				where I.status='NotPaid' and I.deadline<current_timestamp
				)
				BEGIN
					set @ReturnValue = 0
				END
				ELSE 
				BEGIN
					set @ReturnValue = 1
				END
return @ReturnValue
END
go

--HELPER

CREATE FUNCTION canTake(@studentID int,@course_id int) RETURNS BIT
AS
BEGIN
DECLARE @return bit
    IF EXISTS((SELECT prerequisite_course_id FROM PreqCourse_course WHERE course_id = @course_id)
    EXCEPT
    (SELECT course_id
    FROM Student_Instructor_Course_Take 
    WHERE student_id = @studentID))
    --if exists a prereq course that the student hasn't taken then false
        SET @return = 0
    ELSE
	BEGIN
        SET @return = 1
	END
RETURN @return
END
GO

-- HELPER
CREATE FUNCTION getStartDate(@semester_code varchar(40)) RETURNS DATE
AS
BEGIN
    DECLARE @currentStartDate DATE

    SELECT @currentStartDate = start_date
    FROM Semester
    WHERE semester_code = @semester_code
    RETURN @currentStartDate
END
GO

-- 2)
go
Create Proc  CreateAllTables
AS

create table Advisor(
advisor_id int IDENTITY Primary key,
name varchar(40),
email varchar(40),
office varchar(40),
password varchar(40));

-- exec the helper method student_financial_status before creating the table student to avoid errors
create table Student(
student_id int Identity Primary key, /* Not null on all primary keys and foreign keys? */
f_name varchar(40),
l_name varchar(40),
gpa decimal Check(gpa>=0.7 and gpa<=5.0),
faculty varchar(40),
email varchar(40),
major varchar(40),
password varchar(40),
financial_status as (dbo.student_financial_status(Student.student_id)), 
semester int,
acquired_hours int check(acquired_hours>=34),
assigned_hours int check(assigned_hours>=0 and assigned_hours<=34),
advisor_id int,
FOREIGN KEY(advisor_id) REFERENCES Advisor(advisor_id));

create table Student_Phone(
student_id int,
phone_number varchar(40),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
PRIMARY KEY (student_id,phone_number)
);



create table Course(
course_id int Identity Primary key,
name varchar(40),
major varchar(40),
is_offered bit,
credit_hours int check(credit_hours>=0),
semester int check(semester>=1)
);

create table PreqCourse_course(
prerequisite_course_id int,
course_id int,
FOREIGN KEY (prerequisite_course_id) REFERENCES Course(course_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id),
PRIMARY KEY(prerequisite_course_id, course_id)
);

create table Instructor(
instructor_id int identity Primary key,
name varchar(40),
email varchar(40),
faculty varchar(40),
office varchar(40));

create table Instructor_Course(
course_id int,
instructor_id int,
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
PRIMARY KEY (course_id,instructor_id));

create table Student_Instructor_Course_Take(
student_id int,
course_id int,
instructor_id int,
semester_code varchar(40), 
exam_type varchar(40) default 'Normal'check (exam_type in('Normal','First_makeup','Second_makeup')),
grade varchar(40),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
PRIMARY KEY (student_id,course_id,semester_code));

create table Semester(
semester_code varchar(40) primary key check (semester_code in ('W%','S%')),
start_date date,
end_date date,
CHECK(start_date <= end_date));

create table Course_Semester(
course_id int,
semester_code varchar(40),
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (semester_code) REFERENCES Semester(semester_code),
PRIMARY KEY (course_id,semester_code));

create table Slot(
slot_id int IDENTITY Primary key,
day varchar(40) CHECK (day IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
time varchar(40),   
location varchar(40),
course_id int,
instructor_id int,
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id));

create table Graduation_Plan(
plan_id int IDENTITY,
semester_code varchar(40),
semester_credit_hours int,
expected_grad_date date,
advisor_id int,
student_id int,
FOREIGN KEY (advisor_id) REFERENCES Advisor(advisor_id),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
PRIMARY KEY(plan_id,semester_code));

Create table GradPlan_Course(
plan_id int,
semester_code varchar(40),
course_id int,
FOREIGN KEY (plan_id,semester_code) REFERENCES Graduation_Plan(plan_id,semester_code),
PRIMARY KEY(plan_id,semester_code,course_id));


create table Request(
request_id int IDENTITY primary key,
type varchar(40) CHECK (type in('course','credit_hours')),
comment varchar(40),
status varchar(40) default 'pending' CHECK(status IN ('pending', 'accepted', 'rejected')),
credit_hours int ,
student_id int,
advisor_id int,
course_id int,
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (advisor_id) REFERENCES Advisor(advisor_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id));

create table MakeUp_Exam(
exam_id int IDENTITY primary key,
date datetime,
type varchar(40) CHECK (type in('First MakeUp','Second MakeUp')), -- According to given insertions even though spelled differently in student_instructor_course_take
course_id int,
FOREIGN KEY (course_id) REFERENCES Course(course_id));   

create table Exam_Student(
exam_id int, 
student_id int,
course_id int,
FOREIGN KEY (exam_id) REFERENCES MakeUp_Exam(exam_id),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
PRIMARY KEY(exam_id,student_id));

create table Payment(
payment_id int IDENTITY primary key,
amount int CHECK (amount>=0), 
deadline datetime, 
n_installments int,
status varchar(40) default 'notPaid' check(status in ('Paid','notPaid')),
fund_percentage decimal,
start_date datetime,
student_id int,
semester_code varchar(40),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (semester_code) REFERENCES Semester(semester_code));


create table Installment(
payment_id int,
deadline datetime,
amount int Check(amount>=0),
status varchar(40) default 'notPaid' check(status in ('Paid','notPaid')), 
start_date datetime
FOREIGN KEY (payment_id) REFERENCES Payment(payment_id),
PRIMARY KEY(payment_id,deadline));
go

-- 3)
GO
CREATE PROC DropAllTables
AS
DROP TABLE Installment
DROP TABLE Payment
DROP TABLE Exam_Student
DROP TABLE MakeUp_Exam
DROP TABLE Request
DROP TABLE GradPlan_Course
DROP TABLE Graduation_Plan
DROP TABLE Slot
DROP TABLE Course_Semester
DROP TABLE Semester
DROP TABLE Student_Instructor_Course_Take
DROP TABLE Instructor_Course
DROP TABLE Instructor
DROP TABLE PreqCourse_Course
DROP TABLE Course
DROP TABLE Student_Phone
DROP TABLE Student
DROP TABLE Advisor
GO


GO

--4)
CREATE PROC clearAllTables
AS
delete from Installment 
delete from Payment
delete from Exam_Student
delete from MakeUp_Exam
delete from Request
delete from GradPlan_Course
delete from Graduation_Plan
delete from Slot
delete from Course_Semester
delete from Semester
delete from Student_Instructor_Course_Take
delete from Instructor_Course
delete from Instructor
delete from PreqCourse_Course
delete from Course
delete from Student_Phone
delete from Student
delete from Advisor
GO

--------------------------------------------------------------------------------------------------------------

------------------------------------    2.2       ------------------------------------ 

-- A)
exec CreateAllTables

GO
CREATE VIEW view_Students
AS
SELECT * 
FROM Student                    
WHERE financial_status = 1      
GO                              


-- B)

GO
CREATE VIEW view_Course_prerequisites
AS
SELECT C1.course_id as 'Course ID', C1.name as 'Course Name', C1.major as 'Course Major', C1.is_offered as 'Course isOffered',C1.credit_hours as 'Course Credit Hours',C1.semester as 'Course Semester',PC.course_id as 'Prerequisite ID', C2.name as 'Prerequisite Name', C2.major as 'Prerequisite Major', C2.is_offered as 'Prerequisite isOffered', C2.credit_hours as 'Prerequisite Credit Hours',C2.semester as 'Prerequisite Semester'
FROM Course C1
LEFT OUTER JOIN PreqCourse_course PC ON C1.course_id = PC.course_id
LEFT OUTER JOIN Course C2 ON C2.course_id = PC.prerequisite_course_id
GO

-- C)

CREATE VIEW Instructors_AssignedCourses
AS
SELECT I.instructor_id as 'Instructor ID',I.name as 'Instructor Name',I.email as 'Instructor email',I.faculty as 'Instructor Faculty',I.office as 'Instructor Office',C.course_id as 'Course ID', C.name as 'Course Name', C.major as 'Course Major', C.is_offered as 'Course isOffered',credit_hours as 'Course Credit Hours',semester as 'Course Semester'
FROM Instructor I LEFT OUTER JOIN Instructor_Course IC ON I.instructor_id = IC.instructor_id 
LEFT OUTER JOIN Course C ON IC.course_id = C.course_id
GO

-- D)

CREATE VIEW Student_Payment
AS
SELECT P.payment_id AS 'Payment ID', P.amount AS 'Payment Amount', P.deadline AS 'Payment Deadline', P.n_installments AS 'Payment N_installments', P.status AS 'Payment Status', P.fund_percentage AS 'Payment Fund_percentage', P.start_date AS 'Payment Start_date', P.semester_code AS 'Payment Semester_code',S.student_id AS 'Student ID', S.f_name AS 'Student F_name', S.l_name AS 'Student L_name', S.gpa AS 'Student GPA', S.faculty AS 'Student Faculty', S.email AS 'Student Email', S.major AS 'Student Major', S.password AS 'Student Password', S.financial_status AS 'Student Financial_status', S.semester AS 'Student Semester', S.acquired_hours AS 'Student Acquired_hours', S.assigned_hours AS 'Student Assigned_hours', S.advisor_id AS 'Student’s Advisor_id'
FROM Payment P LEFT OUTER JOIN Student S ON P.student_id = S.student_id
GO


-- E)

go
Create View Courses_Slots_Instructor 
AS
Select C.course_id as 'CourseID', C.name as 'Course.name', S.slot_id as 'Slot ID', S.day as 'Slot Day', S.time as 'Slot Time', S.location as 'Slot Location', I.name as 'Slot’s Instructor name'
From Course C Left outer join Slot S On C.course_id = S.course_id Left outer join Instructor I on S.instructor_id = I.instructor_id
go

-- F)

GO
Create View Courses_MakeupExams
AS
Select C.name as 'Course’s name', C.semester as 'Course’s semester', MU_E.exam_id AS 'MakeUp_Exam ID', MU_E.date AS 'MakeUp_Exam Date', MU_E.type AS 'MakeUp_Exam Type', MU_E.course_id AS 'MakeUp_Exam’s Course ID'
From Course C left outer join MakeUp_Exam MU_E On C.course_id = MU_E.Course_id
go

-- G)

go
create view Students_Courses_transcript(Student_ID, Student_Name, Course_ID, Course_Name, Exam_Type, Course_Grade, Semester, Instructor_Name)
As
select S.student_id as 'Student id,',S.f_name + ' ' + S.l_name as 'student name', C.course_id as 'Course ID',C.name as 'course name', SICT.exam_type as 'exam type', SICT.grade as 'course grade',SICT.semester_code as 'semester', I.name as 'Instructor’s name'
from Student S inner join Student_Instructor_Course_Take SICT on S.student_id=SICT.student_id inner join Course C on SICT.course_id=C.course_id inner join Instructor I on SICT.instructor_id = I.instructor_id
go

-- H)

go
create view Semester_offered_Courses(Course_ID, Course_Name, Semester_Code)
As
select C.course_id as 'Course id',C.name as 'Course name',CS.semester_code as 'Semester code'
from  Semester S left outer join Course_Semester CS on S.semester_code=CS.semester_code  left outer join Course C on C.course_id = CS.course_id
go

-- I)

GO
CREATE view Advisors_Graduation_Plan AS
SELECT GP.plan_id AS 'Graduation_Plan ID', GP.semester_code AS 'Graduation_Plan Semester_code', GP.semester_credit_hours AS 'Graduation_Plan Semester_credit_hours', GP.expected_grad_date AS 'Graduation_Plan Expected_grad_date', GP.advisor_id AS 'Graduation_Plan’s Advisor ID', GP.student_id AS 'Graduation_Plan’s Student ID',A.advisor_id as 'Advisor id',A.name as 'Advisor name'
FROM Graduation_Plan GP left outer join Advisor A on GP.advisor_id=A.advisor_id;


--------------------------------------------------------------------------------------------------------------

------------------------------------    2.3       ------------------------------------ 



-- A)
GO
CREATE PROC Procedures_StudentRegistration
@fName  varchar (40),
@lName  varchar (40),
@pass varchar (40),
@faculty varchar (40),
@email varchar (40),
@major varchar (40),
@semester int,
@studentID int OUTPUT
AS
INSERT INTO Student (f_name, l_name, faculty, email, major,password, semester) 
VALUES (@fName,@lName,@faculty,@email,@major,@pass,@semester)
BEGIN
SELECT @studentID = student_id
FROM Student
WHERE f_name = @fName AND l_name = @lName  AND password=@pass AND faculty=@faculty AND email = @email AND major=@major AND semester=@semester
END
GO

-- B)
GO
CREATE PROC Procedures_AdvisorRegistration
@advisorName varchar (40), 
@pass varchar (40), 
@email varchar (40), 
@office varchar (40),
@advisorID int OUTPUT
AS 
INSERT INTO Advisor (name, email, office, password)
VALUES (@advisorName,@email,@office,@pass)
BEGIN
SELECT @advisorID = advisor_id
FROM Advisor
WHERE name = @advisorName AND email = @email AND email=@email AND password=@pass AND office=@office
END


GO


-- C)
GO
CREATE PROC Procedures_AdminListStudents
AS
SELECT S.student_id AS 'Student ID', S.f_name AS 'Student F_name', S.l_name AS 'Student L_name', S.gpa AS 'Student GPA', S.faculty AS 'Student Faculty', S.email AS 'Student Email', S.major AS 'Student Major', S.password AS 'Student Password', S.financial_status AS 'Student Financial_status', S.semester AS 'Student Semester', S.acquired_hours AS 'Student Acquired_hours', S.assigned_hours AS 'Student Assigned_hours', S.advisor_id AS 'Student’s Advisor_id'
FROM Student S
GO

-- D)
GO
CREATE PROC Procedures_AdminListAdvisors
AS
SELECT A.advisor_id AS 'Advisor ID', A.name AS 'Advisor Name', A.email AS 'Advisor Email', A.office AS 'Advisor Office', A.password AS 'Advisor Password'
FROM Advisor A
GO

-- E)

CREATE PROC AdminListStudentsWithAdvisors
AS
SELECT S.student_id AS 'Student ID', S.f_name AS 'Student F_name', S.l_name AS 'Student L_name', S.gpa AS 'Student GPA', S.faculty AS 'Student Faculty', S.email AS 'Student Email', S.major AS 'Student Major', S.password AS 'Student Password', S.financial_status AS 'Student Financial_status', S.semester AS 'Student Semester', S.acquired_hours AS 'Student Acquired_hours', S.assigned_hours AS 'Student Assigned_hours', S.advisor_id AS 'Student’s Advisor_id',A.advisor_id AS 'Advisor ID', A.name AS 'Advisor Name', A.email AS 'Advisor Email', A.office AS 'Advisor Office', A.password AS 'Advisor Password'
FROM Student S LEFT OUTER JOIN Advisor A ON S.advisor_id = A.advisor_id
GO

-- F)

CREATE PROC AdminAddingSemester
@start_date date,
@end_date date,
@semester_code varchar(4)
AS
if(@semester_code in (select semester_code from Semester))
	print('Semester Code is already in the database')
else if(@end_date<@start_date)
	print('End date can not be earlier than Start date')
else
	INSERT INTO Semester VALUES(@semester_code, @start_date, @end_date)
GO


-- G) 

CREATE PROC Procedures_AdminAddingCourse
@major varchar(40), 
@semester int, 
@credit_hours int,
@course_name varchar(40),
@offered bit
AS
INSERT INTO Course(name,major,is_offered,credit_hours,semester) VALUES(@course_name, @major, @offered, @credit_hours, @semester) 
GO

-- H)

CREATE PROC Procedures_AdminLinkInstructor
@InstructorId int, 
@courseId int, 
@slotID int
AS
if(@InstructorId in (select instructor_id from Instructor))
BEGIN
	if(@courseId in (select course_id from Course))
	BEGIN
		if(@slotID in(select slot_id from Slot))
		BEGIN
			UPDATE Slot 
			SET instructor_id = @InstructorId, course_id = @courseId
			WHERE slot_id = @slotID
		END
		ELSE
		BEGIN
			print('Slot ID is not in the database')
		END
	END
	ELSE
	BEGIN
		print('Course ID is not in the database')
	END
END
ELSE
BEGIN
	print('Instructor ID is not in database')
END
GO


-- I)

Create proc  Procedures_AdminLinkStudent /*2.3I*/
@InstructorID int,
@StudentID int,
@CourseID int,
@semester_code varchar(40)
AS
if(@StudentID not in(Select student_id from student))
  print('Invalid studentID')
else if(@CourseID not in(Select course_id from course))
  print('Invalid courseID')
else if (@InstructorID not in(Select instructor_id from instructor))
  print('Invalid instructorID')
else if(@semester_code not in(Select semester_Code from semester))
  print('Invalid semester')
else
	Insert Into Student_Instructor_Course_Take(student_id,course_id,instructor_id,semester_Code)
	Values(@StudentID , @CourseID, @InstructorID, @semester_code)
go

-- J)

Create proc Procedures_AdminLinkStudentToAdvisor /*2.3J*/
@studentID int,
@advisorID int
AS
if(@StudentID not in(Select student_id from student))
  print('Invalid studentID')
else if (@advisorID not in(Select advisor_id from Advisor))
  print('Invalid instructorID')
else
	update student
	Set advisor_id = @advisorID  
	where @studentID = advisor_id
go

-- K)

Create proc Procedures_AdminAddExam /*2.3K*/
@Type varchar(40),
@date datetime,
@courseID int
AS
if(@courseID not in (select course_id from Course))
	print('Invalid Course')
else
	Insert Into MakeUp_Exam(date,type,course_id) Values(@date, @type, @courseID)
go

-- L)

CREATE PROCEDURE Procedures_AdminIssueInstallment
@paymentID int
AS
IF NOT EXISTS(
SELECT * FROM Payment P
WHERE P.payment_id = @paymentID
)
PRINT ('Invalid input, the payment ID entered does not exist')

ELSE
BEGIN
DECLARE @totalAmount int
DECLARE @nInstallments int
DECLARE @installmentAmount int
DECLARE @installmentDate datetime
DECLARE @num int

SELECT
@totalAmount = amount,
@nInstallments = n_installments
FROM Payment
WHERE payment_id = @paymentID;

select @installmentDate=start_date from Payment where payment_id=@paymentID
SET @installmentAmount = @totalAmount / @nInstallments;
SET @num = 1;
WHILE @num <= @nInstallments
BEGIN
  INSERT INTO Installment (payment_id, deadline, amount, status, start_date)
  VALUES (@paymentID, DATEADD(MONTH, 1, @installmentDate), @installmentAmount, 'notPaid',@installmentDate);
  SET @installmentDate = DATEADD(MONTH, 1, @installmentDate)
  SET @num = @num + 1;
END;
END
go

-- M)

go
create procedure Procedures_AdminDeleteCourse
@courseID int
AS
-- Since we dont use cascade we have to delete/set null to all course_id references
-- Set null to non primary keys and delete the ones where course_id is primary key
delete from slot where course_id=@courseID
delete from PreqCourse_course where course_id=@courseID or prerequisite_course_id=@courseID
delete from Instructor_Course where course_id=@courseID
delete from Student_Instructor_Course_Take where course_id=@courseID --Illogical but to delete course we have to delete it from all tables referencing it first
delete from Course_Semester where course_id=@courseID
delete from Request where course_id=@courseID
update Exam_Student set course_id=null where course_id=@courseID
update MakeUp_Exam set course_id=null where course_id=@courseID
delete from course where course_id = @courseID /* If there isnt a course with given ID it will give that 0 rows are affected */
go 

-- N)

go
create procedure Procedure_AdminUpdateStudentStatus
@StudentID int
AS
IF NOT EXISTS(
SELECT * FROM Student S
WHERE S.student_id = @StudentID
)
PRINT('Invalid input, the student ID entered does not exist')

ELSE
BEGIN
Update Student
-- Contradicting because it is said that financial_status is derived and then we update so can not execute
set financial_status =  dbo.student_financial_status(@StudentID)
		where student_id=@StudentID;
END
go


-- O)

go
create view all_Pending_Requests
AS
select R.request_id AS 'Request ID', R.type AS 'Request Type', R.comment AS 'Request Comment', R.status AS 'Request Status', R.credit_hours AS 'Request Credit_hours', R.student_id AS 'Request’s Student ID', R.advisor_id AS 'Request’s Advisor ID', R.course_id AS 'Request’s Course ID',S.f_name AS 'Student Fname',S.l_name as 'Student Lname',A.name AS 'Advisor Name'
from Request R left outer join Student S on S.student_id = R.student_id left outer join Advisor A on R.advisor_id = A.advisor_id
where R.status = 'pending'
go

-- P)

go
create procedure Procedures_AdminDeleteSlots
@current_semester varchar (40)
AS
delete from Slot
where slot_id not in(select S.slot_id
					from Slot S inner join Course_Semester CS on S.course_id=CS.course_id
					where CS.semester_code=@current_semester) /* Get all slots that are with courses offered in current semester, delete the slots not in that list*/
					/* NOTE: that we cannot do slot_id in (....where CS.semester_code<>@current_semester) because the list can contain a course offered both in current semester and others */
go

-- Q)
GO
CREATE FUNCTION FN_AdvisorLogin(@id int, @password VARCHAR(40))
RETURNS bit
AS
BEGIN
DECLARE @Y bit
if exists(select * from Advisor A where @id= A.advisor_id AND @password=A.password)
	SET @Y= 1
else 
	SET @Y=0
RETURN @Y
END
go

-- R)

GO
CREATE PROC Procedures_AdvisorCreateGP(
@semester_code varchar(40),
@expected_graduation_date date,
@sem_credit_hours int,
@advisor_id int,
@student_id int
)
AS
BEGIN
declare @acq_h int
select @acq_h=acquired_hours
from Student S 
where student_id=@student_id
if(@semester_code not in (select semester_code from semester))
	print('Semester is not in the database')
else if(@advisor_id not in (select advisor_id from Advisor))
	print('Advisor is not in the database')
else if(@student_id not in (select student_id from Student))
	print('Student is not in the database')
else if (157>=@acq_h)
	print('Sum of credit hours is not greater than 157')
else
	INSERT INTO Graduation_Plan (semester_code, semester_credit_hours, expected_grad_date, advisor_id, student_id)
	VALUES (@semester_code, @sem_credit_hours, @expected_graduation_date, @advisor_id, @student_id)
END


-- S)
GO
CREATE PROC Procedures_AdvisorAddCourseGP(
@student_Id int,
@semester_code varchar(40),
@course_name varchar (40)
)
AS
DECLARE @courseID int
DECLARE @planID int
if(@course_name not in (select name from Course))
	print('Course name is not in the database')
else if(@semester_code not in(select semester_code from semester))
	print('Semester code is not in the database')
else if(@student_Id not in (select student_id from Student))
	print('Student is not in the databse')
else if(not exists(select * from Graduation_Plan where semester_code=@semester_code AND student_id=@student_Id))
	-- No Graduation plan with that student id and semester code
	print('Semester Code and Student id do not correspond to any Graduation plan')
else if(not exists(select * from Graduation_Plan where semester_code=@semester_code AND student_id=@student_Id))
	print('No Graduation plan correspond to that semester code and student ID')
else
	-- Assuming if multiple courses are with the same name we take the first ID, rather than giving an error message, a better alternative is having course ID as the 3rd parameter instead of course name
	-- Same assumption for Graduation_Plan ID
	select top 1 @courseID= course_id from Course where name=@course_name
	select top 1 @planID=plan_id from Graduation_Plan where semester_code=@semester_code AND student_id=@student_Id
INSERT INTO GradPlan_Course(plan_id,semester_code, course_id)
VALUES(@planID,@semester_code,@courseID)

-- T)

--(Work In Progress)

GO
CREATE PROC Procedures_AdvisorUpdateGP
@expected_grad_date date,
@student_id int 
AS
BEGIN
if(not exists(select * from Graduation_Plan where student_id=@student_Id))
	-- No Graduation plan with that student id
	print('Student id does not correspond to any Graduation plan')
else
	-- Assuming if we have multiple graduation plans for that student we update all
	UPDATE Graduation_Plan
	SET Graduation_Plan.expected_grad_date = @expected_grad_date
	where student_id=@student_id
END

-- U)

GO
CREATE PROCEDURE Procedures_AdvisorDeleteFromGP
@studentID INT,
@semester_code VARCHAR(40),
@courseID INT
AS
BEGIN
declare @planID int
	if(not exists(select * from Graduation_Plan where semester_code=@semester_code AND student_id=@studentID))
		print('Semester Code and Student id do not correspond to any Graduation plan')
	else 
		delete from GradPlan_Course
		where course_id=@courseID and @semester_code=semester_code and plan_id in (select plan_id from Graduation_Plan where semester_code=@semester_code AND student_id=@studentID)
		-- Assuming we delete course in all plans with that student and semester_code
END

-- V)

GO 
CREATE FUNCTION FN_Advisors_Requests (@advisorID INT)
RETURNS TABLE
AS 
RETURN(
SELECT R.request_id AS 'Request ID', R.type AS 'Request Type', R.comment AS 'Request Comment', R.status AS 'Request Status', R.credit_hours AS 'Request Credit_hours', R.student_id AS 'Request’s Student ID', R.advisor_id AS 'Request’s Advisor ID', R.course_id AS 'Request’s Course ID' FROM Request R
WHERE R.advisor_id = @advisorID
)
GO


-- W)
GO
CREATE PROC Procedures_AdvisorApproveRejectCHRequest
@requestID int, 
@currentSemCode varchar (40)             
AS
DECLARE @amount INT
DECLARE @payment_ID INT
DECLARE @studentID INT
DECLARE @assignedHours INT
DECLARE @requestedHours INT		--(<=3)    -- check that credit hours in request is the requested hours
DECLARE @gpa INT   --(NOT under probation: GPA<=3.7)
DECLARE @totalHours INT --(<34) which is the new assigned hours
-- check that the request type is credit hours request (depending on data types entered)
DECLARE @requestType varchar(40)

IF NOT EXISTS(
SELECT * FROM Request R
WHERE R.request_id = @requestID
)
	PRINT('Invalid input, the request ID entered does not exist')
ELSE
	SELECT @studentID = S.student_id, @requestedHours = R.credit_hours, @assignedHours = S.assigned_hours ,@requestType=R.type
	FROM Request R
	INNER JOIN Student S ON R.student_id = S.student_id
	WHERE request_id = @requestID

	if(not(@requestType='credit_hours'))
		UPDATE Request
		SET status = 'rejected'
		WHERE request_id = @RequestID
	else
		SET @totalHours = @assignedHours + @requestedHours

		IF @requestedHours <=3 AND @totalHours <34 
		BEGIN
		PRINT 'request accepted'

		UPDATE Student
		SET assigned_hours = @totalHours
		WHERE student_id = @studentID

		UPDATE Request
		SET status = 'accepted'
		WHERE request_id = @requestID

		DECLARE @currentPaymentAmount int

		SELECT @payment_id = P.payment_id, @currentPaymentAmount=amount FROM Payment P
		WHERE P.semester_code = @currentSemCode


		SET @amount = @currentPaymentAmount + (1000*@requestedHours)
		UPDATE Payment
		SET amount = @amount --TEST
		WHERE @payment_id = payment_id

		DECLARE @InstallmentDeadline datetime,@InstallmentAmount int
		select top 1 @InstallmentDeadline=deadline,@InstallmentAmount=amount from Installment where payment_id=@payment_ID AND deadline>CURRENT_TIMESTAMP order by deadline

		UPDATE Installment
		SET amount = @InstallmentAmount+(1000*@requestedHours)
		WHERE payment_id = @payment_id AND @InstallmentDeadline=deadline

		END

		ELSE
		BEGIN
		PRINT 'request rejected'

		UPDATE Request
		SET status = 'rejected'
		WHERE request_id = @requestID

END
GO




-- X)

CREATE PROC Procedures_AdvisorViewAssignedStudents
@AdvisorID int,
@major varchar(40)
AS
SELECT S.student_id as 'Student id', S.f_name + ' ' + S.l_name as 'Student name', S.major as 'Student major', C.name as 'Course name'
FROM Student S LEFT OUTER JOIN Student_Instructor_Course_Take SIC ON S.student_id = SIC.student_id LEFT OUTER JOIN Course C ON SIC.course_id = C.course_id
WHERE S.advisor_id = @AdvisorID AND S.major = @major
GO


-- Y)


CREATE PROC Procedures_AdvisorApproveRejectCourseRequest
@RequestID int, 
@currentSemesterCode varchar(40)
AS
IF (@RequestID NOT IN (SELECT request_id FROM Request))
    PRINT 'Request ID not in database'
ELSE
BEGIN
DECLARE @preq bit
DECLARE @hours bit
DECLARE @isOffered bit
DECLARE @gpabit bit
--If those four bits are True then accepted

DECLARE @course_id int
DECLARE @courseHours int
DECLARE @requestType varchar(40)
DECLARE @studentID int
DECLARE @creditHours int

SELECT @course_id = course_id , @courseHours = credit_hours,@requestType=type,@studentID=student_id
FROM Request
WHERE request_id = @RequestID
--Getting the course associated with this request
if(not(@requestType='course'))
begin
	UPDATE Request
	SET status = 'rejected'
	WHERE request_id = @RequestID
end
else
	IF EXISTS(SELECT * FROM Course_Semester WHERE course_id = @course_id AND semester_code = @currentSemesterCode)
		SET @isOffered = 1
	ELSE 
		SET @isOffered = 0

	IF EXISTS((SELECT prerequisite_course_id FROM PreqCourse_course WHERE course_id = @course_id)
	EXCEPT
	(SELECT course_id
	FROM Student_Instructor_Course_Take 
	WHERE student_id = @studentID and grade <>'FA' AND grade is not null))
	--if exists a prereq course that the student hasn't taken then false
		SET @preq = 0
	ELSE
		SET @preq = 1

	DECLARE @assigned_hours int

	--getting student's current assigned hours before adding
	SELECT @assigned_hours = assigned_hours
	FROM Student
	WHERE student_id = @StudentID
	
	select @courseHours=credit_hours
	from Course
	where course_id=@course_id

	-- Get sum of currently taken courses
	select @creditHours=sum(credit_hours) from
	Student_Instructor_Course_Take SICT inner join Course C on C.course_id=SICT.course_id AND grade is null
	where SICT.student_id=@studentID

	-- If adding will be greater than assigned_hours then reject
	IF (@creditHours + @courseHours) > @assigned_hours
		set @hours = 0
	ELSE
		set @hours = 1
	
	-- If on probation then reject
	if(3.7<(select gpa from Student where student_id=@studentID))
		set @gpabit = 0
	else
		set @gpabit = 1

	IF (@preq=1 AND @hours=1 AND @isOffered=1 AND @gpabit=1)
		BEGIN
		UPDATE Request
		SET status = 'accepted'
		WHERE request_id = @RequestID
		INSERT INTO Student_Instructor_Course_Take(student_id,course_id,semester_code) VALUES(@StudentID, @course_id, @currentSemesterCode)
		END
	ELSE
		BEGIN
		UPDATE Request
		SET status = 'rejected'
		WHERE request_id = @RequestID
		END
	--if all conditions where true then approve else reject
END;
GO


-- Z)

go
create procedure Procedures_AdvisorViewPendingRequests
@AdvisorID int
AS
BEGIN
select R.request_id AS 'Request ID', R.type AS 'Request Type', R.comment AS 'Request Comment', R.status AS 'Request Status', R.credit_hours AS 'Request Credit_hours', R.student_id AS 'Request’s Student ID', R.advisor_id AS 'Request’s Advisor ID', R.course_id AS 'Request’s Course ID'
from Request R
where R.status = 'pending' and student_id in (select student_id from student where advisor_id=@AdvisorID)
-- Any pending request of student that advisor id is advising them
END
go

--------------------------------------------------------------------------------------------------------------

-- AA)

GO
CREATE FUNCTION FN_StudentLogin
(@sID INT,@password VARCHAR(40))
RETURNS BIT
AS
BEGIN
DECLARE @returnVal BIT
IF EXISTS
(SELECT * FROM Student S
WHERE S.student_id = @sID AND S.password = @password)
SET @returnVal = 1
ELSE 
SET @returnVal =0

RETURN @returnVal
END
GO

-- BB)

go
Create procedure Procedures_StudentaddMobile
@StudentID int,
@mobile_number varchar(40)
As
IF @StudentID in(Select student_id From Student)/* Check if given student is in the database (Referential Integrity)*/
BEGIN
	Insert into Student_Phone
	Values (@StudentID,@mobile_number)
END
ELSE
BEGIN
	PRINT('Given Student is not in the database, please insert given Student before inserting phone number')
END
go


-- CC)
GO
CREATE FUNCTION FN_SemesterAvailableCourses
(@semCode VARCHAR(40))
RETURNS TABLE
AS
RETURN
(
SELECT C.course_id AS 'Course ID', C.name AS 'Course Name', C.major AS 'Course Major', C.is_offered AS 'Course Is_offered', C.credit_hours AS 'Course Credit_hours', C.semester AS 'Course Semester' 
FROM Course_Semester CS INNER JOIN Course C ON CS.course_id = C.course_id
WHERE CS.semester_code = @semCode)
GO


-- DD)
drop proc Procedures_StudentSendingCourseRequest
go
Create procedure Procedures_StudentSendingCourseRequest
@StudentID int,
@CourseID int,
@Type varchar(40),
@Comment varchar(40)
AS
IF (@StudentID not in(SELECT student_id FROM Student S))
	PRINT('Invalid input, the student ID entered does not exist')
ELSE IF(@CourseID not in(SELECT course_id FROM Course C))
	PRINT('Invalid input, the course ID enetered does not exist')
ELSE
BEGIN
	DECLARE @CourseCreditHours int, @AdvisorID int
	select @AdvisorID=advisor_id from Student where student_id=@StudentID
	SELECT @CourseCreditHours=credit_hours from Course where course_id=@CourseID /* Get credit hours of given course */
	INSERT INTO Request(type,comment,credit_hours,student_id,advisor_id,course_id)
	VALUES (@Type,@Comment,@CourseCreditHours,@StudentID,@AdvisorID,@CourseID)
END
go

-- EE)

go
Create procedure Procedures_StudentSendingCHRequest
@StudentID int,
@CreditHours int,
@Type varchar(40),
@Comment varchar(40)
AS
IF @StudentID in(Select student_id From Student)/* Check if given student is in the database (Referential Integrity)*/
BEGIN
DECLARE @AdvisorID int
	select @AdvisorID=advisor_id from Student where student_id=@StudentID
	INSERT INTO Request(type,comment,credit_hours,student_id,advisor_id,course_id)
	VALUES (@Type,@Comment,@CreditHours,@StudentID,@AdvisorID,null)
END
ELSE
BEGIN
	print('Given Student is not in the database, Please insert given Student before making the Request')
END
go

-- FF)
--NOTE: course id fe gradPlan_course mesh maktoob eno references course

GO
CREATE FUNCTION FN_StudentViewGP
(@sID INT)
RETURNS TABLE
AS
RETURN
(
SELECT S.student_id AS 'Student Id', S.f_name+' '+ S.l_name AS 'Student_name', GP.plan_id AS 'graduation Plan
Id', GPS.course_id AS 'Course id', C.name AS 'Course name', 
	   GP.semester_code AS 'Semester code', GP.expected_grad_date AS 'expected
graduation date', GP.semester_credit_hours AS 'Semester credit hours',GP.advisor_id AS 'advisor id'
FROM Graduation_Plan GP
INNER JOIN Student S ON GP.student_id = S.student_id
INNER JOIN GradPlan_Course GPS ON GP.plan_id = GPS.plan_id
INNER JOIN COURSE C ON GPS.course_id = C.course_id

WHERE GP.student_id = @sID
)
GO

-- GG)
drop function FN_StudentUpcoming_installment
GO
CREATE FUNCTION FN_StudentUpcoming_installment(@studentId INT) RETURNS DATE
AS
BEGIN
DECLARE @deadline DATE

SELECT TOP 1 @deadline = deadline
FROM Installment
WHERE status = 'notPaid' AND payment_id IN (
SELECT payment_id
FROM Payment
WHERE student_id = @studentId)
ORDER BY start_date
 
RETURN @deadline
END
GO


-- HH)

CREATE FUNCTION FN_StudentViewSlot (@CourseID INT, @InstructorID INT)
RETURNS TABLE
AS
RETURN
(
SELECT
S.slot_id as 'Slot ID', S.location as 'location', S.time as 'time', S.day as 'day', C.name as 'Course Name', I.name as 'Instructor name'
FROM Slot S JOIN Course C ON S.course_id = C.course_id JOIN Instructor I ON S.instructor_id = I.instructor_id
WHERE S.course_id = @CourseID AND S.instructor_id = @instructorID);
GO

--II

CREATE PROC Procedures_StudentRegisterFirstMakeup
@StudentID int, 
@courseID int, 
@studentCurrentSemester varchar(40)
AS
IF ((NOT EXISTS(SELECT * FROM Exam_Student WHERE student_id = @StudentID AND course_id = @courseID) AND EXISTS(SELECT * FROM Student_Instructor_Course_Take WHERE student_id = @StudentID AND course_id = @courseID AND semester_code = @studentCurrentSemester AND (grade IN ('F','FF') OR grade is null))))
	-- No makeup exams for that student in that course
	-- Course grade is F,FF or null
BEGIN
	DECLARE @end_date date
	SELECT @end_date = S.end_date
	FROM Semester S
	WHERE S.semester_code = @studentCurrentSemester
 
	DECLARE @exam_id int
	SELECT TOP 1 @exam_id = MU.exam_id
	FROM MakeUP_Exam MU
	WHERE MU.course_id = @courseID AND MU.type = 'First_makeup' AND MU.date <= @end_date
	-- M1 2.4.1 Even courses’ makeup exams are offered at the end of the Spring semester and before the start of the Winter semester. Odd courses makeup exams are offered at the end of the Winter semester and before the start of the Spring semester


	INSERT INTO Student_Instructor_Course_Take(student_id,course_id,semester_code,exam_type)
	VALUES (@StudentID,@courseID,@studentCurrentSemester,'First_makeup')
	INSERT INTO Exam_Student VALUES(@exam_id,@StudentID,@courseID)
END
ELSE
 PRINT 'INVALID INPUT'
GO

-- JJ)
CREATE FUNCTION FN_StudentCheckSMEligiability
(@CourseID INT,
@StudentID INT)
RETURNS BIT
AS
BEGIN
DECLARE @Eligible BIT;
DECLARE @EvenFails int
DECLARE @OddFails int

select @OddFails=count(distinct(course_id))
from Student_Instructor_Course_Take SICT
where (semester_code like 'W%' or semester_code like '%R1') and exam_type='Second_makeup' and grade in ('F','FF') and student_id=@StudentID

select @EvenFails=count(distinct(course_id))
from Student_Instructor_Course_Take SICT
where ((semester_code like 'S%' and semester_code not like '%R%') OR semester_code like '%R2')and exam_type='Second_makeup' and grade in ('F','FF') and student_id=@StudentID

IF (@OddFails>2)
BEGIN
	-- print('Number of Odd semester fails is greater than 2') --Can not print in function
	SET @Eligible = 0
END
ELSE IF (@EvenFails>2)
BEGIN
	-- print('Number of Even semester fails is greater than 2') --Can not print in function
	SET @Eligible = 0
END
ELSE IF EXISTS (
SELECT *
FROM Student_Instructor_Course_Take SI  inner join Semester S on S.semester_code=SI.semester_code
WHERE SI.student_id = @StudentID AND SI.course_id = @CourseID AND SI.exam_type = 'First_makeup' AND (SI.grade in ('F','FF')OR SI.grade is NULL) 
AND not EXISTS(SELECT *  
FROM Student_Instructor_Course_Take SI1 inner join Semester S1 on S1.semester_code=SI1.semester_code
WHERE SI1.student_id = @StudentID AND SI1.course_id = @CourseID AND SI1.exam_type = 'Second_makeup' and S1.start_date>S.start_date)) 
--  if he/she failed or did not attend a first makeup that has not had a second makeup for
BEGIN
 SET @Eligible = 1;
END
ELSE
BEGIN
 SET @Eligible = 0;
END

RETURN @Eligible;
END
Go


-- KK)
Create proc Procedures_StudentRegisterSecondMakeup
@studentID int,
@courseID int,
@student_Current_semester varchar(40)
AS
BEGIN
DECLARE @exam_id int;
DECLARE @isEligible bit;

SET @isEligible = dbo.FN_StudentCheckSMEligiability(@courseID, @studentID);
if(@isEligible=1)
 BEGIN
   SELECT @exam_id = ME.exam_id
   FROM MakeUP_Exam ME
   WHERE @courseID = ME.course_id

   INSERT INTO Exam_Student (exam_id, student_id, course_id) VALUES (@exam_id, @studentID, @courseID);

   INSERT INTO Student_Instructor_Course_Take(student_id, course_id, semester_code,exam_type)
   VALUES (@studentID, @courseID, @student_Current_semester, 'Second_makeup')
END
ELSE
	PRINT('Not eligible for second makeup')
END;
Go

-- LL)
Create proc Procedures_ViewRequiredCourses  
@StudentID int,
@current_semester_code varchar(40)
As
select C.*
from Student S inner join Student_Instructor_Course_Take SI on S.student_id = SI.student_id inner join Course C on SI.course_id = C.course_id
where SI.grade in ('FF','F','FA') and dbo.FN_StudentCheckSMEligiability(C.course_id,@StudentID) = 1 
UNION
select C.*
from Course C left outer join Student_Instructor_Course_Take SI on SI.course_id = C.course_id left outer join Student S on S.student_id = SI.student_id 
where C.major=S.major and C.semester<S.semester
go

-- MM)

GO
CREATE PROC Procedures_ViewOptionalCourse
@student_id int,
@currentSemesterCode varchar(40)
AS
IF ((@student_id NOT IN (SELECT student_id FROM Student))OR(@currentSemesterCode NOT IN (SELECT semester_code FROM Semester)))
    PRINT 'INVALID INPUT'
ELSE
BEGIN
    DECLARE @currentStartDate DATE
    SET @currentStartDate = dbo.getStartDate(@currentSemesterCode)

    (SELECT C.*
    FROM Course C 
    INNER JOIN Course_Semester CS ON C.course_id = CS.course_ID
    INNER JOIN Semester S ON CS.semester_code = S.semester_code
    WHERE S.start_date >= @currentStartDate)
    INTERSECT
    (SELECT C.*
    FROM Course C
    WHERE dbo.canTake(@student_id,C.course_id) = 1)
	EXCEPT
	(Select C.*
	from Course C inner join Student_Instructor_Course_Take SICT on C.course_id=SICT.course_id)
END
GO

-- NN)

GO
CREATE PROC Procedures_ViewMS
@StudentID int 

AS
BEGIN
DECLARE @major varchar(40)
select @major=major
from Student
where @StudentID=student_id

SELECT C.*
FROM Course C
where C.major=@major
EXCEPT
(SELECT C.*
FROM Course C inner JOIN Student_Instructor_Course_Take SICT ON SICT.course_id = C.course_id where
@StudentID=SICT.student_id and (SICT.grade not in ('FF','F','FA') OR SICT.grade is null))
END



-- OO)

GO
CREATE PROC  Procedures_ChooseInstructor
@student_id int,
@instructor_id int,
@course_id int,
@currentSemesterCode varchar(40)
AS
IF ((@student_id NOT IN (SELECT student_id FROM Student))OR(@instructor_id NOT IN (SELECT instructor_id FROM Instructor))OR(@course_id NOT IN (SELECT course_id FROM Course))OR(@currentSemesterCode NOT IN (SELECT semester_code FROM Semester)))
    PRINT 'INVALID INPUT'
ELSE
BEGIN
    IF EXISTS(SELECT * FROM Instructor_Course
    WHERE instructor_id = @instructor_id AND course_id = @course_id
    ) AND EXISTS(SELECT * FROM Course_Semester WHERE course_id = @course_id AND semester_code = @currentSemesterCode)
        BEGIN 
            UPDATE StudentInstructorCourseTake
            SET instructor_id = @instructor_id
            WHERE student_id = @student_id AND course_id = @course_id AND semester_code = @currentSemesterCode
        END
    ELSE
        PRINT 'THIS INSTRUCTOR DOES NOT TEACH THIS COURSE'
END
GO 