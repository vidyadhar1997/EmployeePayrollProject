select * from [dbo].[employee_payroll]

create table Department
(
department_id int not null primary key,
department_name varchar(20) not null
)
insert into Department values(101,'Sales'),(102,'Marketing');
select * from Department;

create table payroll
(
payroll_Id int not null primary key,
basic_pay money not null,
deductions money not null,
taxable_pay money not null,
net_pay money not null,
income_tax money not null
)
insert into payroll values(201,500000,3000,2000,22000,300),
(202,600000,4000,3000,32000,400),
(203,700000,5000,4000,42000,500);
select * from payroll;

create table company
(
company_id int not null primary key,
company_name varchar(20) not null
)
insert into company values
(301,'Nokia'),
(302,'Samsung');
select * from company;

create table employee
(
employee_id int not null primary key,
employee_name varchar(70) not null,
gender char(1) not null,
address varchar(100) not null,
phone_number bigint not null,
start_date datetime not null,
company_id int not null,
payroll_id int not null,
basic_pay money not null,
foreign key(company_id) references company(company_id),
foreign key(payroll_id) references payroll(payroll_Id)
)
insert into employee values
(1,'dhiraj','M','latur',3939390910,'2020-10-2',301,201,300000),
(2,'suraj','M','pune',3939690910,'2019-10-2',302,202,40000),
(3,'kajol','F','amrvati',3959390910,'2020-10-2',301,203,600000);
select * from employee;

create table EmployeeDepartment
(
employee_Department_id int not null,
employee_id int not null,
department_id int not null,
foreign key(employee_id) references employee(employee_id),
foreign key(department_id)references Department(department_id)
)
insert into EmployeeDepartment values
(401,1,101),
(402,2,102),
(401,1,102),
(402,2,101);
select * from EmployeeDepartment;

/*Redo the UC-7 */
select sum(basic_pay) from employee where gender='M' group by gender;
select sum(basic_pay) from employee where gender='F' group by gender;
select avg(basic_pay) from employee where gender='M' group by gender;
select avg(basic_pay) from employee where gender='F' group by gender;
select min(basic_pay) from employee where gender='M' group by gender;
select min(basic_pay) from employee where gender='F' group by gender;
select max(basic_pay) from employee where gender='M' group by gender;
select max(basic_pay) from employee where gender='F' group by gender;
select count(phone_number) as 'number of gender' from employee group by gender;

