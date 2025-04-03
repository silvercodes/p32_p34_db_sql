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

	CONSTRAINT PK_users_id_title PRIMARY KEY(id, title)
);


-- Добавление после создания таблицы
CREATE TABLE units (
	id int NOT NULL,
	title varchar(32),
	power int
);

DROP TABLE units;

ALTER TABLE units
ADD CONSTRAINT PK_users_id PRIMARY KEY(id)

DROP TABLE units;





-- == FOREIGN KEY == --
CREATE TABLE roles(
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

DELETE FROM users;

INSERT INTO users (email, role_id)
VALUES
	('b@m.c', 3),
	('m@m.c', 1),
	('x@m.c', 3);

	






DROP TABLE users;	
DROP TABLE roles;

CREATE TABLE roles(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(50) NOT NULL,
	role_id int NOT NULL DEFAULT(2),

	CONSTRAINT FK_users_role FOREIGN KEY(role_id) REFERENCES roles(id)
		-- ON DELETE			NO ACTION		-- Ничего не делать (по-умолчанию)
		-- ON DELETE			CASCADE
		-- ON DELETE			SET NULL
		-- ON DELETE			SET DEFAULT

		-- ON UPDATE			NO ACTION		-- Ничего не делать (по-умолчанию)
		-- ON UPDATE			CASCADE
		-- ON UPDATE			SET NULL
		-- ON UPDATE			SET DEFAULT
);

INSERT INTO roles (title)
VALUES
	('admin'),
	('guest'),
	('author');

INSERT INTO users (email, role_id)
VALUES
	('b@m.c', 3),
	('m@m.c', 1),
	('x@m.c', 3);

DELETE FROM roles
WHERE id = 3;








DROP TABLE users;	
DROP TABLE roles;

CREATE TABLE roles(
	id int PRIMARY KEY NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(50) NOT NULL,
	role_id int NOT NULL DEFAULT(2),

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
	('b@m.c', 3),
	('m@m.c', 1),
	('x@m.c', 3);

UPDATE roles
SET id = 333
WHERE id = 3;






-- == NOT NULL == --

DROP TABLE permissions;

CREATE TABLE permissions (
	id int PRIMARY KEY IDENTITY(1,1)	NOT NULL,
	title varchar(50)					NOT NULL,
	description varchar(256)			NULL
);

INSERT INTO permissions (title)
VALUES ('can_read');

UPDATE permissions
SET description = 'no_description'
WHERE description IS NULL;

-- adding
ALTER TABLE permissions
ALTER COLUMN description varchar(256) NOT NULL

-- remove
ALTER TABLE permissions
ALTER COLUMN description varchar(256) NULL






--== UNIQUE ==--
CREATE TABLE roles(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(50) NOT NULL
);

CREATE TABLE users (
	id int IDENTITY(1,1)		NOT NULL,
	email varchar(32)			NOT NULL,
	role_id int					NOT NULL,
	username varchar(64)		NOT NULL,

	CONSTRAINT PK_users_id		PRIMARY KEY(id),
	CONSTRAINT UQ_users_email	UNIQUE(email),
	CONSTRAINT FK_users_role	FOREIGN KEY(role_id) REFERENCES roles(id),
);

-- Adding
ALTER TABLE roles
ADD CONSTRAINT  UQ_roles_title	UNIQUE(title);

-- Delete
ALTER TABLE roles
DROP CONSTRAINT UQ_roles_title





-- == CHECK == --

CREATE TABLE products(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(64) NOT NULL,

	-- price decimal(10,2) CHECK(price > 0) NOT NULL

	price decimal(10,2) NOT NULL,

	CONSTRAINT CK_products_price CHECK(price > 0)
);



CREATE TABLE products(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(64) NOT NULL,

	price decimal(10,2) NOT NULL,
	discount_price decimal(10,2) NOT NULL,

	CONSTRAINT CK_products_price CHECK(price > 0),
	CONSTRAINT CK_products_discount_price CHECK(discount_price > 0 AND discount_price < price)
);

















