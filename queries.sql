USE employee_db;
-- Get employee name with their department names
SELECT 
    e.emp_name, d.dept_name
FROM
    employees e
        JOIN
    departments d ON e.dept_id = d.dept_id;
    
-- Calculate average salary of each department
SELECT 
    d.dept_name, AVG(salary) AS avg_salary
FROM
    employees e
        JOIN
    departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Find employee with highest salary
SELECT 
    *
FROM
    employees
WHERE
    salary = (SELECT 
            MAX(salary)
        FROM
            employees);

-- Find employee earn more than average salary
SELECT 
    emp_name, salary
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees);

-- Find department with highest total salary
SELECT 
    d.dept_name, SUM(e.salary) AS total_salary
FROM
    employees e
        JOIN
    departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary
LIMIT 1;