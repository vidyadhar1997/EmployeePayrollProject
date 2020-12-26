alter table employee_payroll add gender char(1)
update employee_payroll set gender='M' where name='john' or name ='bob'
update employee_payroll set gender='F' where name='charlie'