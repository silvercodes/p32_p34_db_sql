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




DROP TABLE units;
