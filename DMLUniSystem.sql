-- HOSTEL
INSERT INTO Hostel (HostelID, HostelName) VALUES
(1, 'Al Noor Hostel'),
(2, 'Al Amal Residence'),
(3, 'Al Huda Hall'),
(4, 'Al Shams Lodge'),
(5, 'Al Bayan Dorm');
-- FACULTY
INSERT INTO Faculty (FacultyID, Salary, Name, Department) VALUES
(1, 4500.00, 'Dr. Ahmed Al-Busaidi', 'CS'),
(2, 4700.00, 'Dr. Fatma Al-Zadjali', 'IS'),
(3, 4300.00, 'Dr. Salim Al-Harthy', 'Math'),
(4, 4600.00, 'Dr. Muna Al-Farsi', 'Physics'),
(5, 4200.00, 'Dr. Aisha Al-Kalbani', 'Biology');
-- MOBILE (Faculty phones)
INSERT INTO Mobile (FacultyID, MobileNumber) VALUES
(1, '91111111'),
(2, '92222222'),
(3, '93333333'),
(4, '94444444'),
(5, '95555555');
-- STUDENT
INSERT INTO Student (StudentID, FirstName, LastName, City, State, PinCode, BirthDate, HostelID, FacultyID) VALUES
(101, 'Ali', 'Al-Harthy', 'Muscat', 'OM', '111', '2000-01-01', 1, 1),
(102, 'Sara', 'Al-Kindi', 'Salalah', 'OM', '112', '1999-02-02', 2, 2),
(103, 'Yusuf', 'Al-Lawati', 'Sohar', 'OM', '113', '2001-03-03', 3, 3),
(104, 'Muna', 'Al-Nabhani', 'Nizwa', 'OM', '114', '1998-04-04', 4, 4),
(105, 'Hassan', 'Al-Rawahi', 'Sur', 'OM', '115', '2002-05-05', 5, 5);
-- PHONE (Student phones)
INSERT INTO Phone (StudentID, PhoneNumber) VALUES
(101, '91123456'),
(102, '91234567'),
(103, '91345678'),
(104, '91456789'),
(105, '91567890');
-- DEPARTMENT
INSERT INTO Department (DepartmentID, DepartmentName, CourseName) VALUES
(1, 'Computer Science', 'Database Systems'),
(2, 'Information Systems', 'Web Development'),
(3, 'Mathematics', 'Calculus'),
(4, 'Physics', 'Quantum Mechanics'),
(5, 'Biology', 'Genetics');
-- COURSE
INSERT INTO Course (CourseID, Duration, CourseName, DepartmentID) VALUES
(201, '6 months', 'Database Systems', 1),
(202, '4 months', 'Web Development', 2),
(203, '8 months', 'Calculus', 3),
(204, '5 months', 'Quantum Mechanics', 4),
(205, '6 months', 'Genetics', 5);
-- ENROLS
INSERT INTO Enrols (CourseID, StudentID) VALUES
(201, 101),
(202, 102),
(203, 103),
(204, 104),
(205, 105);
-- EXAM
INSERT INTO Exam (ExamCode, Room, ExamDate, ExamTime, DepartmentID) VALUES
(301, 'A101', '2024-06-01', '09:00', 1),
(302, 'B202', '2024-06-02', '10:00', 2),
(303, 'C303', '2024-06-03', '11:00', 3),
(304, 'D404', '2024-06-04', '12:00', 4),
(305, 'E505', '2024-06-05', '13:00', 5);
-- SUBJECT
INSERT INTO Subject (SubjectID, SubjectName, FacultyID) VALUES
(401, 'Data Structures', 1),
(402, 'Networks', 2),
(403, 'Linear Algebra', 3),
(404, 'Optics', 4),
(405, 'Microbiology', 5);