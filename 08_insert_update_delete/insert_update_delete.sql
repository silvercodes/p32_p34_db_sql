-- ===== INSERT ====== --

-- INSERT [INTO] <table> [<fieslds...>] VALUES  (<values>);
-- INSERT [INTO] <table> [<fieslds...>] SELECT... ;

INSERT INTO albums (title, creation_date, user_id, rate)
VALUES ('test_title', GETDATE(), 10, 1);


INSERT INTO albums (title, creation_date, user_id, rate)
VALUES
	('test_title1', GETDATE(), 10, 1),
	('test_title2', GETDATE(), 10, 1),
	('test_title3', GETDATE(), 10, 1),
	('test_title4', GETDATE(), 10, 1);



SET IDENTITY_INSERT albums ON;

INSERT INTO albums (id, title, creation_date, user_id, rate)
VALUES (3086, 'test_title', GETDATE(), 10, 1);

SET IDENTITY_INSERT albums OFF;


-- Вернуть при вставке значение id
INSERT INTO albums (title, creation_date, user_id, rate)
OUTPUT inserted.id
VALUES ('test_title', GETDATE(), 10, 1);


INSERT INTO customers (nickname, email)
SELECT nickname, email
FROM users;


-- CTE (Common Table Expression)
WITH src AS (
	SELECT nickname, email
	FROM users
)
INSERT INTO customers (nickname, email)
SELECT nickname, email
FROM src;



-- ===== UPDATE ====== --
UPDATE albums
SET rate = 12
WHERE id = 3091;

UPDATE albums
SET rate = 11
WHERE rate = 10;

UPDATE albums
SET deleted_at = GETDATE()
WHERE id = 3091;


-- ===== DELETE ====== --

DELETE FROM customers;

DELETE FROM customers
WHERE id = 212;

TRUNCATE TABLE customers;





