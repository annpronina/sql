-- CREATE DATABASE school_management_system;
-- USE school_management_system;

-- Skolas vadības sistēmas datubāze (School Management System)
-- Izveidot datubāzi, kas reprezentē skolēnus, skolotājus,
-- kursus un departamentus, parādot dažādas attiecības starp tiem.

-- 1. uzdevums
-- Izveidot skolas vadības datubāzi (ar SQL sintaksi)

-- 2. uzdevums
-- Katram skolēnam (vārds un e-pasts) ir viens profils ar papildinformāciju
-- (adrese un telefona numurs), un katram profilam pieder tikai viens skolēns.
-- Izveidot nepieciešamās datubāzes tabulas un saites, lai glabātu minētos datus.
-- Ievadīt piecu skolēnu un viņu profilu datus. Izmantot “LAST_INSERT_ID()” funkciju
-- Izveidot vaicājumu, lai atrastu visus skolēnus kopā ar viņu profiliem.

CREATE TABLE Teachers (
		teacher_id INT AUTO_INCREMENT PRIMARY KEY,
		teacher_name VARCHAR(50) NOT NULL,
		teacher_email VARCHAR(50),
		department_id INT,
		FOREIGN KEY (department_id) REFERENCES Departments(department_id));

CREATE TABLE Students (
		student_id INT AUTO_INCREMENT PRIMARY KEY, 
-- profile_id INT NOT NULL,
		student_name VARCHAR(50) NOT NULL,
		student_email VARCHAR(50),
        FOREIGN KEY(profile_id) REFERENCES Student_Profiles(profile_id)
        );
        
CREATE TABLE Courses (
		course_id INT AUTO_INCREMENT PRIMARY KEY, 
        course_name VARCHAR(50) NOT NULL, 
		department_id INT,
		FOREIGN KEY (department_id) REFERENCES Departments(department_id));
        
	CREATE TABLE Departments (
		department_id INT AUTO_INCREMENT PRIMARY KEY,
		department_name VARCHAR(50) NOT NULL);
    
	CREATE TABLE Student_Profiles (
	profile_id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT,
	address VARCHAR(50),
	phone_number VARCHAR(50),
	FOREIGN KEY (student_id) REFERENCES Students(student_id));
    
    
INSERT INTO Students(student_name, student_email)
VALUES ('Janis Berzins', 'janis.berzins@gmail.com'),
	   ('Anna Pronina', 'anna.pronina@gmail.com'),
       ('Aivars Trumars', 'aivars.trumars@gmail.com');
	
INSERT INTO Student_Profiles(student_id, address, phone_number)
VALUES ('1', 'Riga', '12345678'),
	   ('2', 'Ventspils', '3456789'),
	   ('3', 'Sigulda', '213231253');

SELECT s.student_id, s.student_name, s.student_email,  p.address, p.phone_number
FROM Students s
JOin Student_Profiles p ON s.student_id = p.student_id;
