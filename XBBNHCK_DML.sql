insert into login_258 values('sid','sid123','admin');
insert into login_258 values('swad','swad123','accountant');
insert into login_258 values('protu','protu123','accountant');


insert into student_deatails_258 values(111,'sid','Pune','sidm@gmail.com',1234567890);
insert into student_deatails_258 values(112,'surya','BBSR','surku@gmail.com',9123456780);
insert into student_deatails_258 values(113,'rohan','mumbai','rohan@gmail.com',8123456790);

insert into course_details_258 values(111,1,'java');
insert into course_details_258 values(112,2,'sql');
insert into course_details_258 values(113,3,'.Net');

insert into fee_details_258 values(111,11,10000,5000,5000);
insert into fee_details_258 values(112,12,10000,6000,4000);
insert into fee_details_258 values(113,13,10000,0,10000);

insert into accountant_details_258 values(1111,'swad','Pune','swad@gmail.com',7123456890,'swad123');
insert into accountant_details_258 values(1112,'protu','BBSR','protu@gmail.com',6123457890,'protu123');


execute 
select * from login_258;
select * from student_deatails_258;
select * from course_details_258;
select * from fee_details_258;
select * from accountant_details_258;





commit;