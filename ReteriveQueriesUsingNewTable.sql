/*UC--4*/
select * from employee e inner join company c on 
e.company_id=c.company_id inner join payroll p on
p.payroll_id=e.payroll_id inner join EmployeeDepartment ed on
e.employee_id=ed.employee_id inner join Department d on
ed.department_id=d.department_id where e.employee_id=1;

select * from employee e inner join company c on 
e.company_id=c.company_id inner join payroll p on
p.payroll_id=e.payroll_id inner join EmployeeDepartment ed on
e.employee_id=ed.employee_id inner join Department d on
ed.department_id=d.department_id where e.employee_id=2;

/*UC-5*/
select basic_pay from employee where start_date between CAST('2020-10-2' as date) and GETDATE();

/*UC-7 */
select sum(basic_pay) from employee where gender='M' group by gender;
select sum(basic_pay) from employee where gender='F' group by gender;
select avg(basic_pay) from employee where gender='M' group by gender;
select avg(basic_pay) from employee where gender='F' group by gender;
select min(basic_pay) from employee where gender='M' group by gender;
select min(basic_pay) from employee where gender='F' group by gender;
select max(basic_pay) from employee where gender='M' group by gender;
select max(basic_pay) from employee where gender='F' group by gender;
select count(phone_number) as 'number of gender' from employee group by gender;

