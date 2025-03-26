

-- TASK
-- Посчитать кол-во сотрудников по всем должностям
SELECT
	p.title,
	COUNT(e.id) AS [count]
FROM positions p LEFT JOIN employees e ON p.id = e.position_id
GROUP BY p.id, p.title



SELECT
	p.title,
	(
		SELECT COUNT(id)
		FROM employees e
		WHERE e.position_id = p.id
	) AS [count]
FROM positions p;





-- EXISTS / NOT EXISTS --
-- TASK
-- Показать пользователей, которые создавали альбомы

SELECT DISTINCT
	u.nickname
FROM albums a
	LEFT JOIN users u ON a.user_id = u.id


SELECT u.nickname
FROM albums a
	LEFT JOIN users u ON a.user_id = u.id
GROUP BY u.id, u.nickname


SELECT
	u.nickname
FROM users u
WHERE EXISTS (
	SELECT a.id
	FROM albums a
	WHERE a.user_id = u.id
);


-- Показать пользователей, которые не создавали альбомы
SELECT
	u.nickname
FROM users u
WHERE NOT EXISTS (
	SELECT a.id
	FROM albums a
	WHERE a.user_id = u.id
);


-- TASK
-- Показать пользователей, у которых больше 1 альбома (2 и более)
SELECT
	u.nickname
FROM users u
WHERE (
		SELECT COUNT(id)
		FROM albums a
		WHERE a.user_id = u.id
	) > 1;


SELECT
	u.nickname
FROM users u
WHERE EXISTS (
	SELECT a.user_id
	FROM albums a
	WHERE a.user_id = u.id
	GROUP BY a.user_id
	HAVING COUNT(a.user_id) > 1
);


-- ALL / ANY / IN --

-- TASK
-- Вывести пользователей у которых есть альбомы с рейтингом 5
SELECT
	id, email
FROM users u
WHERE u.id = ANY (
	SELECT a.user_id
	FROM albums a
	WHERE a.rate = 5
)


SELECT
	id, email
FROM users u
WHERE u.id IN (
	SELECT a.user_id
	FROM albums a
	WHERE a.rate = 5
)



SELECT
	id, email
FROM users u
WHERE EXISTS (
	SELECT id
	FROM albums a
	WHERE a.rate = 5 AND a.user_id = u.id
);



-- TASK
-- Для каждого отдела выбрать сотрудника, 
-- у которого ЗП больше, чем ЗП каждого сотрудника этого отдела

SELECT
	dep.title, 
	ISNULL(emp.name, '---'), 
	ISNULL(emp.salary, 0)
FROM departments dep
	LEFT JOIN employees emp  ON emp.department_id = dep.id
WHERE emp.salary > ALL (
	SELECT e.salary
	FROM employees e
	WHERE e.id <> emp.id
		AND e.department_id = emp.department_id
		AND e.salary IS NOT NULL	
);

