SELECT
    /**** ���ڴ� a b c d ����******/
    ABS(-15) abs, --����
    CEIL(-15.7) ceil, --�ø�
    POWER(3,2) power, --a�� b��
    ROUND(15.7) round, --�ݿø�
    CONCAT('HAPPY','Birthday') concat,--���ڿ� ���̱�
    LPAD('Page 1',15,'*.') lpad,--b���� �ڸ����� ��� ����� C��ä��
    LTRIM('Page 1','ag') Ltrim, --���ʺ��� B�� �ϳ��� ���ؼ� ������ ���� �ٸ��� �ٷν�ž
    RPAD('Page 1',15,'*.') rpad, --b���� �ڸ����� ��� ����� ������ ���� c�� ä��
    RTRIM('Page 1','ag') rtrim, --�����U���� b�� �ϳ��� ���ؼ� ������ ���� �ٸ��� �ٷ� ��ž
    substr('ABCDEFG',3,4) substr, -- a�� b���� ���� c�ڸ� ���
    ascii('a') ascii, --a�� �ƽ�Ű �ڵ尪 ���
    instr('CORPORATE FLOOR','OR',3,2) instr, --a�� c��° �ڸ����� b�� ã�� d���� ������ ���� �ڸ�
    sysdate, --�ý��� �ð�
    Nullif(123,345) nullif, -- ������ NULL
    nvl(null,123) nvl-- ���̸� B��� �ƴ� �״��
from dual;

/****
  �����̺�
  �б������� ������ ���̺�
  ���� x  �������̺� �ѱ��̶�� ��� pdf
  ���� �����ְ� ���� ������ ������ �������� -> ���ȼ� good

  create view ���̸�(���� �����ְ� ���� �����̸�)
  as select ��
 ****/

 --���� 1
create view socs
as select *
from book
where bookname like '%�౸%';

select * from socs;

--����2
create view q2
    as select *
from CUSTOMER
where ADDRESS like '%���ѹα�%';

select *
from q2;

--����3
select * from CUSTOMER;
insert into CUSTOMER values (6,'���̰�','���ѹ̱��λ�',null);

create view q3
    as select custid,concat(concat(substr(name,1,1),'*'),substr(name,3,4)) name,address,phone
    from CUSTOMER;

select * from q3;

drop view q3
