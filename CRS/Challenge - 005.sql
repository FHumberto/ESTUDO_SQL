USE SAMPLEDB
GO

--1. Select countries from hcm.countries que começem com a letra 'N'

SELECT
	country_id,
	country_name
FROM hcm.countries
WHERE country_name LIKE 'N%'

--2. Select customers from oes.customers que tenham um email gmail.

SELECT
	customer_id,
	first_name,
	email,
	phone,
	street_address,
	city,
	state_province,
	postal_code,
	loyalty_card_issued,
	customer_id
FROM oes.customers
WHERE email LIKE '%@gmail.com'

--3. Select nomes de pprodutos from oes.products que contenham a palavra mouse em qualquer lugar no nome.

SELECT
	product_id,
	product_name,
	category_id,
	list_price,
	discontinued
FROM oes.products
WHERE product_name LIKE '%mouse%'

--4. Select todos os nomes de produtos da oes.products que terminam com um número.

SELECT
	product_id,
	product_name,
	category_id,
	list_price,
	discontinued
FROM oes.products
WHERE product_name LIKE '%[0-9]'
