create database Hritik;
use Hritik;

create table studentX (
roll_no int,
name varchar(50),
std int,
division varchar(50),
Jo_date date
);

desc studentX;  -- display table

create table Instagram(
username varchar(50),
password varchar(50),
mobile_no int(10),
email varchar(50),
dob date,
bio text
);

desc Instagram;
drop table Instagram; #delete table

alter table studentX add marks int ; #add column;
alter table studentX drop column marks; #deletes specific column
alter table studentX modify std varchar(1); #changes
alter table studentX rename column Jo_date to Joining_date; #rename specific column

truncate table studentX; #deletes the entire data but the table structure remains the same
rename table Instagram to Insta;

select* from studentX;
insert into studentX values(101,'Hritik',12,'A',25-12-03);
insert into studentX values(102,'Hritik',null,null,null);

select * from insta;
alter table insta modify mobile_no varchar(10);
insert into insta values('kshitij','kshitij25',7219469336,null,null,null);

#4] DCL COMMANDS : grant, revoke
#1) grant---> grants permission to another user.
grant select on instagram_data to Hritik;

#creating emp table:

create table emp(
empno int,
ename varchar(25),
job varchar(25),
mgr int,
hiredate date,
sal int,
comm int,
deptno int
);
select * from emp;

insert into emp values(7369,'SMITH','CLERK',7902,'80-12-17',800,null,null),(7499,'ALLEN','SALESMAN',7698,'81-02-20',1600,300,30),(7521,'WARD','SALESMAN',7698,'81-02-22',1250,500,80),(7566,'JONES','MANAGER',7839,'81-04-02',2975,null,20),(7654,'MARTIN','SALESMAN',7698,'81-09-28',1250,1400,30),(7698,'BLAKE','MANAGER',7839,'81-05-01',2850,null,30),(7782,'CLARK','MANAGER',7839,'81-06-09',2450,null,10),(7788,'SCOTT','ANALYST',7566,'82-12-09',5000,null,20),(7839,'KING','PRESIDENT',null,'81-11-17',5000,null,10),(7844,'TURNER','SALESMAN',7698,'81-09-08',1500,null,30),(7876,'ADAMS','CLERK',7788,'83-01-12',1100,null,20),(7900,'JAMES','CLERK',7696,'81-12-03',950,null,30),(7902,'FORD','ANALYST',7566,'81-12-03',3000,null,20),(7934,'MILLER','CLERK',7782,'82-01-23',1300,null,10),(10,'BOB','HR',966,'22-12-07',9000,null,40);

#OPERATORS:
#There are 4 operators: where, order by, limit and group by

#1) where---> used when there is a condition (eg.,update & delete).
select * from emp where job = 'CLERK'; #Note - the data provided i.e., CLERK is case sensitive.

select * from emp where comm is null;

#2) order by ---> orders or arranges the data in ascending or descending order.

select * from emp order by ename;
select * from emp order by ename asc; #asc stands for ascending order
select * from emp order by ename desc; #desc stands for descending order

#3) limit ---> only displays limited rows from the table as specified.
select * from emp limit 10; #only shows 10 rows

-- LOGICAL OPERATOR
--  OR WILL BE GIVEN THE FIRST PRIORITY

select * from emp where Job = 'SALESMAN' and mgr = 7698; 

select * from emp where Job = 'Manager' or mgr = 7566;

-- between operator checks for range 
select * from emp where sal between 1000 and 2000;

-- in operator checks for existence in the data
select * from emp where sal in(800,1000,2000,5000);

-- like operator matches first, last or middle character 

select * from emp where ename like 'S%'; -- matches the first character as S in ename
select * from emp where ename like '%S'; -- matches the last character as S in ename
select * from emp where ename like '%I%'; -- matches the middle character as I in ename
select * from emp where ename like '%N_'; -- matches the second last character as N
select * from emp where ename like '%N__'; -- matches the Third last character as N
select * from emp where job like '_L%'; -- matches the 2nd  character as L

-- RELATIONAL OPERATOR

select * from emp where ename = 'ALLEN';
select * from emp where ename != 'ALLEN';
select * from emp where sal > 3000;
select * from emp where sal >= 3000;
select * from emp where sal < 2000;
select * from emp where sal <= 2000;

-- ARITHMETIC OPERATOR

create table sal as
select sal,comm, sal + comm as Addition from emp; 
select sal,comm, sal - comm as Subtraction from emp; 
select sal,comm, sal * comm as "Annual Sal" from emp; 
select sal,comm, sal / 30 / 8 as "per day sal" from emp;

