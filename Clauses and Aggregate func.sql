/*use company;
select empname,salary
from associates
where salary=28000;
select eid,salary
from associates
where salary  between 20000 and 30000;
select empname from associates
where empname like 'k%';
select empname from associates 
where empname like '_a%';
SELECT * FROM associates
WHERE SUBSTRING(empname, LENGTH(empname) - 2, 1) = 'h';
select *from associates
where empname not like '%a_';
select *from associates
where salary in(22000,23000,24000);
select *from associates
where salary not in(25000);
select *from associates
where email is null;
select *from associates
where email is not null;
select *from associates
order by salary desc;
select *from associates
order by department desc
limit 5;
select eid,empname  from associates
order by  eid 
limit 1
offset 2;
select gender ,count(gender) as 'no of people'
from associates
group by gender;*/



