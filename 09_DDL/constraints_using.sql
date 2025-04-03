-- Один-ко-многим --
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



-- Один-к-одному --

CREATE TABLE profiles (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	avatar varchar(128) NULL
);

CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(32) UNIQUE NOT NULL,
	profile_id int UNIQUE NOT NULL,

	CONSTRAINT FK_users_profile FOREIGN KEY(profile_id) REFERENCES profiles(id)
)

--profiles
-- 101		img1.jpg
-- 102		img2.jpg

-- users
-- 23		vasia@mail.com		101
-- 24		petya@mail.com		102


CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(32) UNIQUE NOT NULL
)

CREATE TABLE profiles (
	id int PRIMARY KEY NOT NULL,
	avatar varchar(128) NULL,

	CONSTRAINT FK_profiles_user FOREIGN KEY(id) REFERENCES users(id)
);

-- users
-- 101		vasia@mail.com
-- 102		petya@mail.com

--profiles
-- 101		img1.jpg
-- 102		img2.jpg





-- Многие-ко-многим --




