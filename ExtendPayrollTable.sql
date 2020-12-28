sp_rename 'employee_payroll.salary','basic_pay'
alter table employee_payroll add
Deduction float,
Taxable_Pay real,
Income_Tax float,
Net_Pay real;
select * from employee_payroll;