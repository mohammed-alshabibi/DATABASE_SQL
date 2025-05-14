

insert into DEPARTMENT(DNUM,DNAME,MGR_START_DATE)values
(1,'IT','2020-01-1'),
(2,'CHEM','2020-01-2'),
(3,'PHES','2020-01-3')



insert into Employee(
	FNAME,
	MINIT,
	LNAME,
	BDATE,
	ADDRESS,
	SEX,
	SALARY,
	DNO
)values
( 'John', 'A', 'Doe', '1985-05-15', '123 Main St', 'M', 55000,1),
( 'Jane', 'B', 'Smith', '1990-08-20', '456 Elm St', 'F', 60000,1),
('Alice','C','Johnson','1992-11-10','789 Oak Avenue', 'F', 62000,2)


INSERT INTO Dept_Locations (Dnumber, Dlocation)
VALUES
(1, 'Muscat'),
(2, 'Salalah'),
(3, 'Sohar');

INSERT INTO Project (Pnumber, Pname, Plocation, Dnum)
VALUES
(101, 'Recruitment System', 'Muscat', 1),
(102, 'AI Platform', 'Salalah', 2),
(103, 'Accounting App', 'Sohar', 3);

INSERT INTO Works_On (Essn ,Pno, Hours)
VALUES
(8, 101, 20),
(9, 102, 35),
( 10,103, 30)

UPDATE Employee
SET Super_ssn =9
WHERE FNAME ='JOHN'


UPDATE DEPARTMENT 
SET MGR_SSN=9
WHERE DNUM=3














---------------------------------------

delete from DEPARTMENT;
delete from employee;
select * from employee;
select * from DEPARTMENT;
select * from Works_On;
select name 
from sys.key_constraints
where type ='PK' and parent_object_id= object_id('Employee');

alter table employee
drop Constraint PK__Employee__CA1E8E3D45D82662;

alter table employee
drop column ssn;

alter table WORKS_ON
drop constraint FK_WorksOn_Employee;

alter table DEPARTMENT
drop constraint FK_Department_Manager;

alter table DEPENDENT
drop constraint FK_Dependent_Employee;

alter table employee
add SSN_new int identity(1,1);

alter table employee
add constraint PK_SSN_new primary key(SSN_new);

alter table WORKS_ON
add constraint FK_SSN_new 
foreign key (Essn) references employee(SSN_new);


alter table DEPARTMENT
add constraint FK_MGR_SSN 
foreign key (MGR_SSN) references employee(SSN_new);

alter table DEPENDENT
add constraint FK_ESSN 
foreign key (ESSN) references employee(SSN_new);

