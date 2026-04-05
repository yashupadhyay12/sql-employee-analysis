CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(10) 
);
  
  CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(10),
    salary INT,
    dept_id INT
);
  