-- CONSTRAINTS - UNIQUE AND NOT NULL

create table studentqst(
rollno int not null unique,
name varchar(25) not null,
std int not null,
division varchar(1),
jo_date date
);

desc studentqst;

select * from studentqst;
insert into studentqst (std,Rollno,name) values(12,1001,'Hritik');

alter table studentqst modify division varchar(1) unique;
alter table studentqst modify division varchar(1) not null;

update studentqst set division = 'C' where rollno = 1001; 

-- primary and foreign key

create table x_users(
userid int primary key,
username varchar(25),
pwd varchar(25),
email varchar(25),
bio varchar(255)
);

desc x_users;

create table x_posts(
postId int,
post_desc varchar(255),
post_date date,
post_media varchar(250),
user_id int,
foreign key (user_id)
references x_users(userid)
);

desc x_posts;

insert into x_posts values(1001,'Hritik','25-12-10','a.jpg',101);
select * from x_posts;

insert into x_users values(101,'abc','xyz','abcdefg','Hello this is bio');
select * from x_users;

-- ----------------------------------------------------------------------------------------------------------------------

-- remove constraints

select * from information_schema.table_constraints where table_name = 'x_posts' ;

select * from x_posts;

alter table x_posts add constraint fk_posts_users foreign key (user_id) references x_users(userId);

alter table x_posts drop constraint fk_posts_users;
alter table x_posts drop constraint x_posts_ibfk_1;

alter table x_users drop PRIMARY key;

alter table x_users add constraint primary key x_users (userId);

-- ----------------------------------NEED TO DROP ALL THE FOREIGN KEYS BEFORE DROPING PRIMARY KEY-------------------------------------------


create table Amazon(
product_id int,
product_name varchar(30)
);


insert into Amazon values(1,'Television');
insert into Amazon values(2,'Air Conditioner');
insert into Amazon values(3,'Smartwatch');
insert into Amazon values(4,'Smartphone');
insert into Amazon values(5,'Tshirt');
insert into Amazon values(6,'Shirt');
insert into Amazon values(7,'Tracksuite');
insert into Amazon values(8,'Trackpant');
insert into Amazon values(9,'Jacket');
insert into Amazon values(10,'Jeans');

select * from Amazon;

create table Flipkart(
product_id int,
product_name varchar(30)
);

insert into Flipkart values(1,'Television');
insert into Flipkart values(2,'Air Conditioner');
insert into Flipkart values(3,'Smartwatch');
insert into Flipkart values(4,'Smartphone');
insert into Flipkart values(5,'Tshirt');
insert into Flipkart values(6,'Shirt');
insert into Flipkart values(7,'Tracksuite');
insert into Flipkart values(8,'Trackpant');
insert into Flipkart values(9,'Jacket');
insert into Flipkart values(10,'Jeans');
insert into Flipkart values(11,'Shorts');
insert into Flipkart values(12,'Macbook');
insert into Flipkart values(13,'Asus Vivobook');
insert into Flipkart values(14,'Dell Inspiron');
insert into Flipkart values(15,'PS 5');

select * from Flipkart;
-- ---------------------------------------------------------UNION OPERATOR-------------------------------------

select * from Amazon
union -- UNIONS ONLY UNIQUE VALUES 
select * from Flipkart;

select * from Amazon
union all -- UNIONS all values along with duplicates
select * from Flipkart;


-- ------------------------------------------------Functions--------------------------------------------------------
-- 1) AGGREGATION FUNCTIONS
select avg(sal) from emp;  -- AVERAGES ALL THE SALARY
select sum(sal) from emp;  -- ADDS ALL THE SALARY
select count(sal) from emp;  -- COUNTS ALL THE ROWS WITH NOT NULL VALUES
select max(ename) from emp;  -- FINDS THE MAXIUMUM OF THE ASCII VALUE 
select min(sal) from emp;  -- FINDS THE MINIMUM SALARY

-- CASE CONVERSION FUNCTIONS
select ename,upper(ename) from emp;
select ename,lower(ename) from emp;
select ename,initcap(ename) from emp;


