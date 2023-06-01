-- ***SQL CHALLENGE CODE SCHEMA***

-- ***DROP PRE-EXISTING TABLES (IF ANY)***
Drop Table If Exists departments Cascade;
Drop Table If Exists dept_emp Cascade;
Drop Table If Exists dept_manager Cascade;
Drop Table If Exists employees Cascade;
Drop Table If Exists salaries Cascade;
Drop Table If Exists titles Cascade;

-- ***CREATE TABLES AND SPECIFY DATA TYPES, PRIMARY KEYS, FOREIGN KEYS, AND OTHER CONSTRAINTS***
Create Table departments (
	dept_no Varchar(10) Not Null,
	dept_name Varchar(50) Not Null,
	Primary Key (dept_no)
)
;

Create Table titles (
	title_id Varchar(10) Not Null,
	title Varchar(50) Not Null,
	Primary Key (title_id)
)
;

Create Table employees (
	emp_no Int Primary Key Not Null,
	emp_title_id Varchar(10) Not Null,
	birth_date Date Not Null,
	first_name Varchar(50) Not Null,
	last_name Varchar(50) Not Null,
	sex Varchar(10) Not Null,
	hire_date Date Not Null,
	Foreign Key (emp_title_id) References titles (title_id)
)
;

Create Table dept_emp (
	emp_no Int Not Null,
	dept_no Varchar(10) Not Null,
	Primary Key (emp_no, dept_no),
	Foreign Key (dept_no) References departments (dept_no),
	Foreign Key (emp_no) References employees (emp_no)
)
;

Create Table dept_manager (
	dept_no Varchar(10) Not Null,
	emp_no Int Primary Key Not Null,
	Foreign Key (dept_no) References departments (dept_no),
	Foreign Key (emp_no) References employees (emp_no)
)
;

Create Table salaries (
	emp_no Int Primary Key Not Null,
	salary Money Not Null,
	Foreign Key (emp_no) References employees (emp_no)
)
;

-- ***IMPORT ALL CSV FILES IN THE ORDER LISTED AND CHECK DATA IN EACH TABLE***
-- Display Table departments
-- Select * From departments;

-- Display Table titles
-- Select * From titles;

-- Display Table employees
-- Select * From employees;

-- Display Table dept_emp
-- Select * From dept_emp;

-- Display Table dept_manager
-- Select * From dept_manager;

-- Display Table salaries
-- Select * From salaries;
