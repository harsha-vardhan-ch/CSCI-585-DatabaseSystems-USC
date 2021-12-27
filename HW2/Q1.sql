/*

 Executed in  https://livesql.oracle.com/

*/

CREATE TABLE Employee(emp_id int primary key,emp_name varchar2(50) NOT NULL,floor_number int NOT NULL CHECK(floor_number BETWEEN 1 and 10),email varchar2(50) NOT NULL UNIQUE);

insert into employee values(101,'harsha',1,'harsha@gmail.com');
insert into employee values(102,'vardhan',2,'vardhan@gmail.com');
insert into employee values(103,'himesh',3,'himesh@gmail.com');
insert into employee values(104,'bharadwaj',4,'bharadwaj@gmail.com');
insert into employee values(105,'vaishnav',5,'vaishnav@gmail.com');
insert into employee values(106,'saipallavi',6,'pallavi@gmail.com');
insert into employee values(107,'krishna',7,'krishna@gmail.com');
insert into employee values(108,'koneru',8,'koneru@gmail.com');
insert into employee values(109,'charagon',9,'charagon@gmail.com');
insert into employee values(110,'kachiraj',10,'kachiraj@gmail.com');
insert into employee values(111,'addagull',1,'addagull@gmail.com');
insert into employee values(112,'samantha',2,'samantha@gmail.com');
insert into employee values(113,'chaitanya',3,'chaitan@gmail.com');
insert into employee values(114,'akhil',4,'akhil@gmail.com');
insert into employee values(115,'charan',5,'charan@gmail.com');
insert into employee values(116,'nagarjuna',6,'nagarjuna@gmail.com');
insert into employee values(117,'mahesh',7,'mahesh@gmail.com');
insert into employee values(118,'jackson',8,'jackson@gmail.com');
insert into employee values(119,'micheal',9,'micheal@gmail.com');
insert into employee values(120,'robert',10,'robert@gmail.com');
insert into employee values(121,'harvard',7,'harvard@gmail.com');
insert into employee values(122,'ramarao',1,'ramarao@gmail.com');
insert into employee values(123,'hrithik',2,'hrithik@gmail.com');
insert into employee values(124,'shahrukh',7,'shahrukh@gmail.com');
insert into employee values(125,'deepika',1,'deepika@gmail.com');
insert into employee values(126,'priyanka',7,'priyanka@gmail.com');
insert into employee values(127,'kajal',4,'kajal@gmail.com');


Create table meeting(meeting_id varchar2(15),emp_id int NOT NULL,meeting_roomno int NOT NULL,meeting_floorno int NOT NULL CHECK(meeting_floorno BETWEEN 1 and 10),meeting_starttime int NOT NULL CHECK(meeting_starttime between 8 and 18),primary key(meeting_id,emp_id),foreign key(emp_id) references employee(emp_id));

insert into meeting values('Meetf09_01',102,903,9,12);
insert into meeting values('Meetf09_01',112,903,9,12);
insert into meeting values('Meetf09_01',123,903,9,12);
insert into meeting values('Meetf09_01',107,903,9,12);
insert into meeting values('Meetf09_01',117,903,9,12);
insert into meeting values('Meetf09_01',121,903,9,12);
insert into meeting values('Meetf09_01',124,903,9,12);
insert into meeting values('Meetf09_01',126,903,9,12);
insert into meeting values('Meetf10_06',103,1009,10,16);
insert into meeting values('Meetf10_06',113,1009,10,16);
insert into meeting values('Meetf10_06',104,1009,10,16);
insert into meeting values('Meetf10_06',114,1009,10,16);
insert into meeting values('Meetf10_06',127,1009,10,16);


Create table notification(notification_id int PRIMARY KEY,emp_id int NOT NULL,notification_date date NOT NULL,notification_type varchar2(15) NOT NULL,foreign key(emp_id) references employee(emp_id));

insert into notification values(1001,102,DATE '2021-09-15','mandatory');
insert into notification values(1002,112,DATE '2021-09-15','mandatory');
insert into notification values(1003,123,DATE '2021-09-15','mandatory');
insert into notification values(1004,107,DATE '2021-09-15','mandatory');
insert into notification values(1005,117,DATE '2021-09-15','mandatory');
insert into notification values(1006,121,DATE '2021-09-15','mandatory');
insert into notification values(1007,124,DATE '2021-09-15','mandatory');
insert into notification values(1008,126,DATE '2021-09-15','mandatory');
insert into notification values(1009,109,DATE '2021-09-15','optional');
insert into notification values(1010,119,DATE '2021-09-15','optional');
insert into notification values(1011,103,DATE '2021-09-21','mandatory');
insert into notification values(1012,113,DATE '2021-09-21','mandatory');
insert into notification values(1013,104,DATE '2021-09-21','mandatory');
insert into notification values(1014,114,DATE '2021-09-21','mandatory');
insert into notification values(1015,127,DATE '2021-09-21','mandatory');
insert into notification values(1016,110,DATE '2021-09-21','optional'); 
insert into notification values(1017,120,DATE '2021-09-21','optional');


