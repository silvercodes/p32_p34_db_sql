USE p34_company_db;

SELECT *
FROM employees;

SELECT
	'vasia',
	120,
	'petya@mail.com';


SELECT
	5000 / 100 * 17,
	SIN(0) + COS(0),
	SYSDATETIME();


SELECT
	123 / 10,
	123.0 / 10,
	123 / 10.0;


SELECT
	id,
	id / 100,
	CAST(id AS float) / 100,
	CONVERT(float, id) / 100,
	id / 100.0
FROM employees;


SELECT *				-- :-(
FROM employees;

SELECT id, name, birthday, email, position_id			-- :-)
FROM employees;


SELECT
	e.id
FROM 
	employees AS e;


SELECT
	last_name + ' ' + first_name	AS [full_name],
	hire_date						AS [Дата приёма],
	salary							AS [З.П.]
FROM employees;


SELECT
	last_name + ' ' + middle_name							AS [FULL_NAME_1],
	ISNULL(last_name, '') + ' ' + ISNULL(middle_name, '')	AS [FULL_NAME_2],
	CONCAT(last_name, ' ', middle_name)						AS [FULL_NAME_3]
FROM employees;


SELECT
	id,
	name,
	salary / 100 * bonus_percent								AS [bonus_sum_1],
	ISNULL(salary, 0) / 100 * ISNULL(bonus_percent, 0)			AS [bonus_sum_2],
	COALESCE(salary, 0) / 100 * COALESCE(bonus_percent, extra_percent, 0) AS [bonus_sum_3]
FROM employees;


-- ====== DISTINCT =======

SELECT DISTINCT
	department_id
FROM 
	employees;


SELECT DISTINCT
	department_id, position_id
FROM 
	employees;


-- ======= ORDER BY =======

SELECT
	last_name,
	first_name,
	salary
FROM employees
ORDER BY last_name DESC;


SELECT
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary, last_name;



SELECT
	last_name,
	first_name
FROM employees
ORDER BY salary;



-- Неоднозначность результата (одинаковые salary????)
SELECT TOP 3
	id,
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary DESC;


-- :-)))
SELECT TOP 3
	id,
	last_name,
	first_name,
	salary
FROM employees
ORDER BY salary DESC, id;



SELECT first_name, last_name
FROM employees
ORDER BY CONCAT(first_name, last_name);



SELECT 
	CONCAT(first_name, last_name) AS [FULL_NAME]
FROM employees
ORDER BY FULL_NAME;



-- В ORDER BY использовать только поля из SELECT DISTINCT
SELECT DISTINCT
	last_name, 
	first_name, 
	salary
FROM employees
ORDER BY last_name;



SELECT bonus_percent
FROM employees
ORDER BY ISNULL(bonus_percent, 100);



-- ===== TOP ======
SELECT TOP 2 
	*
FROM employees;


SELECT TOP 50 PERCENT 
	*
FROM employees;



SELECT TOP 3 WITH TIES
	id, name, salary
FROM employees
ORDER BY salary DESC;


-- Выбрать 2 наиболее маленькие ЗП
SELECT DISTINCT TOP 2
	salary
FROM employees
ORDER BY salary;