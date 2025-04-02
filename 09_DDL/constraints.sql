-- == PRIMARY KEY == --

-- Определение при объявлении поля
CREATE TABLE units (
	id int PRIMARY KEY,
	title varchar(32)
);

-- Определение вне объявления поля
CREATE TABLE units (
	id int,
	title varchar(32),

	CONSTRAINT PK_users_id PRIMARY KEY(id)
);

CREATE TABLE units (
	id int,
	title varchar(32),
	power int,

	-- PRIMARY KEY(id, title),
	CONSTRAINT PK_users_id_title PRIMARY KEY(id, title)
);

-- Добавление после создания таблицы
CREATE TABLE units (
	id int NOT NULL,
	title varchar(32)
);

ALTER TABLE units
ADD CONSTRAINT PK_users_id_title PRIMARY KEY(id);

DROP TABLE units;




-- == FOREIGN KEY == --
CREATE TABLE roles (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(50) NOT NULL,
	role_id int NOT NULL,

	CONSTRAINT FK_users_role FOREIGN KEY(role_id) REFERENCES roles(id)
);

INSERT INTO roles (title)
VALUES 
	('admin'),
	('guest'),
	('author');

INSERT INTO users (email, role_id)
VALUES
	('v@m.c', 3),
	('a@m.c', 1),
	('x@m.c', 3);

DROP TABLE users;
DROP TABLE roles;







CREATE TABLE roles (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(50) NOT NULL,
	role_id int NOT NULL DEFAULT(2),

	CONSTRAINT FK_users_role FOREIGN KEY(role_id) REFERENCES roles(id)
		-- ON DELETE NO ACTION				-- по-умолчанию
		-- ON DELETE CASCADE
		-- ON DELETE SET NULL
		-- ON DELETE SET DEFAULT

		-- ON UPDATE NO ACTION				-- по-умолчанию
		-- ON UPDATE CASCADE
		-- ON UPDATE SET NULL
		-- ON UPDATE SET DEFAULT
);

INSERT INTO roles (title)
VALUES 
	('admin'),
	('guest'),
	('author');

INSERT INTO users (email, role_id)
VALUES
	('v@m.c', 3),
	('a@m.c', 1),
	('x@m.c', 3);

DELETE FROM roles
WHERE id = 3;







CREATE TABLE roles (
	id int PRIMARY KEY NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(50) NOT NULL,
	role_id int NOT NULL,

	CONSTRAINT FK_users_role FOREIGN KEY(role_id) REFERENCES roles(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

INSERT INTO roles (id, title)
VALUES 
	(1, 'admin'),
	(2, 'guest'),
	(3, 'author');

INSERT INTO users (email, role_id)
VALUES
	('v@m.c', 3),
	('a@m.c', 1),
	('x@m.c', 3);

UPDATE roles
SET id = 333
WHERE id = 3;

DROP TABLE users;
DROP TABLE roles;




-- == NOT NULL == --
CREATE TABLE permissions (
	id int PRIMARY KEY IDENTITY(1,1)	NOT NULL,
	title varchar(32)					NOT NULL,
	description varchar(128)			NULL
);

INSERT INTO permissions (title)
VALUES ('read_data');

-- добавление
UPDATE permissions
SET description = 'no_description'
WHERE description IS NULL;

ALTER TABLE permissions
ALTER COLUMN description varchar(128) NOT NULL;

-- удаление
ALTER TABLE permissions
ALTER COLUMN description varchar(128) NULL;

DROP TABLE permissions;


-- == UNIQUE == --
CREATE TABLE roles(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(32) NOT NULL
);

CREATE TABLE users (
	id int IDENTITY(1,1)				NOT NULL,
	email varchar(50)					NOT NULL,
	role_id int							NOT NULL,
	username varchar(50)				NOT NULL,

	CONSTRAINT PK_users_id		PRIMARY KEY(id),
	CONSTRAINT UQ_users_email	UNIQUE(email),
	CONSTRAINT FK_users_role	FOREIGN KEY(role_id) REFERENCES roles(id)
);

-- Добавление
ALTER TABLE roles
ADD CONSTRAINT UQ_roles_title	UNIQUE(title)

-- Удаление
ALTER TABLE roles
DROP CONSTRAINT UQ_roles_title



-- == CHECK == --

--CREATE TABLE products (
--	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	title varchar(128) NOT NULL,

--	-- price decimal(10, 2) CHECK(price > 0)

--	price decimal(10, 2),

--	CONSTRAINT CK_products_price CHECK(price > 0)
--);



--CREATE TABLE products (
--	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	title varchar(128) NOT NULL,

--	price decimal(10, 2) CHECK(price > 0) NOT NULL,
--	discount_price decimal(10, 2) CHECK(discount_price > 0) NOT NULL,

--	CONSTRAINT CK_products_price_discount_price CHECK(discount_price < price)
--);


CREATE TABLE products (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(128) NOT NULL,

	price decimal(10, 2) NOT NULL,
	discount_price decimal(10, 2) NOT NULL,

	CONSTRAINT CK_products_price CHECK(price > 0),
	CONSTRAINT CK_products_discount_price 
		CHECK(discount_price > 0 AND discount_price < price)
);





