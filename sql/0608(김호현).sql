-- 1�� ����

CREATE TABLE  MyUser
(
    USER_SEQ  number primary key,
    ID        varchar2(20),
    USER_NAME varchar2(20),
    DATETIME  DATE
);
INSERT INTO MyUser
values (1, 'lee1545', '�̼���', '2022/05/04');
INSERT INTO MyUser
values (2, 'lee1502', '��Ȳ', '2022/05/01');
INSERT INTO MyUser
values (3, 'lee1536', '����', '2022/05/02');
INSERT INTO MyUser
values (4, 'lee1397', '�������', '2022/05/03');
INSERT INTO MyUser
values (5, 'shin1504', '�Ż��Ӵ�', '2022/05/05');
select *
from MyUser;
--2�� ����
CREATE TABLE Category
(
    CATEGORY_SEQ number primary key,
    NAME         varchar2(20)
);
Drop table Category;
INSERT INTO Category
values (1, '����');
INSERT INTO Category
values (2, '����');
INSERT INTO Category
values (3, '��ȭ����');
select *
from Category;
--3�� ����
create table POST
(
    POST_SEQ     number primary key,
    CATEGORY_SEQ number,
    USER_SEQ     number,
    TITLE        varchar2(40),
    CONTENT      varchar2(4000),
    DATETIME     DATE,
    foreign key (CATEGORY_SEQ) references Category (CATEGORY_SEQ),
    foreign key (USER_SEQ) references MyUser (USER_SEQ)
)
insert into post
values (1, 1, 1, '������ ����',
        '�⺻�� ���翡�� ������������ ������ ��ġ�� ���(�ɼ� Ŭ�ο�)�� �������� ����ġ�� ��ġ�� 2���� �Ͽ� ��ȸ�� ������ ������ �����ϴ� ����̴�. �ѴϹ� �ٸ�ī�� ĭ���� �������� ����� �⵿ �⸶�� 2�δ븦 �̿��ϰ� �ڽ��� �������� ������� ���� ����Ͽ� �¸��� �ŵ״� �����̴�. �����ε��� �̸� ���� ���������� �θ����� ���� ������ �⺻�� ���񱺴� 2���� �߰��� ����Ͽ� �������� �ϼ���Ų ���´�. ��, �̰��� �������� ����� �⸶���� �⵿���� �̿��� ������ �����̶� ���̴�.',
        '1592/08/04');
insert into post
values (2, 3, 4, '�ƹ�����',
        '�ƹ�����(��������)�� �鼺�� ����ġ�� �ٸ� �Ҹ���� ���̴�. �ƹ������̶�� �θ��� ����� �� ������ �ִµ�, �� �ϳ��� 1443�� ���� 12��(��� 1444�� 1��)�� ��������� ���� �ѱ����� ǥ�� ü��, �� ���ó��� �ѱ��� â�� ��ÿ� �θ� �̸��̰�, �� �ϳ��� 1446�� 9��[1]�� �߰��� å �̸��̴�. ���⼭�� ����, �� �ƹ������̶�� å�� �����Ѵ�.',
        '1583/01/01');
insert into post
values (3, 1, 5, '�Ż��Ӵ翡 ����',
        '�Ż��Ӵ� [��������, 1504~1551] ������ ���(��ߣ)�̰�, ȣ�� ���Ӵ�(������:������:������)�����Ӵ�(�����)���ӻ���(�����)�̴�. ������ ����(˰��) ����̸�, ���� ����(���)�� ��Ӵ��̴�. ȿ���� �����ϰ� ������ �������� ��������� �湮(����)�� ������ ���塤ħ��(����)���ڼ�(��)�� ��������, Ư�� �ù�(����)�� �׸��� �پ ���� ���� �ѽ�(����) ��ǰ�� ��������. ���� �Ȱ�(��̱)�� ������ ���� ȭǳ(����)�� ���� Ư���� ���� �������� ���Ͽ� �ѱ� ������ ����ȭ����� ���� ��´�. ���(ߣ�)��������Ǯ������ ���� �� �׷ȴ�. �ڳ౳������ ���ٸ� ����� ��￩ �����ó(��ٽ����)�� �Ͱ�(Т��)�� �Ǿ���. ������ ��Ӵ��̴�.',
        '1504/10/29');
