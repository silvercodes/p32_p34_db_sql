SELECT
	'const_string',
	department_id,
	COUNT(*)						AS [Общее кол-во],
	COUNT(id)						AS [Общее кол-во],
	COUNT(DISTINCT department_id)	AS [Кол-во уникальных department_id]
FROM employees
GROUP BY department_id;



SELECT
	'const_string',
	department_id,
	position_id,
	SUM(salary),
	COUNT(id)
FROM employees
GROUP BY position_id, department_id



-- Посчитать кол-во сотрудников, родившихся в разные года
-- year | count
SELECT
	YEAR(birthday)	AS [year],
	COUNT(id)		AS [count]
FROM employees
GROUP BY YEAR(birthday)


SELECT
	CASE department_id
		WHEN 1 THEN 'Administration'
		WHEN 2 THEN 'Accounting'
		WHEN 3 THEN 'IT'
		ELSE 'Extra'
	END									AS [department],
	COUNT(DISTINCT position_id)			AS [Кол-во уникальных должностей],
	COUNT(id)							AS [Кол-во служащих],
	SUM(salary)							AS [Сумма ЗП],
	AVG(salary)							AS [Средняя ЗП]
FROM employees
GROUP BY department_id;




--TASK
-- Получить сводную таблицу в разрезе отделов,
-- посчитать суммарную ЗП в разбивке по должностям

-- | department			| bookers | directors | developers | teamleads |
------------------------------------------------------------------------
-- | Administration		| 0		  | 7000      | 0....
-- | Accounting			| 3000	  | 0         | 0....


SELECT
	CASE department_id
		WHEN 1 THEN 'Administration'
		WHEN 2 THEN 'Accounting'
		WHEN 3 THEN 'IT'
		ELSE 'Extra'
	END																	AS [Department],

	SUM(CASE WHEN position_id = 1 THEN ISNULL(salary, 0) ELSE 0 END)	AS [Bookers],
	SUM(CASE WHEN position_id = 2 THEN ISNULL(salary, 0) ELSE 0 END)	AS [Directors],
	SUM(CASE WHEN position_id = 3 THEN ISNULL(salary, 0) ELSE 0 END)	AS [Developers],
	SUM(CASE WHEN position_id = 4 THEN ISNULL(salary, 0) ELSE 0 END)	AS [Teamleads]

FROM employees
GROUP BY department_id

