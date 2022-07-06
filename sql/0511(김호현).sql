/************
    alter �Ӽ� �߰� �⺻ ����
    alter table ���̺��̸� add �Ӽ��̸� �ڷ���;
    alter �Ӽ� ���� �⺻ ����
    alter table ���̺��̸� modify �Ӽ��̸� �ٲٰ����ϴ�Ÿ��;;
    alter �Ӽ� ���� �⺻ ����
    alter table ���̺��̸� drop column �Ӽ��̸�; 
*************/
drop table newbook;
drop table newcustomer;
drop table neworder;

create table newbook
    bookid number,
    bookname varchar2(20),
    publisher varchar2(20),
    price number
);

select * from newbook;
alter table newbook add isbn varchar2(13); --1�� ���� isbn �߰��ϴ°���
alter table newbook modify isbn number; --2�� ���� isbn Ÿ���� �ѹ��� 
alter table newbook drop column isbn; --3������ isbn ����
alter table newbook modify bookid number not null; --4������ bookid�� not null���� ���� �߰�
alter table newbook add primary key(bookid); --5�� ���� bookid �����̸��� Ű

/*************************
    insert �� �⺻ ����
    insert into ���̺� �̸�(�Ӽ���1,�Ӽ���2,3,4,... ��ü �Ӽ����� �� �ʿ��ϸ� ��������);
    values (���� ���� ���� ���� �Ӽ� ������ ���ƾ���);
    
*************************/
select * from book;
select * from imported_book;
insert into book  values(11,'������ ����','�Ѽ����м���',90000); --1������ 
insert into book (bookid,bookname,publisher) values(12,'������ ����','�Ѽ����м���'); -- 2������ ������ ����,���̺��̶� ���� ���� �ʾƵ� �� ����
insert into book select bookid, bookname, publisher, price from imported_book; --3������ �������� insert into �ϴ� ���/ �ڷ����� ��� ��ġ �ؾ���

/**********************
    update �� �⺻���� 
    �̹� ���� �Ǿ� �ִ� ����Ÿ �� ���� �� �� ��� 
    update ���̺��̸� 
    set �Ӽ��̸�='�Ӽ���' 
    where ����
**********************/
select * from customer;
update customer
set address = '���ѹα� �λ�'
where custid = 5; --1������ Ŀ���͸Ӿ��̵� 5�� ��� �ּ� �ٲٱ�

update customer
    set address = (select address from customer where name = '�迬��')
where name like '�ڼ���'; --2������ 

/********************
    DELETE �� �⺻����
    delete from ���̺� �̸� where ������
    
    ���� ����Ʈ �μ�Ʈ 
    ������ ���� �ݿ� x Ŀ�� �ϸ� �ݿ� O
    Ŀ���� rollback ������ �ǵ����� ���� but after commit �ȵ�
*******************/

delete from customer where custid = 5; --��1 �ڼ��� �����
delete from customer; --��2 �� �������

commit; --����

rollback;

    