insert into post
values (4, 2, 3, '�ʸ��纴��', '���̴� �������� 10�� �纴���� �����Ͽ� ������ �ݰ��� ��⵵ �Ͽ���.[19] �״� �Ϻ��� �����ô�� ����� ���̸�, �Ϻ��� ������ ����� �Ϻ� �� ���� �� ���� ��ȭ�� ���� ���ɻ縦 �ٸ� ������ ������ ���� �������� �̱��� ���� ������ ħ���� ���̶�� �����ߴ�. �Ϻ��� ���߿� ���� �������� �״� 10�� ���� ������ �缺�Ͽ� �Ϻ��� ħ���� ����� ���� �����Ͽ���. �׷��� ���� �̷��� ���ش� ���ο� ���� ���� ��Ȥ�ϱ� ���� �߾����� ġ�εǾ���, �������� ���� ������ ����ģ ���°� ����̶�� ȣ�������� �ʾҴ�. ���̰� 10�� �纴���� �����ϴ� ���, ������ �� ���¼��� ��λ����δ� 30�� ���� �Ѿ�����, ���� ���� ������ ���� ���ڴ� 1,000�� ������ �Ǿ��ٰ� �Ѵ�.[20] 1581�� ������ ���� �� �������� �����ϴ� ���濬�ϱ⡷�� �ϼ��� ���Ҵ�. �Ż��Ӵ��� �Ƶ��̴�.
', '1446/10/09');
select *
from POST;
--4�� ����
create table MyComment
(
    COMMENT_SEQ number primary key,
    POST_SEQ    number,
    USER_SEQ    number,
    CONTENT     varchar2(4000),
    DATETIME    DATE,
    PARENT      number,
    foreign key (POST_SEQ) references POST (POST_SEQ),
    foreign key (USER_SEQ) references MyUser (USER_SEQ),
    foreign key (PARENT) references MyComment (COMMENT_SEQ)
)
insert into MyComment
values (1, 1, 2, '�ѻ굵 ��ø(��ߣ������) Ȥ�� �߳�����ø(̸Ҭ������)�� 1592�� 8�� 14��(���� 25�� ���� 7�� 8��) �뿵 �ѻ굵 �չٴٿ��� ���� ������ �ֱ��� ũ�� ��� ����',
        '2022/05/01', null);
insert into MyComment
values (2, 1, 3, '�� �������� �������� ����ϴ� ���� ���� ���� ������ �������� ó������ �������� ���ƴ�.', '2022/05/01', 1);
insert into MyComment
values (3, 3, 2, '������ ��Ӵ� �Ż��Ӵ�', '2022/05/01', null);
insert into MyComment
values (4, 2,1, '�����ٶ󸶹ٻ�', '2022/05/01', null);
select *
from Mycomment;
--6�� ����
select NAME
from CATEGORY;
--7�� ����
select COMMENT_SEQ, CONTENT, PARENT
from MYCOMMENT
where PARENT is not null;
--8�� ����

select p.CONTENT, m.id, m.USER_NAME
from POST P
         join MyUser M on P.USER_SEQ = M.USER_SEQ
where P.CONTENT LIKE '%�Ż��Ӵ�%'
   or m.USER_NAME LIKE '�Ż��Ӵ�';
--9�� ����
select C.NAME,p.POST_SEQ,p.TITLE,MU.USER_NAME,TO_CHAR(p.DATETIME,'YYYY/MM/DD') as �ð�,Count(*)
from POST P
         join Category C on P.CATEGORY_SEQ = C.CATEGORY_SEQ
         join MYCOMMENT M on P.POST_SEQ = M.POST_SEQ
         join MyUser MU on P.USER_SEQ = MU.USER_SEQ
group by C.NAME, p.POST_SEQ, p.TITLE,mu.USER_NAME,p.DATETIME,m.POST_SEQ;


--10��
update post set CATEGORY_SEQ = 3 where POST_SEQ = 3;
