CREATE USER c##1407 IDENTIFIED BY madang DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO c##1407;
GRANT CREATE VIEW, CREATE SYNONYM TO c##1407;
ALTER USER c##1407 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;



create table depart (
    depnum number primary key,
    NAME  varchar2(30)
);
create table gen(
    gennum number primary key,
    gender varchar2(30)

);
create table stud(
    grade number,
    class number,
    stuid number,
    name varchar(30),
    gennum number,
    depnum number,
    foreign key (gennum) references gen (gennum),
    foreign key (depnum) references depart (depnum),
    foreign key (grade,class) references stdnum (grade,class),
    primary key (stuid,grade,class)

);
create table stdnum
(
    grade number,
    class number,
    primary key(grade,class)
);
create table tea (
    grade number,
    class number,
    htea varchar(30),
    stea varchar(30),
    foreign key (grade,class) references stdnum (grade,class),
    primary key(htea,stea)
);
drop table stdnum;
drop table depart;
drop table stud;
drop table gen;
drop table tea;

INSERT INTO depart values (1,null);
INSERT INTO depart values (2,'����Ʈ���� ���߰�');
INSERT INTO depart values (3,'�Ӻ�������Ʈ�����');

INSERT INTO gen values (1,'��');
INSERT INTO gen values (2,'��');

INSERT INTO stdnum values (1,1);
INSERT INTO stdnum values (1,2);
INSERT INTO stdnum values (1,3);
INSERT INTO stdnum values (1,4);
INSERT INTO stdnum values (2,1);
INSERT INTO stdnum values (2,2);
INSERT INTO stdnum values (2,3);
INSERT INTO stdnum values (2,4);

INSERT INTO stud values (1,1,1,'��*��',1,1);
INSERT INTO stud values (1,1,2,'��*��',1,1);
INSERT INTO stud values (1,1,3,'��*��',1,1);

INSERT INTO stud values (1,2,1,'��*��',1,1);
INSERT INTO stud values (1,2,2,'��*��',1,1);
INSERT INTO stud values (1,2,3,'��*��',1,1);

INSERT INTO stud values (1,3,1,'��*��',2,1);
INSERT INTO stud values (1,3,2,'��*��',1,1);
INSERT INTO stud values (1,3,3,'��*��',1,1);

INSERT INTO stud values (1,4,1,'��*��',1,1);
INSERT INTO stud values (1,4,2,'��*��',2,1);
INSERT INTO stud values (1,4,3,'��*��',1,1);

INSERT INTO stud values (2,1,1,'��*��',1,2);
INSERT INTO stud values (2,1,2,'��*��',2,2);
INSERT INTO stud values (2,1,3,'��*��',2,2);

INSERT INTO stud values (2,2,1,'��*��',1,2);
INSERT INTO stud values (2,2,2,'��*��',1,2);
INSERT INTO stud values (2,2,3,'��*��',1,2);

INSERT INTO stud values (2,3,1,'��*��',1,3);
INSERT INTO stud values (2,3,2,'��*��',1,3);
INSERT INTO stud values (2,3,3,'��*��',1,3);

INSERT INTO stud values (2,4,1,'��*��',1,3);
INSERT INTO stud values (2,4,2,'��*��',2,3);
INSERT INTO stud values (2,4,3,'��*��',2,3);

select s.grade �г�,s.class ��,s2.stuid ��ȣ,s2.name �̸�,g.gender ����,d.NAME �а�,t.htea ����,t.stea �δ���
from stdnum s
    join stud s2 on s.grade = s2.grade and s.class = s2.class
    join depart d on d.depnum = s2.depnum
    join gen g on g.gennum = s2.gennum
    join tea t on s.grade = t.grade and s.class = t.class
