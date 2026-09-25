1) CREATE DATABASE university_db;
2) CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);
3) CREATE TABLE courses(
     course_id INT PRIMARY KEY AUTO_INCREMENT,
    * course_name VARCHAR(50) NOT NULL,
    * credits INT NOT NULL DEFAULT 3,
    * dept_id INT,
     FOREIGN KEY(dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
    
);
4) CREATE TABLE students(
    student_id PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL
);
5) CREATE TABLE enrollments(
     enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
     student_id INT (foreign key),
    course_id INT (foreign key),
    FOREIGN KEY(student_id)REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);
6) CREATE TABLE health_records(
     record_id INT PRIMARY KEY AUTO_INCREMENT,
     student_id INT ,
     blood_group VARCHAR(10),
     FOREIGN KEY(student_id) REFERENCES students(student_id) ON DELETE CASCADE
);
7)INSERT INTO departments VALUES

("computer science"),
("mathematics"),
("physics");
INSERT insto courses VALUES
   ("database systems" ,4 ,1),
   ("algorithms", 3,1),
   ("calculus ",4,2);
   ("quantum mechanics", 5 ,3);
   INSERT INTO students
       ("alice"),
        ("bob"),
        ("charlie"),
        ("samy"),
        ("eva");
INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 2),
(5, 3, 3),
(6, 4, 3),
(7, 4, 4);

INSERT INTO health_records (record_id, student_id, blood_group)
VALUES
(1, 1, 'A+'),
(2, 2, 'B+'),
(3, 3, 'O-'),
(4, 4, 'AB+'),
(5, 5, 'A-');


