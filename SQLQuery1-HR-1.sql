select *
from employees



select first_name , last_name , email
from employees


select *
from employees

-- Required: The Human Resources department needs a full employee statement for one employee 
-- with the pseudonym Full_Name (use the CONCAT function to insert)
-- along with their salary for a short reason, Annual_Salary. 
-- Requirements: We only need employees whose starting monthly salary ranges 
-- between $3,000 and $8,000 (including these values).

select first_name +' '+last_name as Full_name, salary as Annual_salary
from employees
where salary between 3000 and 8000
order by salary DESC 



select  CONCAT (first_name ,' ',last_name  ) as Full_name, salary as Annual_salary
from employees
where salary between  3000 and 8000
order by salary   DESC

select  CONCAT (first_name ,' ',last_name  ) as Full_name, salary as Annual_salary
from employees
where salary  > 3000 
order by salary   DESC

select  CONCAT (first_name ,' ',last_name  ) as Full_name, salary as Annual_salary
from employees
where salary  > 3000 
order by salary   ASC

--
--
--
--

select *
from employees


select last_name,hire_date,department_id
from employees
where hire_date between '2000-1-1' and '2000-12-31' and department_id in(50,60,80)
order by  hire_date asc

select last_name,hire_date,department_id
from employees
where hire_date between '2000-1-1' and '2000-12-31' and department_id in(50,60,80)
order by  hire_date desc


select last_name,salary,department_id
from employees
where last_name = 'King' 

UPDATE employees
set salary = salary * 1.10 ,department_id = 90
where last_name = 'King'
