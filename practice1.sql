create database employeeData;
use employeeData;
show databases;
create table employee(empID integer,
empName varchar(40),
jobName varchar(25),
hireDate date,
salary decimal,
depID integer,
primary key(empID));
show tables;
describe employee;
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(101, 'Ram', 'President', '2004-10-25', 45000.00, 1001);
select * from employee;
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(102, 'Rohit', 'Manager', '2006-11-20', 35000.00, 2001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(103, 'Sameer', 'SalesMan', '2008-03-15', 30000.00, 1001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(104, 'Raj', 'Clerk', '2000-06-14', 25000.00, 3001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(105, 'Madhav', 'Analyst', '2010-04-18', 20000.00, 1001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(106, 'Tushar', 'SalesMan', '2011-05-14', 30000.00, 1001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(107, 'Shreyas', 'Clerk', '2018-09-03', 25000.00, 1001);
select * from employee;
select salary from employee;
select distinct jobName from employee;
select * from employee where salary > 25000;
select empName, salary from employee where jobName = 'Analyst';
create table department(depID int, depName varchar(30), depLocation varchar(30));
insert into department(depID, depName, depLocation)
values(1001, 'FINANCE', 'MAHARASHTRA');
insert into department(depID, depName, depLocation)
values(2001,'AUDIT', 'GUJRAT');
insert into department(depID, depName, depLocation)
values(3001, 'mARKETING', 'KERALA');
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(108, 'AKshay', 'Clerk', '2016-10-30', 25000.00, 2001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(109, 'Virat', 'Analyst', '2020-07-05', 20000.00, 1001);
insert into employee(empID, empName, jobName, hireDate, salary, depID)
values(110, 'Rohit', 'SalesMan', '2012-05-19', 25000.00, 3001);
select * from employee;
select * from department;
select depID, count(*) from employee
group by depID;
select jobName, count(*) from employee
group by jobName;
select empID, count(*) from employee
group by empID;
select empName from employee
where empName like 'A%';
select employee.empID, employee.empName, department.depName
from employee
inner join department
on employee.depID = department.depID;

select employee.empID, employee.empName, department.depName
from employee
right join department
on employee.depID = department.depID;

select employee.empID, employee.empName, department.depName
from employee
left join department
on employee.depID = department.depID;

select employee.empID, employee.empName, department.depName
from employee
full join department
on employee.depID = department.depID;
