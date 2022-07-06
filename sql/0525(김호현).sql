
CREATE TABLE Salesperson
(
    nameS  varchar2(40) primary key,
    age    number,
    salary number
);

CREATE TABLE Customer
(
    nameC        varchar2(40) primary key,
    city         varchar2(20),
    industrytype varchar2(40)
);
CREATE TABLE orderf
(
    numbers     number,
    custname    varchar(40),
    salesperson varchar(40),
    amount      number,
    foreign key (custname) references Customer (nameC),
    foreign key (Salesperson) references Salesperson (nameS)
);


drop table Salesperson;
drop table Customer;
drop table orderf;



--1��
Insert into Salesperson
values ('������', 25, 84000);
Insert into Salesperson
values ('������', 23, 75000);
Insert into Salesperson
values ('�Ǽ���', 46, 10000);
Insert into Salesperson
values ('�質��', 35, 31000);
Insert into Salesperson
values ('��μ�', 17, 35000);
Insert into Salesperson
values ('�����', 48, 55000);
Insert into Salesperson
values ('TOM', 21, 33000);

Insert into Customer
values ('������', '����', '���');
Insert into Customer
values ('�ڿ��', '����s', '���');
Insert into Customer
values ('������', '����s', '�˹ٻ�');
Insert into Customer
values ('��â��', '�λ�', '��˻�');
INSERT into CUSTOMER
values ('���ϸ�', 'LA', '�ֻ���');

Insert into Orderf
values (1, '������', '�Ǽ���', 3);
Insert into Orderf
values (2, '�ڿ��', '�質��', 7);
Insert into Orderf
values (3, '��â��', '������', 100);
Insert into Orderf
values (4, '�ڿ��', '��μ�', 92);
Insert into Orderf
values (5, '������', '�Ǽ���', 72);
Insert into Orderf
values (5, '���ϸ�', 'TOM', 72);

-- 2��
select nameS, salary
from Salesperson;
-- 3��
select nameS
from Salesperson
where age < 30;
-- 4��
select nameC
from Customer
where city like '%s';
-- 5��
select count(distinct custname)
from orderf;
-- 6��
select salesperson, count(*)
from orderf
group by salesperson;
-- 7��
select nameS, age
from Salesperson
where nameS like (select salesperson from orderf where custname like (select nameC from Customer where city like 'LA'));
-- 8��
select S.nameS, S.age
from Salesperson S
         join orderf o on S.nameS = o.salesperson
         join Customer C on O.custname = C.nameC
where C.city like 'LA';
-- 9��
select salesperson
from orderf
group by salesperson
having count(*) >= 2;
-- 10��
update Salesperson
set salary = 45000
where nameS like 'TOM';

select *
from Salesperson;







