-- group
-- student
-- teacher
-- pair			<----
-- subject
-- user
-- event
-- homework
-- .....



CREATE TABLE schedule_items (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	number tinyint NOT NULL,
	item_start time NOT NULL,
	item_end time NOT NULL,
	status tinyint DEFAULT(0) NOT NULL
);

CREATE TABLE subjects (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title nvarchar(256) NOT NULL,
	deleted_at datetime NULL
);

CREATE TABLE cities (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title nvarchar(64) NOT NULL
);

CREATE TABLE branches (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title nvarchar(64),
	city_id int NOT NULL,

	CONSTRAINT FK_branches_city FOREIGN KEY (city_id) REFERENCES cities(id)
);

CREATE TABLE classrooms (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	number nvarchar(32) NOT NULL,
	title nvarchar(64) NULL,
	branch_id int NOT NULL,

	CONSTRAINT FK_classrooms_branch FOREIGN KEY (branch_id) REFERENCES branches(id)
);

-------
CREATE TABLE permissions (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(64) NOT NULL,								-- get homeworks
	slug varchar(64) UNIQUE NOT NULL						-- get_hw
);

CREATE TABLE roles(
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	title varchar(32) NOT NULL	
);

CREATE TABLE permissions_roles (
	permission_id int NOT NULL,
	role_id int NOT NULL,

	CONSTRAINT PK_permissions_roles PRIMARY KEY (permission_id, role_id),
	CONSTRAINT FK_permissions_roles_permission FOREIGN KEY (permission_id) REFERENCES permissions(id),
	CONSTRAINT FK_permissions_roles_role FOREIGN KEY (role_id) REFERENCES roles(id)
);


CREATE TABLE users (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	email varchar(64) UNIQUE NOT NULL,
	hash char(128) NOT NULL,
	role_id int NOT NULL,

	CONSTRAINT FK_users_role FOREIGN KEY(role_id) REFERENCES roles(id)
);

CREATE TABLE teachers (
	id int PRIMARY KEY NOT NULL,
	first_name nvarchar(128) NOT NULL,
	last_name nvarchar(128) NOT NULL,
	--.....

	CONSTRAINT FK_teachers_user FOREIGN KEY(id) REFERENCES users(id)
);

-------

CREATE TABLE pairs (
	id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	pair_date date NOT NULL,
	schedule_item_id int NOT NULL,
	subject_id int NOT NULL,
	is_online bit NOT NULL DEFAULT(0),
	classroom_id int NULL,
	teacher_id int NOT NULL,
	
	-- TODO: group


	CONSTRAINT FK_pairs_schedule_item FOREIGN KEY (schedule_item_id) REFERENCES schedule_items(id),
	CONSTRAINT FK_pairs_subject FOREIGN KEY (subject_id) REFERENCES subjects(id),
	CONSTRAINT FK_pairs_classroom FOREIGN KEY (classroom_id) REFERENCES classrooms(id),
	CONSTRAINT FK_pairs_teacher FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);