create table symptomdescription(symptom_id int PRIMARY KEY,symptom_name varchar2(40) NOT NULL);

insert into symptomdescription values(1,'fever');
insert into symptomdescription values(2,'cough');
insert into symptomdescription values(3,'cold');
insert into symptomdescription values(4,'loss of taste and smell');
insert into symptomdescription values(5,'muscle or body aches');


Create table symptom(row_id int PRIMARY KEY,emp_id int,reported_date date NOT NULL,symptom_id int NOT NULL CHECK(symptom_id BETWEEN 1 and 5),foreign key(emp_id) references employee,foreign key(symptom_id) references symptomdescription(symptom_id));    

CREATE SEQUENCE symptom_seq START WITH 1;

insert into symptom values(symptom_seq.NEXTVAL,117,DATE '2021-09-05',1);
insert into symptom values(symptom_seq.NEXTVAL,107,DATE '2021-09-06',1);
insert into symptom values(symptom_seq.NEXTVAL,124,DATE '2021-09-06',1);
insert into symptom values(symptom_seq.NEXTVAL,126,DATE '2021-09-07',1);
insert into symptom values(symptom_seq.NEXTVAL,117,DATE '2021-09-09',2);
insert into symptom values(symptom_seq.NEXTVAL,107,DATE '2021-09-11',3);
insert into symptom values(symptom_seq.NEXTVAL,124,DATE '2021-09-11',2);
insert into symptom values(symptom_seq.NEXTVAL,126,DATE '2021-09-12',4);
insert into symptom values(symptom_seq.NEXTVAL,117,DATE '2021-09-11',5);
insert into symptom values(symptom_seq.NEXTVAL,107,DATE '2021-09-12',3);
insert into symptom values(symptom_seq.NEXTVAL,124,DATE '2021-09-12',5);
insert into symptom values(symptom_seq.NEXTVAL,126,DATE '2021-09-12',3);
insert into symptom values(symptom_seq.NEXTVAL,124,DATE '2021-09-15',3);
insert into symptom values(symptom_seq.NEXTVAL,124,DATE '2021-09-16',4);
insert into symptom values(symptom_seq.NEXTVAL,114,DATE '2021-09-11',1);
insert into symptom values(symptom_seq.NEXTVAL,104,DATE '2021-09-12',1);
insert into symptom values(symptom_seq.NEXTVAL,114,DATE '2021-09-15',5);
insert into symptom values(symptom_seq.NEXTVAL,104,DATE '2021-09-16',3);
insert into symptom values(symptom_seq.NEXTVAL,114,DATE '2021-09-18',2);
insert into symptom values(symptom_seq.NEXTVAL,104,DATE '2021-09-17',4);


Create table scan(scan_id int PRIMARY KEY,scan_date date NOT NULL,scan_time int NOT NULL CHECK(scan_time BETWEEN 0 and 23),emp_id int NOT NULL ,scan_temp number(5,2) NOT NULL,foreign key(emp_id) references employee(emp_id));

insert into scan values(4001,DATE '2021-09-03',10,117,98.23);
insert into scan values(4002,DATE '2021-09-03',10,107,98.34);
insert into scan values(4003,DATE '2021-09-03',10,124,98.45);
insert into scan values(4004,DATE '2021-09-03',10,126,99.01);
insert into scan values(4005,DATE '2021-09-03',10,104,97.69);
insert into scan values(4006,DATE '2021-09-03',10,114,97.24);
insert into scan values(4007,DATE '2021-09-05',10,117,102.06);
insert into scan values(4008,DATE '2021-09-06',10,107,101.03);
insert into scan values(4009,DATE '2021-09-06',10,124,103.04);
insert into scan values(4010,DATE '2021-09-06',10,126,100.23);
insert into scan values(4022,DATE '2021-09-06',10,102,98.23);
insert into scan values(4023,DATE '2021-09-06',10,112,97.23);
insert into scan values(4024,DATE '2021-09-06',10,123,96.23);
insert into scan values(4025,DATE '2021-09-06',10,121,98.56);
insert into scan values(4026,DATE '2021-09-06',10,109,97.34);
insert into scan values(4027,DATE '2021-09-06',10,119,99.02);
insert into scan values(4011,DATE '2021-09-07',10,101,98.99);
insert into scan values(4012,DATE '2021-09-07',10,105,98.32);
insert into scan values(4013,DATE '2021-09-08',10,116,97.63);
insert into scan values(4014,DATE '2021-09-08',10,115,98.67);
insert into scan values(4015,DATE '2021-09-09',10,104,98.05);
insert into scan values(4016,DATE '2021-09-09',10,114,98.02);
insert into scan values(4017,DATE '2021-09-11',10,114,100.02);
insert into scan values(4018,DATE '2021-09-12',10,104,101.06);
insert into scan values(4019,DATE '2021-09-12',10,103,98.03);
insert into scan values(4020,DATE '2021-09-12',10,113,99.02);
insert into scan values(4021,DATE '2021-09-12',10,127,98.32);