-- 2) SINGLE ROW FUNCTIONS
select ename,job , concat(ename, concat(' ',job)) as joined from emp;
select ename,length(ename) from emp; -- COUNTS NO. OF CHARACTERS IN THE ENAME
select ename,substr(ename,1,3) from emp; -- GIVES ONLY THE NO. OF CHARACTERS SPECIFIED IN PARAMETERS
select ename,instr(ename,'S') from emp; -- SEARCHES FOR THE 'S' CHARACTER IN THE ENAME COLUMN DATA
select ename,trim(leading 'S' from ename) from emp; -- removes S character from start
select ename,trim(trailing 'S' from ename) from emp; -- removes S character from end
select ename,trim(both 'S' from ename) from emp; -- removes S character from start as well as from end
select ename,trim('S' from ename) from emp; -- removes S character from start as well as from end


-- ------------------------------------------------TASK -------------------------------------------
select * from emp where sal = (select max(sal) from emp);
-- -----------------------------------------------SUBQUERIES--------------------------------------------

select job, count(job) from emp group by job;

select * from emp where sal > (select avg(sal) from emp);

select * from emp where sal > (select avg(sal) from emp) and job = 'MANAGER';

-- --------------------------------JOINS----------------------------------------------------------
CREATE TABLE dept (
    deptno INT PRIMARY KEY,
    dname VARCHAR(20),
    location VARCHAR(20)
);

desc dept;

INSERT INTO dept VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES (50, 'HR', 'BOSTON');
INSERT INTO dept VALUES (60, 'IT', 'SAN FRANCISCO');

select * from dept;
select * from emp;

select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
inner join dept
on emp.deptno = dept.deptno;


select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
left join dept
on emp.deptno = dept.deptno;

select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
right join dept
on emp.deptno = dept.deptno;

select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
left join dept
on emp.deptno = dept.deptno
union 
select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
right join dept
on emp.deptno = dept.deptno; 

select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
left join dept
on emp.deptno = dept.deptno
union all
select emp.ename, emp.job, emp.sal, emp.deptno,
dept.* from emp
right join dept
on emp.deptno = dept.deptno; 


-- -------------------------------------------QUESTIONS------------------------------------
-- 1) FIND EMPLOYEES WHOSE SALARY IS ABOVE COMPANY'S AVERAGE SALARY
	select * from emp where sal > (select avg(sal) from emp);
    
-- 2) FIND EMPLOYEE WHO EARN MAXIMUM SALARY IN THE EMPLOYEE TABLE
	select * from emp where sal = (select max(sal) from emp);
    
-- 3) LIST EMPLOYEES WHO EARNS MORE THAN ANYONE IN DEPT 30
	select * from emp where sal = (select max(sal) from emp where deptno = 30);
    
-- 4) SHOW EMPLOYEES WHO WORK IN THE SAME DEPARTMENT AS BLAKE
	select * from emp where deptno = (select deptno from emp where ename = 'BLAKE');
    
-- 5) SHOW EMPLOYEES WHOSE JOB EXIST IN DEPT 10
	select * from emp where deptno = 10;
    
-- 6) SHOW EMPLOYEES WHOSE SAL IS HIGHER THAN SMITH'S SALARY
	select * from emp where sal > (select sal from emp where ename = "SMITH");
    
-- 7) FIND THE EMPLOYEE WHO HAS THE 2ND HIGHEST SALARY
	select max(sal) from emp where sal < (select max(sal) from emp);
    
-- 8) SHOW EMPLOYEE WHO DO NOT HAVE A MANAGER
	select * from emp where mgr is null;
    
-- 9) SHOW EMPLOEE WHO EARN MORE THAN THEIR MANAGER
	select * from emp where sal > (select sal from emp where mgr in(select mgr from emp)); 
    
-- 10) DISPLAY EMPLOYEES WORKING IN THE SAME DEPT AS SCOTT
	select * from emp where deptno = (select deptno from emp where ename = 'SCOTT');
    
-- 11) SHOW EMPLOYEES WITH SAME JOB AS ALLEN EXCLUDING ALLEN
	select * from emp where job = (select job from emp where ename = 'ALLEN')and ename != 'ALLEN'; 
    
-- 12) LIST EMPLOYEES IN DEPARTMENT 10 AND EMPLOYEES WITH SALARY GREATER THAN 3000 USING UNION ALL
	select * from emp where deptno = 10 union all select * from emp where sal > 3000;
    
-- 13) SHOW ALL EMPLOYEES WHO ARE EITHER MANAGER OR ANALYST USING UNION
	select * from emp where job = 'MANAGER' union select * from emp where job = 'ANALYST';
