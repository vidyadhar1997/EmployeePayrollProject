Alter table employee_payroll add phone_number varchar(15) 
Alter table employee_payroll add addres varchar(200) not null default 'TBD'
Alter table employee_payroll add department varchar(200) default null

select * from employee_payroll
