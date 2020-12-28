Alter table employee_payroll add phone_number varchar(15) 
Alter table employee_payroll add addres varchar(200) not null default 'TBD'
Alter table employee_payroll add department varchar(200) default null

select * from employee_payroll
insert into employee_payroll(name,salary,start_date) values('Mark',100000.00,'2018-01-03')