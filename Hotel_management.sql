drop table Hotel_management;

drop table Customer_information;

drop table Operator_information;



drop table Hotel_properties;
--table 1 
create table Customer_information
(
	c_id number(7),
	c_name varchar(10) not null,
	c_mobile number(10) not null,
	c_email varchar(20),
	c_address varchar(20),
	primary key(c_id)
);
--table 2
create table Hotel_properties
(
	room_id number(7),
	room_capacity varchar(20),
	room_category varchar(10),
	room_fair number(10),
	primary key(room_id)
);
--table 3
create table Operator_information
(
    o_id number(7) ,
	o_name varchar(10),
	o_email varchar(20),
    o_mobile number(11),
	o_address varchar(10),
    primary key (o_id) 
);
--table 4
create table Hotel_management
(   
    c_id number(7),
	o_id number(7),
	room_id number(7),
	entity_time date,
	no_of_days number(10),
	total_fair number(10),
    foreign key (c_id) references Customer_information (c_id) on delete cascade,
	foreign key (o_id) references Operator_information (o_id) on delete cascade,
	foreign key (room_id) references Hotel_properties (room_id) on delete cascade
);
commit;
describe Customer_information;
describe Hotel_properties;
describe Hotel_management;
describe Operator_information;
--value insert in customer_information
insert into Customer_information values(1001,'Robi',01723207495,'robi@gmail.com','Dinajpur');
insert into Customer_information values(1002,'Hasibul',0172327495,'has@gmail.com','Dinajpur');
insert into Customer_information values(1003,'Rowshan',0172327111,'row@gmail.com','Dinajpur');
insert into Customer_information values(1004,'Hur',0172327113,'hur@gmail.com','Dinajpur');
insert into Customer_information values(1005,'Liaket',0172327114,'lia@gmail.com','Dinajpur');
insert into Customer_information values(1006,'Tas',0172327115,'tas@gmail.com','Dinajpur');
insert into Customer_information values(1007,'Momin',0172327116,'mn@gmail.com','Dinajpur');
insert into Customer_information values(1008,'Mamun',0172327117,'mamun@gmail.com','Dinajpur');
--value insert in hotel_properties
insert into Hotel_properties values(101,'for two person','1st',500);
insert into Hotel_properties values(102,'for two person','1st',500);
insert into Hotel_properties values(103,'for two person','1st',500);
insert into Hotel_properties values(104,'for two person','1st',500);
insert into Hotel_properties values(105,'for three person','1st',700);
insert into Hotel_properties values(106,'for three person','1st',700);
insert into Hotel_properties values(107,'for three person','1st',700);
insert into Hotel_properties values(108,'for four person','1st',800);
insert into Hotel_properties values(109,'for four person','1st',800);
commit;
insert into Operator_information values (11111,'Rabiul','rabiul@gmail.com',01723207495,'Dinajpur');
insert into Operator_information values (11112,'Rabbi','rabbi@gmail.com',01723207485,'Dinajpur');
insert into Operator_information values (11113,'Rokon','Rokon@gmail.com',01733207495,'Dinajpur');

insert into Hotel_management values (1001,11111,101,'8-JUN-2014',5,2500);
insert into Hotel_management values (1002,11111,102,'8-JUN-2014',6,3000);
insert into Hotel_management values (1003,11111,103,'9-JUN-2014',7,3500);
select * from Customer_information;
select * from Hotel_properties;
select * from Hotel_management;
select c_name,c_address from Customer_information;
select c_name,c_address,c_mobile from Customer_information;