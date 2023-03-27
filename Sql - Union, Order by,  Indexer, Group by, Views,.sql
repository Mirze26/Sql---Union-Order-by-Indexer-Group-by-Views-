create table Customers(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) not null,
[Age] int 
)

insert into Customers values
('Mirze','Beshirzade',27),
('Hemze', 'Elizade',26),
('Hemid','Heyderzade',29),
('Heyder','Eliyev',30),
('Anar','Aliyev',27),
('Eli','Kazimov',23)

select *from Customers



create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) not null,
[Age] int 
)


insert into Employees values
('Mirze','Beshirzade',27),
('Hemze', 'Elizade',26),
('Hemid','Heyderzade',29),
('Heyder','Eliyev',30),
('Anar','Aliyev',27),
('Eli','Kazimov',23),
('Vav','Nehmetov',26),
('Dunya','Sefiyev',30)

select *from Employees
select *from Customers

select * from Employees
union
select *from Customers


select * from Employees
union all
select *from Customers



select * from Employees
except
select *from Customers



select * from Employees
intersect
select *from Customers



create table Students(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) not null,
[Email] nvarchar(50) not null,
[Age] int 
)


insert into Students values
('Mirze','Beshirzade','mize@gmail.com',27),
('Hemze', 'Elizade','masan@bk.ru',26),
('Hemid','Heyderzade','qemdulla@gmail.com',29),
('Heyder','Eliyev','pince93@gmail.com',30),
('Anar','Aliyev','aliyev@bk.ru',27),
('Eli','Kazimov','baki@mail.ru',23),
('Vav','Nehmetov','vava@list.ru',26)


select * from Students order by Id asc

select [Name],[Surname],[Email],[Age] from Students order by Age desc

select getdate () as 'current date'

select count (*) 'Age count' , Age from Students
Group by Age


select count (*) 'Age count' , Age from Students
where Age>25
Group by Age


select count (*) 'Age count' , Age from Students
where Age>25
Group by Age
having count (*) > 1


begin

declare @age int =(select Sum (Age) from Students)
declare @avgAge int = (select AVG (Age)from Students)


if @age>@avgAge

print 'Yes'

else 

print 'No'


end



create view GetStudentsByAge as
select *from Students where age >25

select *from GetStudentsByAge