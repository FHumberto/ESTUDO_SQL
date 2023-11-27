USE SAMPLEDB
GO

--1. retornar os atributos dos employees que pertencem ao departamento: employee_id, first_name, last_name, salary, department_name

SELECT
	e.first_name,
	e.last_name,
	e.salary,
	d.department_name
FROM
	hcm.departments d
INNER JOIN
	hcm.employees e ON d.department_id = e.department_id

--2. retornar os atributos de todos os employess incluindo os que não pertencem a um departamento: employee_id, first_name, last_name, salary, department_name

SELECT
	e.employee_id,
	e.first_name,
	e.last_name,
	e.salary,
	d.department_name
FROM
	hcm.employees e
LEFT OUTER JOIN
    hcm.departments d ON d.department_id = e.department_id

--3. retornar o numero total de employees em cada departamento. Inclua o department_name no resultado.
-- E também inclua os employees qeu não foram associados a um departamento.

SELECT
	d.department_name,
	COUNT(e.employee_id) AS Employees
FROM
	hcm.employees e
LEFT JOIN
    hcm.departments d ON d.department_id = e.department_id
GROUP BY
	d.department_name;
