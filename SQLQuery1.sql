create table student (
ID int NOT NULL PRIMARY KEY,
navn varchar(20) not null,
linje varchar(30) default 'Programmør',
age tinyint check (age>=15)
);

insert into student (ID, navn, linje, age)
values (8, 'bo', default, 26);

select * from student

