USE SAMPLEDB
GO

--1. Select produtos from the oes.products table que tenham valores acima de $100.
SELECT
	product_id,
	product_name,
	category_id,
	list_price,
	discontinued
FROM oes.products
WHERE list_price > 100

--2. Select todas as orders from oes.orders table que ainda não foram shipped (shipped date is null).
SELECT
	order_id,
	customer_id,
	employee_id,
	order_date,
	shipped_date,
	shipper_id,
	freight_cost
FROM oes.orders
WHERE shipped_date IS NULL;

--3. Select todas as orders from oes.orders table que tenham sidas alocadas em 26/02/2020.
SELECT
	order_id,
	customer_id,
	employee_id,
	order_date,
	shipped_date,
	shipper_id,
	freight_cost
FROM oes.orders
WHERE order_date = '2020-02-26' --ou '20200226'

--4. Select todas as orders from oes.orders table que foram alocadas depois ou no dia 01/01/2020.
SELECT
	order_id,
	customer_id,
	employee_id,
	order_date,
	shipped_date,
	shipper_id,
	freight_cost
FROM oes.orders
WHERE order_date >= '2020-01-01' --ou '20200101'
