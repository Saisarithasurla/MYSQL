use customer;
create table colors(id int primary key,color_name varchar(40) not null);
use customer;
insert into colors values(1,'red'),(2,'green'),(3,'yellow'),(4,'blue'),(5,'pink');
use customer;
create table  shapes(id int primary key,shape varchar(40) not null);
insert into shapes values(1,'round'),(2,'sphere'),(3,'triangle'),(4,'square'),(5,'disc');

use customer;
select t1.color_name,t2.shape
from colors as t1
cross join
shapes as t2;

use customer;
create table  employeees (empid int primary key,empname varchar(40) not null , department varchar(40) not null);
insert into employeees values(1,'kriti','sales'),(2,'priya','sales'),(3,'roshan','HR'),(4,'mike','sales');

use customer;
select t1.empname,t2.empname as pairs
from employeees as t1
inner join
employeees as t2
on t1.department=t2.department and t1.empid<t2.empid;