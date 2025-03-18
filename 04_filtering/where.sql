SELECT
	id,
	last_name,
	first_name,
	salary,
	department_id
FROM employees
WHERE department_id = 3
ORDER BY last_name, first_name;


--ORDER BY		3
--TOP			4
--DISTINCT		2
--WHERE			1



--SELECT *
--FROM employees
--WHERE manager_id IS NULL;


-- Расчитать сумму бонусов (в монетах) всех работников, у которых определено поле bonus_percent

SELECT
	id,
	email,
	ISNULL(salary, 0) / 100 * bonus_percent AS [amount]
FROM employees
-- WHERE bonus_percent >= 0 AND bonus_percent IS NOT NULL
-- WHERE NOT(bonus_percent <= 0 OR bonus_percent IS NULL)
WHERE ISNULL(bonus_percent, 0) <> 0 AND bonus_percent >= 0
ORDER BY amount DESC;



--================== BETWEEN IN LIKE ==================

SELECT id, name, salary
FROM employees

-- WHERE salary >= 2000 AND salary <= 3000;
-- WHERE salary BETWEEN 2000 AND 3000;

-- WHERE NOT (salary >= 2000 AND salary <= 3000);
-- WHERE salary NOT BETWEEN 2000 AND 3000;

-- WHERE salary BETWEEN 2000 AND 3000
--		 AND department_id = 3;

-- WHERE department_id = 3 OR department_id = 4;
-- WHERE department_id IN (3, 4);
-- WHERE department_id NOT IN (3, 4);

-- WHERE department_id IN (3, 4, NULL)							-- NULL в IN ПЛОХО :-(((
-- WHERE department_id IN (3, 4) OR department_id IS NULL		-- :-)))
-- WHERE ISNULL(department_id, -1) IN (3, 4, -1)				-- :-)



-- %	_	[abc]	[^abc]	[a-c]	[^a-c]
SELECT id, name, salary
FROM employees
-- WHERE name LIKE N'Пет%'
-- WHERE last_name LIKE N'%ов'
-- WHERE last_name LIKE N'%ре%'
-- WHERE email LIKE '%.pro'
-- WHERE email LIKE '%.c__';
-- WHERE email LIKE '%.[cbr]__';
-- WHERE email LIKE '%.[^a-c]__';
-- WHERE email LIKE '%.!%__' ESCAPE '!'

-- WHERE LOWER(email) LIKE '%.pro'			-- :-)



SELECT *
FROM employees
WHERE YEAR(birthday) = 1982;


-- Отобрать тех, у кого сегодня ДР
SELECT *
FROM employees
WHERE MONTH(birthday) = MONTH(GETDATE()) AND DAY(birthday) = DAY(GETDATE());


DECLARE @d date = '20200318';
SELECT DATEDIFF(year, @d, GETDATE());

SELECT CONVERT(DATE, '20200318', 104);
