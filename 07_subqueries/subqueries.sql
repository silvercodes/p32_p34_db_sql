-- TASK
-- ��������� ���-�� �������� �� ���� ����������
-- | position | count |

SELECT
	p.title,
	COUNT(e.id) AS [count]
FROM positions p LEFT JOIN employees e ON p.id = e.position_id
GROUP BY p.id, p.title


SELECT
	id,
	title,
	(
		SELECT COUNT(e.id)
		FROM employees e
		WHERE e.position_id = p.id
	) AS [count]
FROM positions p;





---  EXISTS / NOT EXISTS / IN ----

-- TASK
-- ������� �������������, ������� ��������� �������

SELECT
	u.email
FROM users u LEFT JOIN albums a ON u.id = a.user_id
WHERE a.id IS NOT NULL
GROUP BY u.email


SELECT
	u.email
FROM albums a LEFT JOIN users u ON u.id = a.user_id
GROUP BY u.email


SELECT DISTINCT
	u.email
FROM albums a LEFT JOIN users u ON u.id = a.user_id



SELECT
	u.email
FROM users u
WHERE EXISTS (
		SELECT a.id
		FROM albums a
		WHERE a.user_id = u.id
	);


-- TASK
-- ������� �������������, ������� �� ��������� �������
SELECT
	u.email
FROM users u
WHERE NOT EXISTS (
		SELECT a.id
		FROM albums a
		WHERE a.user_id = u.id
	);

-- TASK
-- ������� �������������, � ������� 2 � ����� ��������

SELECT
	u.email
FROM users u
WHERE (
		SELECT COUNT(a.id)
		FROM albums a
		WHERE a.user_id = u.id
	) >= 2;


SELECT
	u.email
FROM users u
WHERE EXISTS (
		SELECT a.user_id
		FROM albums a
		WHERE a.user_id = u.id
		GROUP BY a.user_id
		HAVING COUNT(a.user_id) >= 2
	);



SELECT
	u.email
FROM users u
WHERE u.id IN (
		SELECT a.user_id
		FROM albums a
		WHERE a.user_id = u.id
		GROUP BY a.user_id
		HAVING COUNT(a.user_id) >= 2
	);


-- ALL / ANY
-- TASK
-- ������� �������������, � ������� ���� ������� � ��������� 10

SELECT u.email
FROM users u
WHERE EXISTS (
		SELECT a.id
		FROM albums a
		WHERE a.user_id = u.id AND a.rate = 10
	);


SELECT u.email
FROM users u
WHERE u.id = ANY (
	SELECT a.user_id
	FROM albums a
	WHERE a.rate = 10
);


SELECT u.email
FROM users u
WHERE u.id IN (
	SELECT a.user_id
	FROM albums a
	WHERE a.rate = 10
);


-- TASK
-- � ������ ������ ������� ���������� (-��), � �������� (-��) �� ������, ���
-- �� ������� ���������� � ���� ������
-- | name | department | salary |

-- ???
SELECT 
	emp.name, dep.title, emp.salary
FROM departments dep
	LEFT JOIN employees emp ON dep.id = emp.department_id
WHERE emp.salary = (
	SELECT MAX(e.salary)
	FROM employees e
	WHERE e.department_id = dep.id
);

-- ???
SELECT 
	emp.name, dep.title, emp.salary
FROM departments dep
	LEFT JOIN employees emp ON dep.id = emp.department_id
WHERE emp.salary > ALL (
	
);
		












