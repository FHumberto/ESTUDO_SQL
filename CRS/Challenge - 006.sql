USE SAMPLEDB
GO

--1. Retornar o número total de employees em cada departamento, ordenados pelo department_id na tabela hcm.employees

SELECT
    department_id,
    COUNT(*) AS employee_count
FROM hcm.employees
GROUP BY department_id
ORDER BY department_id;

--2. Retornar a média (AVG) do salário em cada departamento, definido pelo department_id na tabela hcm.employees.
-- Ordenar pelo resultado da média salarial do maior para o menor.

SELECT
	department_id,
	ROUND(AVG(salary), 1) AS avg_salary --RETORNA O AVG E ARREDONDA
FROM hcm.employees
GROUP BY department_id
ORDER BY avg_salary DESC

--3. retornar o número total de produtos em cada wharehouse definido pelo wharehouse_id na tabela oes.inventory.
-- Limite o resultado pelas wharrehouses que tenham mais de 5mil produtos disponíveis.

SELECT
	warehouse_id,
	SUM(quantity_on_hand) AS total_products_on_hand
FROM oes.inventories
GROUP BY warehouse_id
HAVING SUM (quantity_on_hand) > 5000;

--4. qual é a maior data da mais recente população de cada localidade na bird.antartic_populations.

SELECT
	locality,
	MAX(date_of_count) AS MaxPopulationCount
FROM bird.antarctic_populations
GROUP BY locality
ORDER BY locality

-- 5. Qual é a menor data da contagem mais recente para cada espécie em cada localidade na tabela bird.antarctic_populations.

SELECT
	species_id,
	locality,
	MIN(date_of_count) AS EarliestCountDate
FROM bird.antarctic_populations
GROUP BY species_id, locality
ORDER BY species_id
