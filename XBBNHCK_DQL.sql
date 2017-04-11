create or replace procedure insert_login_258( id in varchar2,pass in varchar2, role in char ) as
begin
insert into login_258 values(id,pass,role);
end insert_login_258;

create or replace procedure insert_student_details_258(rllno in number, nm in char, addr in varchar2, eml in varchar2, mob in number) as
begin 
insert into student_deatails_258 values(rllno,nm,addr, eml,mob);
end;

create or replace procedure insert_course_details_258(rllno in number, cid in number, crse in char) as
begin
insert into course_details_258 values(rllno,cid,crse);
end;

create or replace procedure insert_fee_details_258(rllno in number, fid in number, fe in number, pd in number, du in number) as
begin
insert into fee_details_258 values(rllno,fid,fe,pd,du);
end;

create or replace procedure insert_accountant_details_258(nm in char, eml in varchar2, addr in varchar2, mob in number, accid in number, pass in varchar2) as
begin
insert into accountant_details_258 values(accid,nm,addr,eml,mob,pass);
insert into login_258 values(nm,pass,'accountant');
end insert_accountant_details_258;




create or replace procedure edit_student_details_258(rllno in number, nm in char, addr in varchar2, eml in varchar2, mob in number) as
begin
update student_deatails_258 set name=nm,address=addr,email=eml,mobile=mob where rollno=rllno;
end;

create or replace procedure edit_course_details_258(rllno in number, cid in number, crse in char) as
begin
update course_details_258 set c_id=cid, course=crse where rollno=rllno;
end;

create or replace procedure edit_fee_details_258(rllno in number, fid in number, fe in number, pd in number, du in number) as
begin
update fee_details_258 set f_id=fid,fee=fe,paid=pd,due=du where rollno=rllno;
end;

create or replace procedure edit_accountant_details_258(accid in number, nm in char, addr in varchar2, eml in varchar2, mob in number, pass in varchar2) as
begin

update accountant_details_258 set name=nm,address=addr,email=eml,mobile=mob,password=pass where acc_id=accid;
end;




create or replace procedure delete_student_details_258(rllno in number) as
begin
delete from fee_details_258 where rollno=rllno;
delete from course_details_258 where rollno=rllno;
delete from student_deatails_258 where rollno=rllno;
end;

create or replace procedure delete_accountant_details_258(accid in number, nm in varchar2) as
begin
delete from login_258 where login_id=nm;
delete from accountant_details_258 where acc_id=accid;
end;



create or replace procedure retreivepass_258(loginid in varchar2, pass in varchar2 , rol out char)as
begin
select role into rol from login_258 where login_id=loginid and password=pass;
end;


create or replace procedure view_student_details_258 (stud out sys_refcursor) is
begin
open stud for select s.rollno,s.name,s.address,s.email,s.mobile,c.course,f.fee,f.paid,f.due 
from student_deatails_258 s,course_details_258 c,fee_details_258 f where s.rollno=c.rollno and s.rollno=f.rollno;
end;


  create or replace procedure view_accountant_details_258(acco out sys_refcursor) is
  begin
  open acco for select acc_id,name,address,email,mobile from accountant_details_258;
  end;


create or replace procedure edit_student_details_258(rolno in number,nm in char, addr in varchar2,eml in varchar2,mob in number,cou in char,fe in number,pd in number, du in number) as
begin
update student_deatails_258 set name=nm, address=addr, email=eml, mobile=mob where rollno=rolno;
update course_details_258 set course=cou where rollno=rolno;
update fee_details_258 set fee=fe, paid=pd, due=du where rollno=rolno;
end;


create or replace procedure view_Accountant_details_258 (accou out sys_refcursor) is
begin
open accou for select acc_id ,name,address,email,mobile,password 
from accountant_details_258;
end;


