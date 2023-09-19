USE SAMPLEDB
GO

-- 01 - Selecione o first_name e o last_name de todos os employees. No SAMPLEDB

SELECT
	first_name,
	last_name
FROM hcm.employees;

-- 02 - Selecione o last_name e city de todos os customers. Alias de last_name para customer_last_name.

SELECT
	last_name AS customer_last_name,
	city
FROM oes.customers

-- 03 - Selecione todas as colunas da tabela oes.order_items

SELECT	*
FROM oes.order_items;

SELECT TOP(1) *
FROM oes.order_items;