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

select *
from employees

select last_name,salary,department_id
from employees
where last_name = 'King' 

UPDATE employees
set salary = salary * 1.10 ,department_id = 90
where last_name = 'King'

UPDATE employees
set salary = salary - '2400',department_id = 90
where last_name = 'King'

select *
from employees

select last_name,salary
from employees
where salary > 6000 and (last_name like 'm%' and last_name like 'M%' and last_name like 'j%')
order by last_name  asc 

SELECT last_name, salary
FROM employees
WHERE salary > 6000  AND (last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name LIKE 'M%')
ORDER BY last_name DESC;


SELECT last_name, salary
FROM employees
where salary > 6000 and last_name like '[jam]%'
ORDER BY last_name DESC;

SELECT last_name, salary
FROM employees
where salary > 6000 and last_name like '[jam]%'
ORDER BY last_name asc;

select *
from employees

select first_name +' '+ last_name as Full_name,salary as salaty,department_id as department ,commission_pct
from employees
where commission_pct is null


select *
from employees

select last_name ,salary ,hire_date,job_id,department_id 
from employees
where job_id in('IT_PROG','SA_MAN')


select last_name  ,job_id ,salary
from employees
where salary not in(2500,3500,7000)

-- Question:  
-- Why, when I run the process here,do I get less than 6000, 
-- even though I specified a condition?

select last_name,salary
from employees
where first_name like'j%' or first_name like'A%'or first_name like'M%' and salary  > 6000 
order by last_name desc

select last_name,salary
from employees
where (first_name like'j%' or first_name like'A%'or first_name like'M%')and salary  > 6000 
order by last_name desc



select *
from employees

select *
from jobs

select *
from departments




select first_name,department_name
from employees join departments
on employees.department_id = departments.department_id

-- In short, with join

select first_name,department_name
from employees e join departments d
on e.department_id = d.department_id

select *
from employees

select *
from jobs

select first_name,job_title
from employees e join jobs j
on e.job_id = j.job_id
where employee_id = 102

select first_name,job_title
from employees e join jobs j
on e.job_id = j.job_id

select *
from employees

select *
from jobs

select *
from departments
  
select *
from  locations    
         
    select department_name,street_address,city,state_province,country_id
    from departments d join  locations l
    on d.location_id = l.location_id

    select d.department_name,l.street_address,l.city,l.state_province,l.country_id,l.location_id
    from departments d join  locations l
    on d.location_id = l.location_id

    select e.first_name,d.department_name
    from employees e join departments d
    on e.department_id =d.department_id
