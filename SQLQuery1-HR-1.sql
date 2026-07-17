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


    select *
from departments

select *
from employees

select *
from jobs

select *
from departments
  
select *
from  locations


select d.department_id,d.department_name ,max(salary) as max_salary ,MIN(salary) as MIN_salary,sum(salary) as sum_salary, count(salary) as count_salary,avg(salary)as avg_salary,sum(employee_id) as sum_employee_id
    from employees e join departments d
    on e.department_id = d.department_id
     where  d.department_id > 30 
    group by d.department_id,d.department_name
    having count(salary) >= 5
    order by d.department_id desc

    -------------------------------------------------------------------------------


    select *
    from employees

    insert into employees 
    values(207,'Mohammed','alkubati','alkubati000',null,'1999-1-1','IT_prog',40000,null,null,60)

   update employees
   set salary = 50000
   where employee_id =207 


    delete employees
   set salary = 50000
   where employee_id =207 

   ------------------------------------------------------------------------------------------------------------
--   create courses table as follow:
--   cours_id => pk
--   course_title => not null
--   price => between 800 and 3000
--   start_date => default value the date after 7 days
--   duration => btw 12 and 120

   create database firstdb;

   drop database firstdb;

   create table courses (
   cours_id int,--PK
   course_title varchar(50) not null,
   price DECIMAL(9,3),
   starts_date date default getdate() + 7,
   duration int,
   
   constraint firstdb_cours_id_PK primary key(cours_id),
   constraint firstdb_price_CK check(price between 800 and 3000),
   );

   create table courses
(
cours_id int,
 course_title varchar(50) not null,
 price DECIMAL(8,2) ,
 Start_Data  DATE default getdate()+7 ,
 duration int ,

constraint courses_cours_id_PK primary key(cours_id),
constraint courses_price_CK check(price between   800 and  3000),
constraint courses_duration_CK check(duration between   12 and  120)
);

   insert into courses ( cours_id,course_title,price, starts_date,duration)
   values(1,comp,9000,2026)

   select *
   from courses


   -- * create a projects table 
--   project_id => pk
--   project_name => not null
--   client_name => 
--   hour_rate => positive greater than 1

     create table projects(
     projects_id int,
     project_name varchar(50) not null,
     client_name  varchar(50),
     hour_rate int,


     constraint firstdb_projects_id_PK primary key(projects_id),

);


     create table projects(
     projects_id int,
     project_name varchar(50) not null,
     client_name  varchar(50),
     hour_rate decimal(10,3),


     constraint firstdb_projects_id_PK primary key(projects_id),
      constraint firstdb_hour_rate_CK   check(hour_rate),
);

select *
from projects

-- * create a tasks table
--   task_id => pk
--   description => max char 255
--   start_date => date
--   end_date => greater than start_date
--   project_id => foreign key

 create table tasks(
     task_id int,
     description_ char(255)
     start_date_s date  default getdate(),
     end_date date ,
     project_id int,

     constraint firstdb_task_id_PK primary key(task_id),
     constraint  firstdb_project_FK  FOREIGN KEY(project_id) 
);

CREATE TABLE Tasks (
    Task_ID INT PRIMARY KEY,
    Description VARCHAR(255),
    Start_Date DATE,
    End_Date DATE,
    Project_ID INT ,
	 CONSTRAINT Tasks_Project_ID_FK  FOREIGN KEY(Project_ID) REFERENCES Projects(Project_ID),
    CONSTRAINT CK_Tasks_EndDate CHECK (End_Date > Start_Date)
);
