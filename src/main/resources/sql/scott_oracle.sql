-- ################
-- scott.sql
-- ################

set termout on
set echo on

-- 
-- scott user drop
-- 

drop user scott cascade;

--
-- scott user create
--

create user scott identified by tiger;

grant connect, resource, unlimited tablespace to scott;

alter user scott default tablespace users;
alter user scott temporary tablespace temp;

--
-- connect scott
--

connect scott/tiger@52.78.98.79/orcl
-- connect c##scott/tiger

--
-- drop table
--

drop table emp;
drop table dept;
drop table bonus;
drop table salgrade;

--
-- create table
--

create table dept (
	deptno	number(2) constraint pk_dept primary key,
	dname	varchar2(14 char),
	loc		varchar2(13 char) 
);

create table emp (
	empno		number(4) constraint pk_emp primary key,
	ename		varchar2(10 char),
	job			varchar2(9 char),
	mgr			number(4),
	hiredate	date,
	sal			number(7,2),
	comm		number(7,2),
	deptno		number(2) constraint fk_deptno references dept(deptno)
);

create table bonus (
	ename	varchar2(10 char),
	job		varchar2(9 char),
	sal		number,
	comm	number
);

create table salgrade ( 
	grade number,
	losal number,
	hisal number 
);

--
-- insert into dept
--

insert into dept values	(10,	'ACCOUNTING',	'NEW YORK');
insert into dept values (20,	'RESEARCH',		'DALLAS');
insert into dept values	(30,	'SALES',		'CHICAGO');
insert into dept values	(40,	'OPERATIONS',	'BOSTON');

--
-- insert into emp
--

insert into emp values (7369, 'SMITH',	'CLERK',		7902,	to_date('17-12-1980','dd-mm-yyyy'),	800,	null,	20);
insert into emp values (7499, 'ALLEN',	'SALESMAN',		7698,	to_date('20-2-1981','dd-mm-yyyy'),	1600,	300,	30);
insert into emp values (7521, 'WARD',	'SALESMAN',		7698,	to_date('22-2-1981','dd-mm-yyyy'),	1250,	500,	30);
insert into emp values (7566, 'JONES',	'MANAGER',		7839,	to_date('2-4-1981','dd-mm-yyyy'),	2975,	null,	20);
insert into emp values (7654, 'MARTIN',	'SALESMAN',		7698,	to_date('28-9-1981','dd-mm-yyyy'),	1250,	1400,	30);
insert into emp values (7698, 'BLAKE',	'MANAGER',		7839,	to_date('1-5-1981','dd-mm-yyyy'),	2850,	null,	30);
insert into emp values (7782, 'CLARK',	'MANAGER',		7839,	to_date('9-6-1981','dd-mm-yyyy'),	2450,	null,	10);
insert into emp values (7788, 'SCOTT',	'ANALYST',		7566,	to_date('19-04-1987','dd-mm-yyyy'),	3000,	null,	20);
insert into emp values (7839, 'KING',	'PRESIDENT',	null,	to_date('17-11-1981','dd-mm-yyyy'),	5000,	null,	10);
insert into emp values (7844, 'TURNER',	'SALESMAN',		7698,	to_date('8-9-1981','dd-mm-yyyy'),	1500,	0,		30);
insert into emp values (7876, 'ADAMS',	'CLERK',		7788,	to_date('23-05-1987','dd-mm-yyyy'),	1100,	null,	20);
insert into emp values (7900, 'JAMES',	'CLERK',		7698,	to_date('3-12-1981','dd-mm-yyyy'),	950,	null,	30);
insert into emp values (7902, 'FORD',	'ANALYST',		7566,	to_date('3-12-1981','dd-mm-yyyy'),	3000,	null,	20);
insert into emp values (7934, 'MILLER', 'CLERK',		7782,	to_date('23-1-1982','dd-mm-yyyy'),	1300,	null,	10);

--
-- insert into salgrade
--

insert into salgrade values (1,	700,	1200);
insert into salgrade values (2,	1201,	1400);
insert into salgrade values (3,	1401,	2000);
insert into salgrade values (4,	2001,	3000);
insert into salgrade values (5,	3001,	9999);

--
-- commit;
--

commit;

--
-- select
--

set linesize 200
set pagesize 100

select table_name from user_tables;

select * from emp;
select * from dept;
select * from bonus;
select * from salgrade;

SET TERMOUT ON
SET ECHO ON


