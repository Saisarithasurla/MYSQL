create database customer;
use customer;
create table customers(customer_id int primary key , first_name varchar(40) not null, last_name varchar(40) not null, 
age varchar(20) not null, country varchar(40) not null);
use customer;
insert into customers values(1,'David','Robinson',26,'UK'),(2,'John','Doe',30,'USA'),(3,'Betty','Reinhardt',23,'UAE'),(4,'Robert','Luna',34,'UAE'),
(5,'sharman','Doe',21,'UK'),(6,'Willaiam','shake',36,'UK');
use customer;
create table orders (order_id int primary key, item varchar(40) not null, amount varchar(40) not null,
customid int ,
foreign key (customid)
 references customers(customer_id));
 use customer;
 insert into orders values (1,'Mouse',300,3),(2,'Monitor',12000,2),(3,'Mousepad',250,5),(4,'Mouse',300,1),(5,'Keyboard',400,4),
 (6,'Monitor',12000,6),(7,'Mouse',300,3);
 use customer;
 select customer_id,first_name,last_name,country
 from customers as t1
 inner join 
 orders as t2
 where t1.customer_id=t2.customid;
 use customer;
 create table shippings (shipping_id int primary key,status varchar(40) not null, customer_ID int not null);
 use customer;
 insert into shippings values (1,'Pending',4),(2,'Pending',5),(3,'Delivered',6),(4,'Pending',3),(5,'Delivered',2),
 (6,'Delivered',1),(7,'Pending',3);
 
 use customer;
 select t1.first_name,t1.last_name,t2.status
 from customers as t1
 inner join
 shippings as t2
 on t1.customer_id=t2.IDcustom;
 
 use customer;
 select first_name,t2.item
 from customers as t1
 left join
 orders as t2
 on t1.customer_id=t2.customid;
 
  use customer;
 select first_name,t2.item
 from customers as t1
 right join
 orders as t2
 on t1.customer_id=t2.customid;
 
  use customer;
 select first_name,t2.item
 from customers as t1
 right join
 orders as t2
 on t1.customer_id=t2.customid;
 select first_name,t2.item
 from customers as t1
 left join
 orders as t2
 on t1.customer_id=t2.customid;
 
 use customer;
 select t1.first_name,count(t2.item)
 from customers as t1
 left join 
 orders as t2
 on t1.customer_id=t2.customid
 group by t1.first_name;
 
 
 use customer;
 select t1.first_name,t1.last_name, sum(t2.amount)
from customers as t1
left join
orders as t2
on t1.customer_id=t2.customid
group by t1.first_name,t1.last_name;


use customer;
select t1.item,t2.status
  from orders as t1
  left join 
  shippings as t2
 on t1.customid=t2.IDcustom;
 
 use customer;
 select t1.country, sum(t2.amount)
  from customers as t1
  left join
  orders as t2
  on t1.customer_id=t2.customid
   group by t1.country;
   
   use customer;
   select t1.first_name,t1.last_name,t2.item,t3.status
FROM customers as t1
JOIN orders as t2 
ON t1.customer_id = t2.customid
JOIN shippings as t3
ON t2.customid = t3.IDcustom;

 
 
 
 
 
 