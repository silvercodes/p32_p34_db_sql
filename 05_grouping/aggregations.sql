--COUNT(*)
--COUNT(<expr>)
--COUNT(DISTINCT <expr>)
--SUM(<expr>)
--AVG(<expr>)
--MIN(<expr>)
--MAX(<expr>)

SELECT
	'const_string',
	COUNT(*)							AS [Общее кол-во записей],
	COUNT(department_id)				AS [Кол-во не NULL значений в поле department_id],
	COUNT(DISTINCT department_id)		AS [Кол-во уникальных не NULL отделов],
	MAX(bonus_percent)					AS [Размер максимального процента бонуса],
	SUM(salary / 100 * bonus_percent)	AS [Сумма денег на бонусы],
	AVG(salary / 100 * bonus_percent)	AS [Средняя сумма бонуса]
FROM employees;



SELECT
	'const_string',
	COUNT(*)							AS [Общее кол-во записей],
	COUNT(department_id)				AS [Кол-во не NULL значений в поле department_id],
	COUNT(DISTINCT department_id)		AS [Кол-во уникальных не NULL отделов],
	MAX(bonus_percent)					AS [Размер максимального процента бонуса],
	SUM(salary / 100 * bonus_percent)	AS [Сумма денег на бонусы],
	AVG(salary / 100 * bonus_percent)	AS [Средняя сумма бонуса]
FROM employees
WHERE department_id = 3;



SELECT
	SUM(salary),
	AVG(salary),
	ISNULL(SUM(salary), 0),
	ISNULL(AVG(salary), 0)
FROM employees
WHERE department_id = 100;