-- CREATE DATABASE
CREATE DATABASE UniversityDB;
USE UniversityDB;
-- TABLE: Hostel
CREATE TABLE Hostel (
    HostelID INT PRIMARY KEY,
    HostelName VARCHAR(50),
    NumberOfSeats INT
);
-- TABLE: Faculty
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    Salary DECIMAL(10, 2),
    Name VARCHAR(50),
    Department VARCHAR(50)
);
-- TABLE: Student
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    City VARCHAR(30),
    State VARCHAR(30),
    PinCode VARCHAR(10),
    BirthDate DATE,
    HostelID INT,
    FacultyID INT
);
-- TABLE: Phone (Student Phones)
CREATE TABLE Phone (
    StudentID INT,
    PhoneNumber VARCHAR(15),
    PRIMARY KEY (StudentID, PhoneNumber)
);
-- TABLE: Mobile (Faculty Phones)
CREATE TABLE Mobile (
    FacultyID INT,
    MobileNumber VARCHAR(15),
    PRIMARY KEY (FacultyID, MobileNumber)
);
-- TABLE: Course
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    Duration VARCHAR(20),
    CourseName VARCHAR(50),
    DepartmentID INT
);
-- TABLE: Enrols
CREATE TABLE Enrols (
    CourseID INT,
    StudentID INT,
    PRIMARY KEY (CourseID, StudentID)
);
-- TABLE: Department
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    CourseName VARCHAR(50)
);
-- TABLE: Exam
CREATE TABLE Exam (
    ExamCode INT PRIMARY KEY,
    Room VARCHAR(10),
    ExamDate DATE,
    ExamTime TIME,
    DepartmentID INT
);
-- TABLE: Subject
CREATE TABLE Subject (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(100),
    FacultyID INT
);
-- ======================
-- FOREIGN KEYS
-- ======================
ALTER TABLE Student
ADD CONSTRAINT FK_Student_Hostel FOREIGN KEY (HostelID) REFERENCES Hostel(HostelID);
ALTER TABLE Student
ADD CONSTRAINT FK_Student_Faculty FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID);
ALTER TABLE Phone
ADD CONSTRAINT FK_Phone_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE Mobile
ADD CONSTRAINT FK_Mobile_Faculty FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID);
ALTER TABLE Enrols
ADD CONSTRAINT FK_Enrols_Course FOREIGN KEY (CourseID) REFERENCES Course(CourseID);
ALTER TABLE Enrols
ADD CONSTRAINT FK_Enrols_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE Course
ADD CONSTRAINT FK_Course_Department FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);
ALTER TABLE Exam
ADD CONSTRAINT FK_Exam_Department FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);
ALTER TABLE Subject
ADD CONSTRAINT FK_Subject_Faculty FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID);