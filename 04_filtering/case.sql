-- 1 форма
--CASE
--	WHEN <condition_1> THEN <value_1>
--	...
--	WHEN <condition_n> THEN <value_n>

--	[ELSE default_value]
--END

-- 2 форма
--CASE <value>
--	WHEN <case_value> THEN <value_1>
--	...
--	WHEN <case_value> THEN <value_n>

--	[ELSE default_value]
--END


-- IIF
-- IIF(<condition>, <value_if_true>, <value_if_false>)



-- |email|salary|evaluation|
SELECT
	email as [Email],
	salary as [Salary],
	CASE
		WHEN salary >= 3000 THEN 'salary >= 3000'
		WHEN salary >= 2000 THEN 'salary >= 2000'
		ELSE 'salary < 2000'
	END AS [Evaluation_1],
	CASE
		WHEN salary >= 3000 THEN 'salary >= 3000'
		WHEN salary >= 2000 THEN 'salary >= 2000'
	END AS [Evaluation_2]
FROM employees;



-- Расчитать размер премии по принципу: it(30%) accounting(10%) other (5%)

SELECT
	id, name, salary, department_id,

	CASE department_id
		WHEN 3 THEN '30%'
		WHEN 2 THEN '10%'
		ELSE '5%'
	END,

	ISNULL(salary, 0) / 100 *
		CASE department_id
			WHEN 3 THEN 30
			WHEN 2 THEN 10
			ELSE 5
		END AS [Amount]

FROM employees;




SELECT
	id, email, salary,
	IIF(salary >= 2500, 'salary >= 2500', 'salary < 2500'),
	CASE WHEN salary >= 2500 THEN 'salary >= 2500' ELSE 'salary < 2500' END
FROM employees;



SELECT
	id, name, salary,

	CASE
		WHEN department_id IN (1, 2) THEN 'A'
		WHEN department_id = 3 THEN
			CASE position_id
				WHEN 3 THEN 'B-1'
				WHEN 4 THEN 'B-2'
			END
		ELSE 'C'
	END

FROM employees



-- Отсортировать сотрудников по приоритету получения ЗП
-- <= 2500
-- > 2500
-- Отсортировать в каждой "половине" по полю name

SELECT
	id, name, salary
FROM
	employees
ORDER BY
	CASE WHEN salary < 2000 THEN 'A' ELSE 'B' END,
	name
