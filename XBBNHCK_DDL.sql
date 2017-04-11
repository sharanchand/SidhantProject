drop table login_258;
drop table student_deatails_258;
drop table course_details_258;
drop table fee_details_258;
drop table accountant_details_258;

create table login_258
(
login_id varchar2(20) not null primary key,
password varchar2(20) not null,
role char(10) not null
);




create table student_deatails_258
(
rollno number(20) not null primary key,
name char(20),
address varchar2(50),
email varchar2(30),
mobile number(20)
);



create table course_details_258
(
rollno number(20) references student_deatails_258(rollno),
c_id number(20) primary key not null,
course char(20)
);

create table fee_details_258
(
rollno number(20) references student_deatails_258(rollno),
f_id number(20) not null primary key,
fee number(20),
paid number(20),
due number(20)
);

create table accountant_details_258
(
acc_id number(20) primary key not null,
name char(20),
address varchar2(50),
email varchar2(30),
mobile number(20),
password varchar2(20)
);