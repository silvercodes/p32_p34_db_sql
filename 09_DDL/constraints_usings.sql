-- == Один-ко-многим == --
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


-- == Один-к-одному == --

CREATE TABLE profiles(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	photo_path varchar(128) NULL
);

CREATE TABLE users(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(64) UNIQUE NOT NULL,
	profile_id int UNIQUE,

	CONSTRAINT FK_users_profile FOREIGN KEY(profile_id) REFERENCES profiles(id)
);

DROP TABLE IF EXISTS profiles;
DROP TABLE IF EXISTS users;




CREATE TABLE clients(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(64) UNIQUE NOT NULL,
);

CREATE TABLE profiles(
	id int PRIMARY KEY NOT NULL,
	photo_path varchar(128) NULL,

	CONSTRAINT FK_profiles_user FOREIGN KEY(id) REFERENCES users(id)
);




-- Многие-ко-многим
CREATE TABLE teachers(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	full_name varchar(64) UNIQUE NOT NULL,
);

CREATE TABLE groups(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(64) UNIQUE NOT NULL,
);

CREATE TABLE groups_teachers (
	teacher_id int,
	group_id int,

	CONSTRAINT PK_groups_teachers PRIMARY KEY(teacher_id, group_id),

	CONSTRAINT FK_groups_teachers_teacher FOREIGN KEY (teacher_id) REFERENCES teachers(id),
	CONSTRAINT FK_groups_teachers_group FOREIGN KEY (group_id) REFERENCES groups(id)
);






CREATE TABLE teachers(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	full_name varchar(64) UNIQUE NOT NULL,
);

CREATE TABLE groups(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(64) UNIQUE NOT NULL,
);

CREATE TABLE groups_teachers_statuses (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(32) NOT NULL,
	slug varchar(32) NOT NULL,
	description varchar(128) NULL,
	translit varchar(32) NOT NULL
);

CREATE TABLE groups_teachers (
	id int NOT NULL,
	teacher_id int,
	group_id int,
	start_date date NOT NULL,
	end_date date NULL,
	status_id int NOT NULL,

	CONSTRAINT PK_groups_teachers PRIMARY KEY(id),

	CONSTRAINT FK_groups_teachers_teacher FOREIGN KEY (teacher_id) REFERENCES teachers(id),
	CONSTRAINT FK_groups_teachers_group FOREIGN KEY (group_id) REFERENCES groups(id),
	CONSTRAINT FK_groups_teachers_status FOREIGN KEY (status_id) REFERENCES groups_teachers_statuses(id)
);

-- Получить информацию об активных группах преподавателя с id = 17
SELECT g.title
FROM groups_teachers gt LEFT JOIN groups g ON gt.group_id = g.id
WHERE
	gt.teacher_id = 17
	AND gt.status_id = 1





-- "Сложные" случаи --
-- 1. Категории
CREATE TABLE categories (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(32) NOT NULL,
	parent_id int NULL,

	CONSTRAINT FK_categories_parent FOREIGN KEY (parent_id) REFERENCES categories(id)
);

INSERT INTO categories (title, parent_id)
VALUES
	('A1', NULL),
	('A2', NULL),
	('A3', NULL);

INSERT INTO categories (title, parent_id)
VALUES
	('A11', 1),
	('A12', 1),
	('A13', 1);


-- 2. Подписчики
CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	username varchar(64) NOT NULL,
	email varchar(32) UNIQUE NOT NULL,
	age tinyint NULL
);

CREATE TABLE subscribes (
	author_id int NOT NULL,
	subscriber_id int NOT NULL,

	CONSTRAINT PK_subscribes PRIMARY KEY (author_id, subscriber_id),

	CONSTRAINT FK_subscribes_author_user FOREIGN KEY(author_id) REFERENCES users(id),
	CONSTRAINT FK_subscribes_subscriber_user FOREIGN KEY(subscriber_id) REFERENCES users(id),

	CONSTRAINT CK_different_ids CHECK(author_id <> subscriber_id)
);










