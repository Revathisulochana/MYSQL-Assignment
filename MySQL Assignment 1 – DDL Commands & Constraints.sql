Create database Employee_Database;

Use Employee_Database;

-- Departments Table
Create table Departments (
department_id  int Primary Key,
department_name varchar(50) NOT NULL UNIQUE
);

sELECT * from departments;

-- Location Table
Create table Location (
location_id int Primary Key AUTO_INCREMENT,
location_name varchar(100) NOT NULL UNIQUE
);

Select * from location

-- Employees Table
Create table Employees (
Employee_id int Primary Key,
Employee_name varchar(50) NOT NULL,
Gender enum ('M','F'),
Age int check (Age>=18),
Hire_date date DEFAULT (CURRENT_DATE),
Designation varchar (100),
Salary decimal (10,2),
department_id int,
location_id int,

 Foreign Key (department_id)
 references departments (department_id)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 
 Foreign Key (location_id)
 references location (location_id)
 ON DELETE CASCADE
 ON UPDATE CASCADE
 );

select * from employees;

-- departments data
insert into departments ( department_id , department_name) values
('101', 'HR'),
('102', 'Finance'),
('103', 'Admin'),
('104', 'IT'),
('105', 'Sales');

-- Location Data
Insert into Location ( location_id, location_name) values
(1,'Chennai'),
(2, 'Bangalore'),
(3,'Madurai'),
(4,'Mumbai');

-- Employees Data
Insert into Employees ( Employee_id, Employee_name, Gender, Age, Hire_date, Designation,Salary, department_id, location_id) values
(201,'Deepak','M',28,'2024-01-15','Data Analyst',55000.00,103,1),
(202,'Arun','M',25,'2023-08-20','HR Executive',42000.00,101,2),
(203,'Priya','F',28,'2022-06-12','Accountant',50000.00,102,3),
(204,'Karthik','M',31,'2021-11-10','Sales Executive',48000.00,104,4),
(205,'Divya','F',29,'2020-03-18','Software Engineer',65000.00,103,2),
(206,'Rahul','M',27,'2019-07-22','Manager',85000.00,101,1),
(207,'Meena','F',30,'2021-01-10','Business Analyst',58000.00,103,3),
(208,'Suresh','M',35,'2018-09-05','Finance Executive',52000.00,102,4),
(209,'Anjali','F',26,'2022-11-28','HR Executive',45000.00,101,2),
(210,'Vignesh','M',29,'2017-06-14','Team Lead',90000.00,103,1),
(211,'Kavya','F',33,'2023-04-03','Data Analyst',60000.00,103,4),
(212,'Ramesh','M',29,'2020-12-15','Sales Executive',48000.00,104,3),
(213,'Nisha','F',24,'2024-02-20','Associate',38000.00,104,2),
(214,'Ajay','M',32,'2016-08-08','Senior Manager',105000.00,102,1),
(215,'Sneha','F',29,'2020-09-08','Sales Executive',50000.00,102,4);

select * from employees;

Alter table employees
add Email_id varchar(100);


Alter table employees
Modify Designation varchar (100);

-- Drop Age column from the Employees table 

Alter table employees
drop column age ;

-- Rename the column
Alter table employees 
change column Hire_date Date_of_joining date;

-- To rename the table 
Rename table Departments to Departments_Info;

Rename table Location to Locations;

-- Truncate the Employees table
truncate table employees;

select * from employees;

-- Drop the Employees table 
Drop table employees;

-- Drop the database  
Drop database employee_database;



 







