USE School

DROP TABLE IF EXISTS ExamResult
DROP TABLE IF EXISTS Student
DROP TABLE IF EXISTS Exam
DROP TABLE IF EXISTS Education

CREATE TABLE Education (
    education_name VARCHAR(30) PRIMARY KEY
)

CREATE TABLE Exam (
    exam_id INT IDENTITY(1,1) PRIMARY KEY,
    education_name VARCHAR(30) FOREIGN KEY REFERENCES education(education_name),
    exam_name VARCHAR(40)
)

CREATE TABLE Student (
    student_id INT IDENTITY(1,1) PRIMARY KEY,
    education_name VARCHAR(30) FOREIGN KEY REFERENCES education(education_name),
    navn varchar(40)
)

CREATE TABLE ExamResult (
    exam_id INT FOREIGN KEY REFERENCES exam(exam_id),
    student_id INT FOREIGN KEY REFERENCES student(student_id),
    grade INT CHECK (grade in (-3, 0, 2, 4, 7, 10, 12))
)