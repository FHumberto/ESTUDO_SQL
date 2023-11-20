USE SAMPLEDB
GO

-- 1. Retornar todos os employees da tabela hcm.employees que vivem em Seattle ou Sydney.

SELECT
	*
FROM hcm.employees
WHERE city = 'Seattle' OR city = 'Sydney'

-- 2. Retornar todos os employees que vivem em qualquer uma das seguintes cidades (Seattle, Sydney, Ascot, Hillston)

SELECT
	*
FROM hcm.employees
WHERE city IN ('Seattle', 'Sydney', 'Ascot', 'Hillston')

-- 3. Retornar todos os employees de Sydney que tem um salário maior que 200.000.

SELECT
	*
FROM hcm.employees
WHERE city = 'Sydney' AND salary > 200000 -- Para valores não precisa de ponto

-- 4. Retornar todos os employees que vivem em Seattle ou Sydney e que também foram contratados durante ou depois de 1 janeiro de 2019. (OR e AND)

SELECT
	*
FROM hcm.employees
WHERE (city = 'Seattle' OR city = 'Sydney') AND hire_date > '2019/01/01'

-- 5. Retornar todos os produtos da tabela oes.products que não possuem a category_id de 1, 2 ou 5.

SELECT
	*
FROM oes.products
WHERE category_id NOT IN (1, 2, 5)
