-------- Типы JOIN ------
-- JOIN				(INNER JOIN)
-- LEFT JOIN		(LEFT OUTER JOIN)
-- RIGHT JOIN		(RIGHT OUTER JOIN)
-- FULL JOIN		(FULL OUTER JOIN)
-- CROSS JOIN		(CROSS OUTER JOIN)



--SELECT *
--FROM employees, departments;



-- ====== LEFT JOIN
SELECT *
FROM
	employees e LEFT JOIN departments d ON e.department_id = d.id; 

SELECT *
FROM
	departments d LEFT JOIN employees e ON e.department_id = d.id;


-- ====== RIGHT JOIN
SELECT *
FROM
	employees e RIGHT JOIN departments d ON e.department_id = d.id; 

SELECT *
FROM
	departments d RIGHT JOIN employees e ON e.department_id = d.id;



-- ====== JOIN
SELECT *
FROM
	employees e JOIN departments d ON e.department_id = d.id; 

SELECT *
FROM
	departments d JOIN employees e ON e.department_id = d.id;


-- ====== FULL JOIN
SELECT *
FROM
	employees e FULL JOIN departments d ON e.department_id = d.id; 

SELECT *
FROM
	departments d FULL JOIN employees e ON e.department_id = d.id;


-- ====== CROSS JOIN
SELECT *
FROM
	employees e CROSS JOIN departments d; 



-- TASK
-- Вернуть кол-во служащих по должностям
-- | position_name | emp_count |
SELECT
	p.title,
	COUNT(e.id)
FROM positions p LEFT JOIN employees e ON p.id = e.position_id
GROUP BY p.id, p.title


-- TASK
-- Вернуть служащих, которые родились в 1982 году с информацией об их должности и отделе
-- |emp_id | emp_name | emp_birthday | position | department |

--SELECT
--	emp.id,
--	emp.name,
--	emp.birthday,
--	pos.title								AS [position],
--	ISNULL(dep.title, 'no_department')		AS [department]
--FROM employees emp
--		LEFT JOIN positions pos ON emp.position_id = pos.id
--		LEFT JOIN departments dep ON emp.department_id = dep.id
--WHERE YEAR(emp.birthday) = 1982



-- TASK
-- Для каждого отдела вывести последнего принятого сотрудника
SELECT
	d.title,
	MAX(e.hire_date)
	-- MAX(IIF(e.hire_date = MAX(e.hire_date), e.name, ''))
FROM departments d LEFT JOIN employees e ON e.department_id = d.id
GROUP BY d.id, d.title



SELECT
	d.id,
	d.title,
	ISNULL(e.name, 'no_name')
FROM employees e 
	JOIN (
			SELECT
				MAX(id) maxEmpId
			FROM employees
			GROUP BY department_id
		) lastEmp ON e.id = lastEmp.maxEmpId
	RIGHT JOIN departments d ON e.department_id = d.id;
	




-- TASK
-- Посчитать кол-во сотрудников по каждому отделу для каждой должности
-- | department | position | count |

SELECT
	dep.title,
	pos.title,
	COUNT(emp.id)
FROM departments dep
		CROSS JOIN positions pos
		LEFT JOIN employees emp ON pos.id = emp.position_id AND dep.id = emp.department_id
GROUP BY dep.id, dep.title, pos.id, pos.title;











