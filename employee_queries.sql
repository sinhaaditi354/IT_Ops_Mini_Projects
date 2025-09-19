-- =====================================
-- Sample Employee Database for IT-Ops
-- =====================================

CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    role VARCHAR(50),
    salary INT
);

INSERT INTO employees (name, department, role, salary) VALUES
('Aman', 'IT', 'Engineer', 60000),
('Raman', 'HR', 'Manager', 75000),
('Sofia', 'IT', 'Manager', 80000),
('Ravi', 'Finance', 'Analyst', 55000),
('Tanu', 'IT', 'Engineer', 65000);

-- Queries
-- 1. Employees in IT department
SELECT * FROM employees WHERE department='IT';

-- 2. Top 3 salaries
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- 3. Count employees by role
SELECT role, COUNT(*) as count FROM employees GROUP BY role;
