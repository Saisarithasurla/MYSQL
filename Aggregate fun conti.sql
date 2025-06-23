/*use company;
select gender ,sum(salary)
from associates
group by gender;
select gender, avg(salary)
from associates
group by gender;
select gender, max(salary)
from associates
group by gender;*/
select gender, min(salary)
from associates
group by gender;
