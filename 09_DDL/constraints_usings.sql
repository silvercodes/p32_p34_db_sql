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




CREATE TABLE users(
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
	group_id int
);