-- Создать таблицу employees

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Nataliia Voroniuk'), ('Iryna Klimkova'), ('Inna Bolotina'),
	   ('Hanna Mironovich'), ('Olena Parneta'), ('Ivan Gushchin'),
	   ('Alina Povstyan'), ('Anna Los'), ('Mikhail Luzan'),
	   ('Lena Barinova'), ('Elena Stepanova-Parshuto'), ('Andrusenko Zakhar'),
	   ('Ilya Pyataev'), ('Nadezhda Dudnik'), ('Artsiom Nalivaika-Vakulchik'),	   
	   ('Artsiom Nalivaika-Vakulchik'), ('Iuliia Ilchenko'), ('Dmitry Mitskevich'),
	   ('Maria Konovalova'), ('Petr Balashev'), ('Yuliya Daubniuk'),
	   ('Polina Pidleteichuk'), ('Mikhail Avdeev'), ('Tatiana Ivanova'),
	   ('Lexa Eliseev'), ('Dmitry Krylov'), ('Olga Polhovskaja'),		   
	   ('Darya Grigorenko'), ('Iana Chulochnikova'), ('Igor Karabach'),
	   ('Yury Onufriyuk'), ('Filipovich Andrei'), ('Zulfiie Yahiaieva'),
	   ('Eleonora Terenteva'), ('Timur Marchenko'), ('Serhii Matviienko'),
	   ('Ekaterina Lapshina'), ('Vadim Ksendzov'), ('Georgy Goodman'),		   
	   ('Inna Didenko'), ('Sergey Morkovkin'), ('Tatyana Evmenenko'),
	   ('Elisey Lubennikov'), ('Dmitry Abakumov'), ('Alexey Strelkov'),		   
	   ('Andrey Boyko'), ('Ekaterina Orehova'), ('Ivan Alexeev'),
	   ('Marchenko Julya'), ('Kvetko Olga'), ('Patrik Star'),
	   ('Kristina Tur'), ('Viktor Sohin'), ('Svetlana Terehina'),
	   ('Evgeny Bukas'), ('Anton Trofimenko'), ('Andrey Gubchik'),		   
	   ('Olga Naumova'), ('Evgeny Petrov'), ('Anna Krasner'),
	   ('Anna Levina'), ('Andrey Plahov'), ('Semen Goryachev'),
	   ('Maksim Ermolin'), ('Lidiya Gromiko'), ('Danil Svejov'),
	   ('Ruslan Samsonov'), ('Andrey Polinak'), ('Elena Kuzeeva'),
	   ('Diana banevich');
	   
-- Создать таблицу salary

create table salary (
	id serial primary key,
	monthly_salary int not null
);

-- Наполнить таблицу salary 15 строками

insert into salary (monthly_salary)
values (1000), (1100), (1200),
	   (1300), (1400), (1500),
	   (1600), (1700), (1800),
	   (1900), (2000), (2100),
	   (2200), (2300), (2400),
	   (2500);
	  
-- Создать таблицу employee_salary
	  
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

	  
-- Наполнить таблицу employee_salary 40 строками
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (16, 4), (28, 8), (44, 12), (71, 16),
	   (55,3), (9, 7), (57, 11), (83, 15),
	   (69, 2), (14, 6), (33, 10), (74, 14),	   
	   (43, 1), (45, 16), (61, 9), (98, 13),	   
	   (1, 16), (34, 4), (25, 8), (73, 12),
	   (8, 15), (19, 3), (36, 7), (95, 11),
	   (65, 14), (3, 2), (18, 6), (88, 10),
	   (48, 13), (24, 1), (27, 5), (77, 9),	   
	   (22, 12), (38, 16), (64, 4), (81, 8),	   
	   (11, 11), (5, 15), (29, 3), (75, 7);	   
	   
-- Создать таблицу roles
	   
create table roles (
	id serial primary key,
	role_name int not null unique
);
	  
-- Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30) using role_name :: varchar (30);
	  
-- Наполнить таблицу roles 20 строками

insert into roles (role_name)
values ('Junior Python developer'), ('Middle Python developer'),
	   ('Senior Python developer'), ('Junior Java developer'),
	   ('Middle Java developer'), ('Senior Java developer'),	   
	   ('Junior JavaScript developer'), ('Middle JavaScript developer'),	   
	   ('Senior JavaScript developer'), ('Junior Manual QA engineer'),	   
	   ('Middle Manual QA engineer'), ('Senior Manual QA engineer'),
	   ('Project Manager'), ('Designer'), ('HR'), ('CEO'),	   
	   ('Sales manager'), ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'), ('Senior Automation QA engineer');	   
	  
-- Создать таблицу roles_employee
	  
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)	
);
	  
-- Наполнить таблицу roles_employee 40 строками:
	  
insert into roles_employee (employee_id, role_id)
values (2, 3), (4, 5), (8, 7), (10, 9),
	   (13,11), (16, 13), (19, 15), (45, 12),
	   (20, 17), (23, 19), (26, 1), (28, 4),	   
	   (31, 6), (32, 8), (33, 10), (36, 13),	   
	   (38, 16), (41, 4), (43, 8), (44, 12),
	   (47, 14), (49, 18), (50, 20), (52, 2),
	   (53, 11), (55, 5), (56, 6), (57, 10),
	   (59, 13), (60, 1), (61, 8), (62, 9),	   
	   (63, 12), (65, 16), (66, 4), (67, 8),	   
	   (69, 11), (7, 15), (27, 3), (70, 7);
