# 📘 MySQL Assignment 1 – DDL Commands & Constraints

## 📖 Project Overview

This repository contains the solutions for **MySQL Assignment 1** from the **Data Analytics Training Program**.

The objective of this assignment is to practice **Data Definition Language (DDL) commands** and **SQL Constraints** by designing and managing an **Employee Database**. The project focuses on creating database objects, modifying tables, enforcing data integrity, and maintaining relationships using MySQL.

---

## 🎯 Learning Objectives

- Create and manage databases using MySQL.
- Design relational tables with appropriate data types.
- Apply Primary Key and Foreign Key constraints.
- Implement SQL constraints to maintain data integrity.
- Perform table modifications using DDL commands.
- Understand database relationships and normalization concepts.

---

# 🗂 Database Schema

The project consists of three related tables:

## 1️⃣ Departments

| Column | Data Type | Constraint |
|--------|-----------|------------|
| department_id | INT | PRIMARY KEY |
| department_name | VARCHAR(50) | NOT NULL, UNIQUE |

<img width="1336" height="526" alt="image" src="https://github.com/user-attachments/assets/33df33f6-1b1b-4da4-80d7-914b4f14ab37" />

---

## 2️⃣ Locations

| Column | Data Type | Constraint |
|--------|-----------|------------|
| location_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| location_name | VARCHAR(100) | NOT NULL, UNIQUE |

<img width="1005" height="499" alt="image" src="https://github.com/user-attachments/assets/b0d23a99-0165-44b4-a9ca-0fbf905e1703" />

---

## 3️⃣ Employees

| Column | Data Type | Constraint |
|--------|-----------|------------|
| employee_id | INT | PRIMARY KEY |
| employee_name | VARCHAR(100) | NOT NULL |
| gender | ENUM('M','F') | CHECK |
| age | INT | CHECK (Age >= 18) |
| hire_date | DATE | DEFAULT CURRENT_DATE |
| designation | VARCHAR(100) | - |
| salary | DECIMAL(10,2) | - |
| department_id | INT | FOREIGN KEY |
| location_id | INT | FOREIGN KEY |

<img width="1327" height="705" alt="image" src="https://github.com/user-attachments/assets/b39f23ba-13be-4ce4-8356-08c89001a5c2" />

---

# 🔗 Entity Relationship

```text
Departments
--------------------
department_id (PK)
department_name
        │
        │
        ▼
Employees
-------------------------
employee_id (PK)
employee_name
gender
age
hire_date
designation
salary
department_id (FK)
location_id (FK)
        ▲
        │
        │
Locations
---------------------
location_id (PK)
location_name
```
<img width="924" height="609" alt="image" src="https://github.com/user-attachments/assets/c00ed9cf-845c-44cf-a2c9-6e24eb0312fb" />

---

# 📚 DDL Commands Practiced

## ✅ CREATE

- Created the Employee database.
- Created Departments table.
- Created Locations table.
- Created Employees table.
- Established Primary Key relationships.
- Established Foreign Key relationships.

---

## ✅ ALTER

Performed the following operations:

- Added a new **Email** column.

- <img width="1480" height="430" alt="image" src="https://github.com/user-attachments/assets/d20f8c72-cb30-4426-b368-ea8717f1139d" />

- Modified the **Designation** column data type.

- <img width="817" height="500" alt="image" src="https://github.com/user-attachments/assets/675a5086-f7f4-4fb7-aab8-55174293b321" />

- Dropped the **Age** column.

- <img width="1251" height="442" alt="image" src="https://github.com/user-attachments/assets/a4a5c868-d861-4078-95ed-ea043b8a4d5c" />

- Renamed **Hire_Date** to **Date_of_Joining**.

- <img width="1297" height="448" alt="image" src="https://github.com/user-attachments/assets/8c417f6c-940d-4158-a499-e372bf80c4f8" />


---

## ✅ RENAME

- Renamed **Departments** → **Departments_Info**

- <img width="990" height="271" alt="image" src="https://github.com/user-attachments/assets/e0572cc6-6d69-4f7b-9231-028e1fe11362" />

- Renamed **Location** → **Locations**

<img width="1009" height="267" alt="image" src="https://github.com/user-attachments/assets/5df29060-c51b-439c-b413-1779e11ccde1" />

---

## ✅ TRUNCATE

- Removed all records from the Employees table using `TRUNCATE TABLE`.
- 
<img width="1371" height="439" alt="image" src="https://github.com/user-attachments/assets/f27b5d52-0ab6-4b00-9503-c2c4f8b21cdd" />

---

## ✅ DROP

- Dropped the Employees table.

- <img width="838" height="199" alt="image" src="https://github.com/user-attachments/assets/aa499d7b-8df3-4bca-ac3f-10ab00a4ca17" />

- Dropped the Employee database.

- <img width="796" height="235" alt="image" src="https://github.com/user-attachments/assets/82ebc78a-600c-48fc-be0d-a84ece2951dc" />


---

# ✅ Constraints Implemented

### 🔹 Primary Key

- `department_id`
- `location_id`
- `employee_id`

### 🔹 Foreign Key

- `department_id` → References `Departments(department_id)`
- `location_id` → References `Locations(location_id)`

### 🔹 NOT NULL

- `employee_name`
- `department_name`
- `location_name`

### 🔹 UNIQUE

- `department_name`
- `location_name`

### 🔹 CHECK

- Age must be **18 or above**.
- Gender accepts only **'M'** or **'F'**.

### 🔹 DEFAULT

- `hire_date` defaults to `CURRENT_DATE`.

### 🔹 AUTO_INCREMENT

- `location_id`

---

# 🛠 SQL Concepts Covered

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE
- DROP DATABASE
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT
- AUTO_INCREMENT
- ENUM

---

# 💻 Technologies Used

- MySQL 8.x
- MySQL Workbench

---

# 📂 Repository Structure

```text
MySQL-DDL-Assignment/
│── README.md
│── Employee_DDL_Assignment.sql
│── Screenshots/
│   ├── Create_Database.png
│   ├── Create_Tables.png
│   ├── Constraints.png
│   ├── Alter_Table.png
│   ├── Rename_Table.png
│   ├── Truncate_Table.png
│   └── Drop_Database.png
```

---

# 🎯 Key Learning Outcomes

- ✔ Database creation using MySQL
- ✔ Table creation with relationships
- ✔ Data integrity using SQL Constraints
- ✔ Foreign Key implementation
- ✔ Table modification using ALTER
- ✔ Managing database objects using DDL commands
- ✔ Understanding relational database design

---

# 👩‍💻 Author

**Revathi K**

**Aspiring Data Analyst**

### Skills

- SQL
- MySQL
- Power BI
- Python
- Advanced Excel
- Power Query
- Data Analysis
- Data Visualization

---
