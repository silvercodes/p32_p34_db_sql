CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	username varchar(64) NOT NULL,
	email varchar(64) UNIQUE NOT NULL,
	age tinyint NULL
);

CREATE TABLE images (
	id				int				NOT NULL		PRIMARY KEY IDENTITY(1,1),
	title			varchar(64)		NULL,
	description		varchar(256)	NULL,
	publish_date	smalldatetime	NOT NULL,
	link			varchar(128)	NOT NULL,
	user_id			int				NOT NULL
);