Create table test(test_id int PRIMARY KEY,test_location varchar2(40) NOT NULL,test_date date NOT NULL,test_time int NOT NULL CHECK(test_time BETWEEN 0 and 23),emp_id int NOT NULL,test_result varchar2(10) NOT NULL,foreign key(emp_id) references employee(emp_id));

insert into test values(2001,'company',DATE '2021-09-05',11,117,'positive');
insert into test values(2002,'clinic',DATE '2021-09-06',19,107,'positive');
insert into test values(2003,'clinic',DATE '2021-09-06',20,121,'negative');
insert into test values(2004,'company',DATE '2021-09-06',13,124,'positive');
insert into test values(2005,'clinic',DATE '2021-09-06',21,126,'positive');
insert into test values(2006,'clinic',DATE '2021-09-06',20,102,'negative');
insert into test values(2007,'company',DATE '2021-09-06',16,112,'negative');
insert into test values(2008,'clinic',DATE '2021-09-06',19,123,'negative');
insert into test values(2009,'clinic',DATE '2021-09-11',10,114,'positive');
insert into test values(2010,'company',DATE '2021-09-12',11,104,'positive');
insert into test values(2011,'clinic',DATE '2021-09-12',10,127,'negative');
insert into test values(2012,'hospital',DATE '2021-09-12',10,103,'negative');
insert into test values(2013,'company',DATE '2021-09-12',12,113,'negative');
insert into test values(2014,'clinic',DATE '2021-09-19',11,117,'negative');
insert into test values(2015,'clinic',DATE '2021-09-20',19,107,'negative');
insert into test values(2016,'clinic',DATE '2021-09-20',13,124,'negative');
insert into test values(2017,'clinic',DATE '2021-09-20',21,126,'negative');
insert into test values(2018,'clinic',DATE '2021-09-25',10,114,'negative');
insert into test values(2019,'clinic',DATE '2021-09-26',11,104,'negative');


Create table case(case_id int PRIMARY KEY,emp_id int,case_date date NOT NULL,case_resolution varchar2(15) NOT NULL,foreign key(emp_id) references employee(emp_id));

insert into case values(3001,117,DATE '2021-09-20','back');
insert into case values(3002,107,DATE '2021-09-21','back');
insert into case values(3003,124,DATE '2021-09-21','back');
insert into case values(3004,126,DATE '2021-09-21','back');
insert into case values(3005,114,DATE '2021-09-26','back');
insert into case values(3006,104,DATE '2021-09-27','back');


create table healthstatus(row_id int PRIMARY KEY,emp_id int,status_date date NOT NULL,status varchar2(13) NOT NULL,foreign key(emp_id) references employee(emp_id));   

CREATE SEQUENCE healthstat_seq START WITH 1;

insert into healthstatus values(healthstat_seq.NEXTVAL,101,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,102,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,103,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,104,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,105,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,106,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,107,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,108,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,109,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,110,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,111,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,112,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,113,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,114,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,115,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,116,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,117,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,118,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,119,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,120,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,121,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,122,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,123,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,124,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,125,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,126,DATE '2021-09-06','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,127,DATE '2021-09-06','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,101,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,102,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,103,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,104,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,105,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,106,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,107,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,108,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,109,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,110,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,111,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,112,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,113,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,114,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,115,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,116,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,117,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,118,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,119,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,120,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,121,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,122,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,123,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,124,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,125,DATE '2021-09-13','well');
insert into healthstatus values(healthstat_seq.NEXTVAL,126,DATE '2021-09-13','sick');
insert into healthstatus values(healthstat_seq.NEXTVAL,127,DATE '2021-09-13','well');

