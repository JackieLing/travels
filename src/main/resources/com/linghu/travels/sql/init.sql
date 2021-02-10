--用户表
create table t_user(
	id int(6) PRIMARY KEY auto_increment,
	username VARCHAR(60),
	password VARCHAR(66),
	email VARCHAR(66)
);

--省份表
create table t_province(
	id int(6) PRIMARY KEY auto_increment,
	name VARCHAR(60),
	tags VARCHAR(60),
	placecounts int(4)
);

--景点表
create table t_place(
	id int(6) PRIMARY KEY auto_increment,
	name VARCHAR(60),
	picpath VARCHAR(100),
	hottime TIMESTAMP,
	hotticket DOUBLE(7,2),
	dimticket DOUBLE(7,2),
	placedes VARCHAR(300),
	provinceid int(6) REFERENCES t_province(id)
);
