use company;
alter table associates
add column age varchar(20) not null ;age

-- list the employee name whose age is greater than avg

use company;
select empname
from associates
where age > (select avg(age)
from associates);

-- list the employee details with max salary among people greater than age 30

use company;
select *
from associates
where age in (
select age
from associates
where age>30)
order by salary desc limit 1;


-- print all employees who earn more than avg salary among their gender

use company;
select *
from associates as s
where salary>=(select avg(salary)
from associates
where gender=s.gender);


