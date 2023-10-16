USE SAMPLEDB
GO

-- 1 retornar todos os employeess ordenados alfabeticamente de A para Z pelo last_name na hcm.employess table

SELECT *
FROM hcm.employees
ORDER BY last_name ASC

-- 2 retornar todos os employees ordenados pelo salary do maior para o menor.

SELECT *
FROM hcm.employees
ORDER BY salary DESC

-- 3 retornar todos os employees ordenados pelos mais recentes até os antigos.

SELECT *
FROM hcm.employees
ORDER BY hire_date DESC

-- 4 retornar todos os employees ordenados pelo department_id em ordem ascendente e cada departament_id, ordenados pelo salary do maior para o menor.

SELECT *
FROM hcm.employees
ORDER BY department_id ASC, salary DESC

-- 5 retornar o employee_id, first_name, last_name para os top 10 employees que recebem mais.

SELECT TOP(10)
	employee_id,
	first_name,
	last_name
FROM hcm.employees
ORDER BY salary DESC

-- 6 retornar employee_id, first_name, salary dos employee ou employees que são menos pagos.

SELECT TOP (1) WITH TIES
	employee_id,
	first_name,
	last_name,
	salary
FROM hcm.employees
ORDER BY salary ASC;
