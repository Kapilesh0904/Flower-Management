create database flowers;
use flowers;

create table proprietor(prop_id varchar (30) not null,name varchar(30),city varchar(30),state varchar(30),phone long,primary key(prop_id));

create table store(st_id varchar(30) not null,
prop1_id varchar(30),
name varchar(30),
address varchar(30),
primary key(st_id),
foreign key(prop1_id) references proprietor(prop_id) on delete cascade);

create table employee(emp_id varchar(30),
prop2_id varchar(30),	
emp_name varchar(27),
emp_country varchar(27),
primary key(emp_id),
foreign key(prop2_id) references proprietor(prop_id) on delete cascade);

create table customer(cust_id varchar(30),
emp1_id varchar(30),	
cust_name varchar(30),
phone long,
cust_city varchar(30),
primary key(cust_id),
foreign key(emp1_id) references employee(emp_id) on delete cascade); 

create table items(item_id varchar(30),
prop3_id varchar(30),
cust1_id varchar(30),	
item_name varchar(30),
item_type varchar(30),
primary key(item_id),
foreign key(prop3_id) references proprietor(prop_id),
foreign key(cust1_id) references customer(cust_id) on delete cascade);

create table transport(car_no varchar(30),
driv_name varchar(30),
emp4_id varchar(30),	
item4_id varchar(30),	
driv_phone long,
car_name varchar(30),
primary key(car_no),
foreign key(emp4_id) references employee(emp_id) ,
foreign key(item4_id) references items(item_id) on delete cascade);	

create table transfer(item_id1 varchar(25),car_no1 varchar(30),
foreign key(item_id1) references items(item_id),
foreign key(car_no1) references transport(car_no) on delete cascade);

insert into proprietor values('1', 'Kapil','Bengaluru','Karnataka',12345);
insert into proprietor values('2', 'Manoj','Bengaluru','Karnataka',87345);
insert into proprietor values('3', 'Varun','Bengaluru','Karnataka',89345);
insert into proprietor values('4', 'AKP','Bengaluru','Karnataka',98345);
insert into proprietor values('5', 'Akash','Hyderabad','Telengana',12845);
insert into proprietor values('6', 'Achala','Mysore','Karnataka',92345);
insert into proprietor values('7', 'Advaith','Delhi','Delhi',12245);
insert into proprietor values('8', 'Yash','Mumbai','Maharashtra',87945);
insert into proprietor values('9', 'VarunSai','Hyderabad','Telengana',63345);
insert into proprietor values('10', 'Jassh','Mumbai','Maharashtra',14545);
insert into proprietor values('11','Manu','Bengaluru','Karnataka',67891);
select * from proprietor;

insert into store values('1','1','Shop1','Seegehalli');
insert into store values('2','2','Shop2','MG Road');
insert into store values('3','3','Shop3','Koramangala');
insert into store values('4','4','Shop4','Basavanagudi');
insert into store values('5','5','Shop5','Secunderabad');
insert into store values('6','6','Shop6','Palace Road');
insert into store values('7','7','Shop7','MG Road');
insert into store values('8','8','Shop8','Bandra');
insert into store values('9','9','Shop9','Tarnaka');
insert into store values('10','10','Shop10','Andheri');
insert into store values('11','11','Shop11','Basavanagudi');
select * from store;

insert into employee values('1','1','p1','India');
insert into employee values('2','1','p2','Sri Lanka');
insert into employee values('3','2','p3','India');
insert into employee values('4','2','p4','Nepal');
insert into employee values('5','3','p5','India');
insert into employee values('6','3','p6','Bhutan');
insert into employee values('7','3','p7','Nepal');
insert into employee values('8','4','p8','India');
insert into employee values('9','4','p9','Sri Lanka');
insert into employee values('10','5','p10','India');
insert into employee values('11','6','p11','India');
insert into employee values('12','7','p12','Bhutan');
insert into employee values('13','8','p13','India');
insert into employee values('14','9','p14','India');
insert into employee values('15','10','p15','India');
select * from employee;

insert into customer values(1,1,'Kapil',56789,'Bengaluru');
insert into customer values(2,2,'c2',54789,'Bengaluru');
insert into customer values(3,3,'c3',51789,'Bengaluru');
insert into customer values(4,5,'c4',56439,'Bengaluru');
insert into customer values(5,8,'c5',56780,'Bengaluru');
insert into customer values(6,10,'c6',56787,'Hyderabad');
insert into customer values(7,11,'c7',56785,'Mysore');
insert into customer values(8,12,'c8',56798,'Delhi');
insert into customer values(9,13,'c9',56767,'Mumbai');
insert into customer values(10,14,'c10',54319,'Hyderabad');
insert into customer values(11,1,'c11',76209,'Bengaluru');
insert into customer values(12,2,'c12',65098,'Bengaluru');
select * from customer order by emp1_id;

insert into items values(1,1,1,'rose','bouquet');
insert into items values(2,1,1,'sunflower','single');
insert into items values(3,1,2,'daffodil','single');
insert into items values(4,1,2,'lily','bouquet');
insert into items values(5,2,3,'rose','single');
insert into items values(6,2,3,'sunflower','bouquet');
insert into items values(7,3,4,'daffodil','bouquet');
insert into items values(8,4,5,'lily','bouquet');
insert into items values(9,5,6,'rose','single');
insert into items values(10,6,7,'sunflower','single');
insert into items values(11,6,7,'lily','single');
insert into items values(12,7,8,'rose','bouquet');
insert into items values(13,8,9,'daffodil','single');
insert into items values(14,9,10,'sunflower','bouquet');
select * from items order by prop3_id;

insert into transport values(1,'d1',1,1,12345,'c1');
insert into transport values(2,'d2',1,2,34567,'c2');
insert into transport values(3,'d3',2,3,42345,'c3');
insert into transport values(4,'d4',2,4,62345,'c4');
insert into transport values(5,'d5',3,5,67345,'c5');
insert into transport values(6,'d6',3,6,12845,'c6');
insert into transport values(7,'d7',4,7,72345,'c7');
insert into transport values(8,'d8',5,8,98765,'c8');
insert into transport values(9,'d9',6,9,94765,'c9');
insert into transport values(10,'d10',7,10,38765,'c10');
select * from transport;

insert into transfer values(1,1);	
insert into transfer values(2,2);
insert into transfer values(3,3);
insert into transfer values(4,4);
insert into transfer values(5,5);
insert into transfer values(6,6);
insert into transfer values(7,7);
insert into transfer values(8,8);
insert into transfer values(9,9);
insert into transfer values(10,10);
select * from transfer;

/* List names of all propreitors in Bengaluru */
select name from proprietor where city = 'Bengaluru';

/* List names of all foreign employees */
select emp_name from employee where emp_country not in ('India');

/* List details of all customers who buy a particular flower */
select * from customer where cust_id in (select cust1_id from items where item_name = 'rose') order by cust_id;

/* Retrieve details of all proprietors who have a shop in a particular area */
select * from proprietor p
join store s on s.prop1_id = p.prop_id
where s.address = 'Basavanagudi' order by prop1_id desc;

/* Retrive details of all customers who have bought a bouquet */
select distinct * from customer c
join items i on i.cust1_id = c.cust_id
where i.item_type = 'bouquet';