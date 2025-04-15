
CREATE PROCEDURE uspGetUsersOf2000
AS
BEGIN
	SELECT id, email
	FROM users
	WHERE YEAR(birthday) = 2000;
END

--EXECUTE uspGetUsersOf2000;
--EXEC uspGetUsersOf2000;


--ALTER PROCEDURE uspGetUsersOf2000
--AS
--BEGIN
--	SELECT id, email
--	FROM users
--	WHERE YEAR(birthday) = 2000 AND deleted_at IS NULL;
--END

--EXECUTE uspGetUsersOf2000;
--EXEC uspGetUsersOf2000;


--DROP PROCEDURE uspGetUsersOf2000;




-- ====== parameters
--CREATE PROCEDURE uspGetUsersByYear 
--(
--	@year AS int
--)
--AS
--BEGIN
--	SELECT id, email
--	FROM users
--	WHERE YEAR(birthday) = @year AND deleted_at IS NULL;
--END

--EXECUTE uspGetUsersByYear 2000;



CREATE PROCEDURE uspGetUsersByRange
(
	@from AS int,
	@to AS int = 2025
)
AS
BEGIN
	SELECT id, email
	FROM users
	WHERE YEAR(birthday) BETWEEN @from AND @to;
END

--EXEC uspGetUsersByRange 2000, 2005;
EXEC uspGetUsersByRange 
	@from = 2000, 
	@to = 2005;




CREATE PROCEDURE uspGetUsersCountByYear
(
	@year int,
	@count int OUTPUT
)
AS
BEGIN
	SET @count = (
		SELECT COUNT(id)
		FROM users
		WHERE YEAR(birthday) = @year
	);
END

DECLARE @uc int = 0;
EXECUTE uspGetUsersCountByYear
	@year = 2000,
	@count = @uc OUTPUT;

SELECT @uc [Users count];

