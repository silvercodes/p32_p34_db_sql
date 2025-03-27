-------- ���� JOIN ------
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





SELECT
	*
FROM positions p LEFT JOIN employees e ON p.id = e.position_id;

-- TASK
-- ������� ���-�� �������� �� ����������
-- | position_name | emp_count |
SELECT
	p.title,
	COUNT(e.id)
FROM positions p LEFT JOIN employees e ON p.id = e.position_id
GROUP BY p.id, p.title


-- TASK
-- ������� ��������, ������� �������� � 1982 ���� � ����������� �� �� ��������� � ������
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
-- ��� ������� ������ ������� ���������� ��������� ����������
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
-- ������� ���������� � ���-�� �������� �� ������� ������ ��� ������ ���������
-- | department | position | count |

SELECT
	d.title		AS [department],
	p.title		AS [position],
	COUNT(e.id)	AS [count]
FROM departments d CROSS JOIN positions p
		LEFT JOIN employees e ON e.department_id = d.id AND e.position_id = p.id
GROUP BY d.id, d.title, p.id, p.title
	


-- ������� ���������� � ���-�� �������� �� ������� ������ ��� ������ ���������
-- ��������� ������� ������������
-- | department | position | count |

SELECT
	d.title		AS [department],
	p.title		AS [position],
	COUNT(e.id)	AS [count]
FROM departments d CROSS JOIN positions p
		JOIN employees e ON e.department_id = d.id AND e.position_id = p.id
GROUP BY d.id, d.title, p.id, p.title



SELECT
	d.title		AS [department],
	p.title		AS [position],
	COUNT(e.id)	AS [count]
FROM employees e
		JOIN departments d ON e.department_id = d.id
		JOIN positions p ON e.position_id = p.id
GROUP BY d.id, d.title, p.id, p.title




	







