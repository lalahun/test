select * from tab;

select * from CUSTOM;

select * from DIVISION; 
--������ <  ��(row(record) < ���̺�() ��(����)columnv�ʵ�     �ο���÷� ¦  ���ڵ���ʵ尡 ¦    ���δ·��ڵ� ���δ��÷��̶���̾���Ѵ� ���̺���������ϴ°��� ���̺����̽� 


/*
1. query
   select data�˻��� 
   ������ �����µ� ��� 

2. dml(data maipulation language)
    insert, update, delete
    
3. ddl(data difinition language)
    create, alter(ADD,MODIFY,DROP), drop, rename
    
4. tcl(transaction control language)
    commit(save), rollback
    
5. dcl(data control language)
    grant�����ٶ�, revoke���� ������
 */
    
 
 select * from tab;
 
 select * from personnel;
 select * from DIVISION;
 select * from PAYGRADE;
 select * from BONUS;
 
 select * from PERSONNEL; --��ǥ�ô� ���� �� �����Ͷ� 
 
 select PNO,PNAME,PAY,DNO from PERSONNEL;
 
 select PAY,DNO,PNO,PNAME from PERSONNEL;
 
 select distinct job from PERSONNEL;    --distinct �ߺ������� 
 
 --����
 SELECT pno,pname,pay from PERSONNEL   --���ĵǴ� �����ʹ� �Էµ� ���� 
 order by pay asc; --�������� 
 
 SELECT pno,pname,pay from PERSONNEL   --asc�� �������� 
 order by pname; 
 
 SELECT pno,pname,pay from PERSONNEL   --���ĵǴ� �����ʹ� �Էµ� ���� 
 order by pay desc; --��������
 
 select * from PERSONNEL
 order by startdate desc;
 
 --�����ȣ�� ���� ������� �����Ͻÿ�
 select * from PERSONNEL
 order by pno desc;
 
 select * from PERSONNEL;
 desc personel;
 
 describe personnel;
 
 select pno,pname,pay,pay+1000 AS "���ʽ�" from PERSONNEL; --pay+100 �Ļ��� �Ļ��÷� ������ �������� ����
 
 select pno,pname,pay,pay+1000  "���ʽ�" from PERSONNEL --AS�� ������ ���� 
 order by pay+1000;
 
 --�������̴� ��Ī�� �� �� �ְ� �ٸ��� �� �� ���� 
 select pno,pname,pay,pay+1000  "���ʽ�" from PERSONNEL
 ORDER BY ���ʽ�;
 
 select pno,pname,pay,pay+1000  "���ʽ�" from PERSONNEL ORDER BY 4;
 
 SELECT * FROM PERSONNEL
 ORDER BY 4;
  
 SELECT DNO,PNO,PNAME FROM PERSONNEL
 ORDER BY DNO DESC,PNO ASC;
 --��� �������  �Ǿ����� �𼾵����� �ϰ������ �ڿ� �־��ָ� ��
 
  SELECT * FROM PERSONNEL
 ORDER BY DNO ,PNO DESC; --�տ������͸� �������� �ڿ������� ���� ���������϶��� �ش� 
 
 --NULL  ���� ���� ������ ū ������ �����Ҷ� ���� �������� ���� 
 SELECT * FROM PERSONNEL
 ORDER BY MANAGER ASC;   --���������� ū ������ ����
 
 SELECT * FROM PERSONNEL
 ORDER BY MANAGER DESC;
 
 --����� �޿��� �ϳ�ġ ����(ANNUAL)�� ���Ͻÿ�
 
 select dno,pno,pay,(pay*12)+nvl(BONUS,0) annuar_pay from PERSONNEL;
 
 select pay,pay-500 from PERSONNEL;
 
 select pname || ' ' || pno from PERSONNEL; --�÷��� �� ����� ��� ���ڴ���������ǥ �ּ���ū����ǥ 
 
 select pno,pname from PERSONNEL; --������
 
 select * from PERSONNEL --������
 where JOB = 'SALESMAN'; --�ҹ��ڷ��Է��ϸ� �ȳ��´� 
 
 select * from PERSONNEL 
 where JOB = 'salesman'; --x ����Ŭ���ҹ��ڴ´빮�ڷ� ���� 
 
 --������
-- =, >, <, <=, >=, <> --�ǳ����� �����ʴ�
 
 --�޿��� 1600�� ����� �˻��Ͻÿ�
 SELECT * FROM PERSONNEL
 WHERE PAY =1600;
 
 --�����ȣ�� 1116�� ����� �˻��Ͻÿ�
 SELECT * FROM PERSONNEL
 WHERE PNO =1116;
 
 
 
--����� �޿��� 2000������ ����� �˻��Ͻÿ�
 SELECT * FROM PERSONNEL
 WHERE PAY <2000;
 
 --1990�� 12�� 17�Ͽ� �Ի��� ��� 
 SELECT * FROM PERSONNEL WHERE STARTDATE='1990/12/17';
 SELECT * FROM PERSONNEL WHERE STARTDATE='1990-12-17';
 
 SELECT * FROM NLS_SESSION_PARAMETERS;
 
 --RR/MM/DD (YY/MM/DD) ������ 
 
 --������ CLERK�� ����� ã���ÿ� 
 
 SELECT * FROM PERSONNEL WHERE JOB = 'CLERK';
 
 --�̸��� JAMES�� ����� ã���ÿ�
 SELECT * FROM PERSONNEL WHERE PNAME = 'JAMES';
 
 --��������
 --AND, OR, NOT(!)
 
 --AND 
 --�μ���ȣ�� 10���̰� �޿��� 3000�̻��� ����� ã���ÿ�
 SELECT * FROM PERSONNEL WHERE DNO=10 AND PAY>=3000; --���� �ΰ��� ��� �����ؾ���
 
 SELECT * FROM PERSONNEL WHERE JOB='SALESMAN' AND STARTDATE>='1991-01-01';
 SELECT * FROM PERSONNEL WHERE JOB='SALESMAN' AND STARTDATE>'1990-12-31';
 --91�� 9���� �Ի��� ������ ã���ÿ�
 SELECT * FROM PERSONNEL WHERE STARTDATE>='1991-09-01' AND STARTDATE<='1991-09-30'; 
 
--OR ���ʸ� �����ϸ� �ȴ�
--�μ���ȣ�� 10���̰ų� �޿��� 3000�̻��� ����� ã���ÿ�
SELECT * FROM PERSONNEL
WHERE PAY>3000 OR DNO=10;

--������ MANAGER�̰ų� 90�� ������ �Ի��� ������ ã���ÿ� 
SELECT * FROM PERSONNEL WHERE JOB='MANAGER' OR STARTDATE<'1990/01/01';  
 
 --NOT(���ڿ� ������)
 --������ SALESMAN,CLERK�� ������ ã���ÿ�
 SELECT * FROM PERSONNEL WHERE JOB='SALESMAN' OR JOB='CLERK';
 SELECT * FROM PERSONNEL WHERE JOB IN('SALESMAN','CLERK');
 
 --SALESMAN�� �ƴϸ鼭 CLERK�� �ƴ� ������ ã���ÿ�
 SELECT * FROM PERSONNEL WHERE JOB<>'SALESMAN' AND JOB<>'CLERK';
 SELECT * FROM PERSONNEL WHERE JOB NOT IN ('SALESMAN','CLERK');
 
 --�޿��� 1000���� 2000�� ����� ã���ÿ�
 SELECT * FROM PERSONNEL WHERE PAY>=1000 AND PAY<=2000;
 
 SELECT * FROM PERSONNEL WHERE PAY BETWEEN 100 AND 2000; --���ڿ�����  �ݴ�� �� �� ����
 
 SELECT * FROM PERSONNEL WHERE STARTDATE BETWEEN '1991/09/01' AND '1991/09/30';
 
 SELECT * FROM PERSONNEL WHERE DNO NOT IN(20,30); --20���� 30���� ã�ƶ�

 SELECT * FROM PERSONNEL WHERE DNO NOT BETWEEN 20  AND 30; --20������ 30������ ã�ƶ� ���̰��� �ִٸ� �� ������ ���´� 
 
 --91�� 5�� 1�Ϻ��� 92�� 2��24�� ���̿� �Ի��� ����� �ƴ� ������ ã���ÿ�
 
 SELECT * FROM PERSONNEL WHERE STARTDATE NOT BETWEEN '91-05-01' AND '92-02-24';
 
 --�̸��� A�� ���۵Ǵ� ��������� ã���ÿ�
 SELECT * FROM PERSONNEL WHERE PNAME LIKE 'A%'; --���� ���ڸ� ã������ LIKE�� ���ش� �ƴҶ��� =�� A%�� ã�°� 
 
 --�����ȣ�� 111_�� ����� ã���ÿ� (������ ����ڰ� �͵� ���� ��ü�ڸ����� 4�ڸ�)
 SELECT * FROM PERSONNEL WHERE PNO LIKE '111_';   --������ڸ��� ���ڸ��϶� 
 
 SELECT * FROM PERSONNEL WHERE PNO LIKE '111%';  --�ۼ�Ʈ�� �ڿ� �����ڸ��϶� EX)111232
 
 SELECT * FROM PERSONNEL WHERE PNO LIKE '1__1'; --��ü 4�ڸ��̸鼭 ��� ��� �͵� ����̾��� 
 
 --90�⵵�� �Ի��� ����� ã���ÿ�
 SELECT * FROM PERSONNEL WHERE STARTDATE LIKE '90%';
 
 SELECT * FROM PERSONNEL WHERE REGEXP_LIKE(PNO,'11[^2]'); --����ȭǥ�������� ����  ^��2�� �ƴ϶�� �� 
 
 SELECT * FROM PERSONNEL WHERE REGEXP_LIKE(PNO,'1[1,2]');    --[^����] ������� 126�̸� 1 2 6���� �׸��� 126���� �̷���� ���ڵ��� ������ 
 
 --�̸��Ͽ��� ���̵� �����ϱ�
 SELECT REGEXP_SUBSTR('SUZI@NAVER.COM','[^@]+') ���̵� FROM DUAL;   --
 
 SELECT * FROM DUAL; 
 
 SELECT 100+300 FROM DUAL;  --����� ����Ŭ���� �ִ� �ѹ��� ���� 
 
 --NULL
 SELECT MANAGER FROM PERSONNEL;
 
 SELECT * FROM PERSONNEL WHERE MANAGER = NULL; --X  MXSQL�� �̷��� ã�����ְԲ� �ɼ��� �ٲ� �� �ִ�
 
 SELECT * FROM PERSONNEL WHERE MANAGER 'NULL';  --X NULL�̶�� ���ڸ� ã����� ���̴�
  --���� ������ ã�� 
 SELECT * FROM PERSONNEL WHERE MANAGER IS NULL;
  --���� �ƴ� ������ ã��
 SELECT * FROM PERSONNEL WHERE MANAGER IS NOT NULL;
  
  
  
  
  --2022-01-24
 --�켱 ����  
 --������ 'MANAGER'�̰� �޿��� 1500�̻��� ��� �Ǵ� ������
 --'SALESMAN'�� ����� ������ ã���ÿ�
 
 SELECT * FROM PERSONNEL WHERE (JOB = 'MANAGER' AND PAY>=1500) OR JOB='SALESMAN'; 
--���η� ���� �����ź��� ������ �ȴ� 


--������ 'PRESIDENT' �Ǵ� 'SALESMAN'�̰� �޿��� 1500�̻��� ����� ������ ã���ÿ�

 SELECT * FROM PERSONNEL WHERE JOB IN('PRESIDENT', 'SALESMAN') AND PAY>=1500; 
  
 --�Լ�
 
 --�����Լ�
 --ROUND(�ݿø�)
 SELECT ROUND(45.275,1) FROM DUAL;  --45.3
 SELECT ROUND(45.275,-1) FROM DUAL;  --50
 --�ݿø� �ڸ������� 
 --  1  2  3  4  .  5  6  7
 -- -4 -3 -2 -1  0  1  2  3
 
 SELECT PNO,PNAME,PAY,ROUND(PAY,-2) FROM PERSONNEL;  -- -2�� 10�� �ڸ��� �ݿø� �ض� 
 
 --TRUNC(����) �Ҽ��� ��Ʈ�� ����
 SELECT TRUNC(45.245,2) FROM DUAL;  --45.24
 SELECT TRUNC(45.245,-1) FROM DUAL; --40
 
  SELECT PNO,PNAME,PAY,TRUNC(PAY,-2) FROM PERSONNEL;
 
 --CEIL/FLOOR(�ø�/����): ������ ��ȯ �ڸ����� ���� ������ �ø��� ����
 SELECT CEIL(461.21) FROM DUAL; --462
 SELECT FLOOR(461.91) FROM DUAL;  --461 
 
 --MOD(������)
 SELECT MOD(10,3) FROM DUAL; --1  10������3 ������1
 
 --ABS(���밪)
SELECT ABS(-123) FROM DUAL; --�����δ� �÷��̸��� �� �̸��� �ִ� ���̺��� �����
 
 
 --SIGN(��� 1, ����-1 0�� 0)
SELECT SIGN(100), SIGN(-1),SIGN(0) FROM DUAL;

 --POWER(����)
SELECT POWER(2,4)  FROM DUAL; --2�� 4�°�

 --SQRT(������) --��Ʈ
SELECT SQRT(9) FROM DUAL; 


--�����Լ�
--UPPER(�ҹ��� --> �빮��)
SELECT UPPER('oracle') FROM DUAL;
--LOWER(�빮�� --> �ҹ���)
SELECT UPPER('oRAcLE') FROM DUAL;

SELECT DNO,DNAME FROM DIVISION
WHERE DNAME=UPPER('sales'); --�������ϳ��� �����͹ٲ㼭 ��

SELECT DNO,DNAME FROM DIVISION
WHERE LOWER(DNAME)='sales';   --���������� ��� ���ؼ� �ҹ��ڷ� �ٲ㼭 ���ϴ� ���̱� ������ ������
--�̷��͵��� �� ����ִ� ���� Ʃ���̶�� �Ѵ�  Ʃ���� ������ �ΰ����̴� 
--1.�ý���Ʃ��(�ϵ������)  2.SQLƩ��(ȸ�羲�� ���� �ٲ��ִ� �۾�  P/L SQL �������༭ �� �� �ִ� 


--INITCAP(ù��° ���ڴ� �빮�ڷ�)
SELECT INITCAP ('KOREA FIGHTING') FROM DUAL;

--CONCAT(�� �ܾ ��ħ)
SELECT PNAME || DNO FROM PERSONNEL;
SELECT CONCAT(PNAME,DNO) FROM PERSONNEL;

--LENGTH(����)
SELECT LENGTH ('KOREA FIGHTING') FROM DUAL; --14

--SUBSTR
SELECT SUBSTR('ABCDEFG',1,3) FROM DUAL; --ABC  �ε����� 0123456,ABCDEFG ù��°���� 3��
SELECT SUBSTR('ABCDEFG',3,2) FROM DUAL; --CD   C���� 2��
SELECT SUBSTR('ABCDEFG',-3,2) FROM DUAL; --EF   �ڿ���3��°���� �ΰ�
SELECT SUBSTR('ABCDEFG',-4) FROM DUAL; --DEFG   �ڿ��� �׹�°

--INSTR
SELECT INSTR('ABCDEFG', 'C') FROM DUAL;  --ABCDEFG���� C�� ��ġ

SELECT INSTR('AAAAAAA', 'A') FROM DUAL; --1
SELECT INSTR('AAAAAAA', 'a') FROM DUAL; --0  ã�°��� �������� -0���� ���Ǥ����� 

--RPAD / LPAD
SELECT RPAD(PNAME,15,'*') FROM PERSONNEL;   --15�ڸ��� ���ڸ� �κ��� ���� ���϶�

--RTRIM / LTRIM(��������)
SELECT RTRIM('ABBBBB', 'B') FROM DUAL; --B�� �� ���� 
SELECT RTRIM('A     ', ' ') FROM DUAL;

SELECT RTRIM('ABBABB', 'B') FROM DUAL; --�����ʿ��� ���� B�� ����µ� A�� ������ �����
 
 --��¥�Լ� (������ �����ϴ�)
 --SYSDATE(GETDATE())   --���� ��¥�� �о�Ͷ�
 SELECT SYSDATE FROM DUAL;

  SELECT SYSDATE +4  FROM DUAL;

SELECT STARTDATE-1, STARTDATE, STARTDATE+1 FROM PERSONNEL;

--KIM ����� ���ñ��� �ٹ��� ����� ���Ͻÿ�

SELECT SYSDATE,STARTDATE,CEIL((SYSDATE-STARTDATE)/365) || '����' YEARS
FROM PERSONNEL WHERE PNAME='KIM';

--ROUND 
SELECT STARTDATE,ROUND(STARTDATE,'YEAR') FROM PERSONNEL; --6��30���� ���� �����ʹ� ������ 1��1���� ��
SELECT STARTDATE,ROUND(STARTDATE,'MONTH') FROM PERSONNEL; --16�ϱ���
SELECT STARTDATE,ROUND(STARTDATE,'DAY') FROM PERSONNEL;  --�� 12�ñ��� 

--TRUNC
SELECT STARTDATE,TRUNC(STARTDATE,'MONTH') FROM PERSONNEL; --���ڵ� ���谡���ϴ� 

--MONTHS_BETWEEN
SELECT ROUND (MONTHS_BETWEEN(SYSDATE,'2002/06/01')/12)YEAR FROM DUAL;

--LAST_DAY
SELECT STARTDATE,LAST_DAY(STARTDATE) FROM PERSONNEL;

--NEXT_DAY
SELECT NEXT_DAY(SYSDATE,'�����') FROM DUAL; --��������� 

--ADD_MONTHS
 SELECT ADD_MONTHS(SYSDATE,4) FROM DUAL;
 SELECT ADD_MONTHS(SYSDATE,24) FROM DUAL;
 
 --��ȯ�Լ�
 --TO_CHAR(���ڳ� ��¥�� ���ڷ� ����)
 
 --MM : �޼�(10)
 --MON : 3���� ���̸�(MAR)
 --MONTH: ���� Ǯ����(MARCH)
 --DD: ���� ��¥��(22)
 --D: ���� �ϼ�(2)
 --DY: 3���� �����̸�(MON)
 --DAY: ���� Ǯ���� 
 --YYYY: ����(2022)
 --YY: 2�ڸ�����(22)
 --RM: �θ��� �޼�
 
 SELECT SYSDATE, TO_CHAR(SYSDATE,'D')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DY')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'RM')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'MON')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DAY')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'YYYY-MM--DD')FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DD--MM-YY')FROM DUAL;
 
 --�ð�����
 /*
 HH,HH12: 12�ð�
 HH24: 24�ð�
 MI: ��
 SS: ��
 SSSS: ���� �ڸ���
 AM, PM: ���� ����
 A.M P.M ���� ���� 
 */
 SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') FROM DUAL;   --CHAR �ڹٿ��� ToString�� ����
 SELECT TO_CHAR(SYSDATE, 'AM HH:MI:SS') FROM DUAL;
 
 --��������
 /*
 9 : �ڸ���(9999-->1218)
 0 : �ڸ����� ��� 0���� ǥ��(09999 ->01234)
 PR : ����(9999,PR--><1234>)   ������ �����Ѱ�ȣ�� ǥ�� 
 , :õ�ڸ���(9,999-->1,000) 
 */
 
 SELECT TO_CHAR(12506,'$099,999.99') FROM DUAL;
 
 --����
 --SP,TH
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DD') FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DDSP') FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DDTH') FROM DUAL;
 SELECT SYSDATE, TO_CHAR(SYSDATE,'DDSPTH') FROM DUAL; 
 
 --TO DATE
 SELECT TO_DATE ('22-01-24','YY-MM-DD')+10 FROM DUAL;   
 SELECT TO_DATE ('13:38','HH24:MI') FROM DUAL;
 
 --TO NUMBER (INTERER.PASAR�̶� ����) ����(����)�� ���ڷ� ����
 SELECT TO_CHAR('123')+ 100 FROM DUAL;
 SELECT TO_CHAR('ABC')FROM DUAL; --X �����Ҽ� ����
 
--NVL (���� ������ ��� ������ 0���) 
 SELECT BONUS,NVL(BONUS,0) FROM PERSONNEL;
 
 SELECT MANAGER FROM PERSONNEL;
 
 DESC PERSONNEL;
 
 SELECT MANAGER,NVL(TO_CHAR(MANAGER),'NON MANAGER') FROM PERSONNEL;
     --�Ŵ����ǰ��� ������ ���� ������ NON�Ŵ����� ���� �־��
 
 --DECODE 
 --�� ����� �޿��� �μ���ȣ�� 10�ΰ�� 10%, �μ���ȣ�� 20�ΰ�� 20% ����
 --�������μ��� 30%�� �������Ѷ�
 
 SELECT PNAME,BONUS,DNO,PAY,
 DECODE(DNO,10,PAY*1.1,20,PAY*1.2,PAY*1.3) �λ��   --IF���� ����ϰ� ��밡��
 FROM PERSONNEL;
 
 --�޿��� 3500�̻��� ��쿡�� GRADE�� 'GOOD'�� �̸��� ��쿡�� 'POOR�� ����Ͻÿ�
 
 SELECT PNAME,PAY,
 DECODE(SIGN(PAY-3500),1,'GOOD','POOR') GRADE   --���갪�� ����̸� �� �ƴϸ� Ǫ�� 
 FROM PERSONNEL; 
 
 --�׷��Լ� (�������ǵ����ͷκ��� �������� �����س��� ������)
 --COUNT     --�ݵ�ú����ִ� �����Ͱ� �ϳ��̴� 
 SELECT COUNT(*) FROM PERSONNEL;
 
 --�޿��� 3000�̻��� ����� �� 
 
 SELECT COUNT(*)  FROM PERSONNEL  --���⿡ PANAME�� ������ ������ ���� 
 WHERE PAY>=3000;
 
 
 SELECT COUNT(MANAGER) FROM PERSONNEL;  --NULL���� �� �� ����
 SELECT COUNT(BONUS) FROM PERSONNEL;
 
 --AVG ���
 SELECT AVG(PAY) FROM PERSONNEL;
 
 --SUM
 SELECT SUM(PAY) FROM PERSONNEL;
 
 --MAX/MIN
 SELECT MAX(PAY),MIN(PAY) FROM PERSONNEL;
 
 --����߿� �Ի����� ���� ������ ������ ã���ÿ� 
 SELECT * FROM PERSONNEL;
 SELECT MIN(STARTDATE) FROM PERSONNEL;
 
 
 --����߿� �Ի����� ���� ������ ����� ���Ի������ ������ ã���ÿ�
 
 SELECT ROUND ((MAX(STARTDATE)-MIN(STARTDATE))/365) AS �� FROM PERSONNEL;
 
 
 --�м��Լ� 
 --�� �μ��� ��� 
 
 SELECT DISTINCT DNO,AVG(PAY) OVER(PARTITION BY DNO)  --��Ƽ�� �𿣿��� �׷���� �ű⿡ ����� ���� �� 
 FROM PERSONNEL; 
 
 --����12000�� �޴� ��� ����
 
 SELECT *FROM PERSONNEL ORDER BY PAY DESC;
  
 SELECT RANK(1200) WITHIN GROUP (ORDER BY PAY DESC) RANK  --ORDER BY ���� �𼾵����� ���� 
 FROM PERSONNEL;
 
 SELECT PNAME,PAY,RANK() OVER(ORDER BY PAY DESC) RANK  --���̸� �𼾵����� ������ �Ŀ� ��ŷ�� �ض� 
 FROM PERSONNEL;    --�̺κ��� ����صα� 
 
 --GROUP BY
 SELECT PNAME FROM PERSONNEL; --���߰� ��ȯ����
 
 SELECT * FROM PERSONNEL WHERE PAY=1600;  --���߰� ��ȯ����
 
 SELECT COUNT(*) FROM PERSONNEL;  --���ϰ� ��ȯ ���� ������ �ϳ����� 
 --���߰� ���ϰ� ���� ����� �� ������
 
 SELECT PNAME,MIN(STARTDATE) FROM PERSONNEL;  --X PNAME�� ���߰��÷� MIN ���ϰ���ȯ�̱� ������ ����
 
 --��������
 SELECT PNAME, STARTDATE FROM PERSONNEL
 WHERE STARTDATE = (SELECT MIN(STARTDATE) FROM PERSONNEL); --���߿� �� �� 
 
 --�μ��� ��� �޿��� ���Ͻÿ� 
 SELECT DNO,AVG(PAY) FROM PERSONNEL
 GROUP BY DNO;
 
 --GROUP BY
 -- ~~��(���̺�,��å��...)���ϱ� 
 
 
SELECT STARTDATE,
EXTRACT(YEAR FROM STARTDATE)  ��,
EXTRACT(MONTH FROM STARTDATE) ��,
EXTRACT(DAY FROM STARTDATE) ��



FROM PERSONNEL;  --FROM �տ��� ��ǥ���� �ȵȴ� 

--�� �μ��� ��� �޿��� ��ü ��ձ޿�����(2972.5)���� ũ�� 'GOOD'
--������ 'POOR'�� ����Ͻÿ�

SELECT * FROM  PERSONNEL;


SELECT AVG(PAY) FROM PERSONNEL;

SELECT DNO,AVG(PAY),
DECODE(SIGN(AVG(PAY)-
(SELECT AVG(PAY) FROM PERSONNEL)),1,'GOOD','POOR') AS GRADE
FROM PERSONNEL
GROUP BY DNO

--�� ������� ���ǹ��� �ش� 
    
-- SELECT�� ���ǹ��� WHERE ����Ʈ�� ���� �������� ���̽���
-- GROUP BY�� ���ǹ��� HAVING 
 HAVING DNO =20; 
 
--22�� 1��25�� 
SELECT * FROM PERSONNEL;   --A�ǳѹ��� B�� �Ŵ����� ��ȣ�� ���ƾ��Ѵ�

SELECT A.PNO �����ȣ, A.PNAME ����,B.PNO �����ڹ�ȣ, B.PNAME ������
FROM PERSONNEL A, PERSONNEL B
WHERE A.MANAGER = B.PNO;

--NON EQUI JOIN 

SELECT * FROM PERSONNEL;
SELECT * FROM PAYGRADE;

SELECT PNAME,PAY,GRADE
FROM PERSONNEL, PAYGRADE
WHERE PAY BETWEEN LOWPAY AND HIGHPAY;   --�÷� BETWEEN A AND B 
 
 --��Ÿ(OPERATION) 
 /*
 A=[1,2,5,6]
 B=[1,2,4]
 
 A UNION ALL B=[1,2,5,6,1,2,4] �ߺ����
 A UNION B = [1,2,5,6,4]  �ߺ����X
 A MINUS B = [5,6]
 A INTERSECT B = [1,2]  
 
 */
 
 --UNION ALL 
 SELECT * FROM PERSONNEL
 UNION ALL
 SELECT * FROM PERSONNEL;
 
 --UNION 
 SELECT * FROM PERSONNEL
 UNION
 SELECT * FROM PERSONNEL;
 
 --MINUS 
 SELECT DNO FROM DIVISION  --10,20,30,40
 MINUS
 SELECT DNO FROM PERSONNEL; --10,20,30
 
 --INTERSECT
 SELECT DNO FROM DIVISION  --10,20,30,40
 INTERSECT
 SELECT DNO FROM PERSONNEL;  --10,20,30
 
 --PAIRWISE  (���ϴ� �÷��� ������ ���� �� ��) --����Ŭ���ۿ����� 
 --�μ���ȣ 30�� ����� 
 SELECT PNAME,DNO,PAY,BONUS FROM PERSONNEL
 WHERE (PAY,BONUS) IN (SELECT PAY,BONUS FROM PERSONNEL WHERE DNO=30);

 SELECT PNAME,DNO,PAY,NVL(BONUS,-1) FROM PERSONNEL
 WHERE (PAY,NVL(BONUS,-1)) IN (SELECT PAY,NVL(BONUS,-1) FROM PERSONNEL WHERE DNO=30);


 --MYSQL������ �̷��� ����Ѵ� 
 SELECT PAY, BONUS FROM PERSONNEL WHERE DNO=30;

 SELECT PNAME,DNO,PAY,BONUS FROM PERSONNEL
 WHERE(PAY=160 AND BONUS=500) OR (PAY=1450 AND BONUS=300)
 OR (PAY=1200 AND BONUS=0) OR (PAY=3550 AND BONUS IS NULL);
 
 --dml(Data maipulation language)
 --   insert , update, delete 
 --CRUD    
 
 SELECT * FROM DIVISION;
 DESC DIVISION;
 --DNO(NOT NULL)
 --�ƹ��͵� ���� ���� ���� �Է����� �ʾƵ� �ȴ�
 
 INSERT INTO DIVISION VALUES (50,'OPERATION','031-111-222','DAEGU');
 --����Ϸ��ϸ� 50�������Ͱ� ���ִ� 
 --MSSQL������ INTO ���������ѵ� ����Ŭ������ �ݵ�� ������Ѵ� 
 
 --INSERT INTO DIVISION VALUES (60);  --60���� 4���� �÷� �� ��� ���������� ���� ��� 
 INSERT INTO DIVISION (DNO) VALUES (60);
 
 INSERT INTO DIVISION (DNAME,POSITION) VALUES ('ACOUNT' , 'DAEJUN'); --�� �κκ��� �ݵ�� �������� �־�����Ѵ�

 INSERT INTO PERSONNEL (PNO,PNAME,PAY,DNO)
 VALUES (7711,'YOUNG',4000,20);

 --�Ͻ��� NULL���� ���� ����������   
 SELECT * FROM PERSONNEL;
 DESC PERSONNEL;
 
--����� NULL����
 INSERT INTO DIVISION VALUES(70,'PLANNING','012-333-4444', NULL);
 INSERT INTO DIVISION VALUES(70,'PLANNING','012-333-4444', '');
 
 
 SELECT * FROM DIVISION;
 
 INSERT INTO PERSONNEL (PNO,PNAME,JOB,STARTDATE,DNO)
 VALUES(1300,'CHO','SALESMAN',SYSDATE,10);
 
 SELECT * FROM PERSONNEL;
 
 SELECT STARTDATE, TO_CHAR(STARTDATE,'YYYY-MM-DD') NALJJA FROM PERSONNEL;
 --NOT NULL�� �ִ� ĳ���͸� �����־�����Ѵ� 
 
 --ġȯ���� 
 SELECT PNO,PNAME,JOB,STARTDATE,DNO
 FROM PERSONNEL
 --WHERE DNO=30; --�����ִ� ���� ������ ���� �� �ִ� 
 WHERE DNO=&DIV_DNO; --&ġȯ������°� �˷��ִ� ��
 
 
 SELECT * FROM MANAGER;
 SELECT * FROM SALESMAN;
 SELECT * FROM BUSEO;   
 SELECT * FROM DIVISION;
 
 COMMIT; --SAVE�� ����̴� 
 
 SELECT * FROM SAWON; 
 
 SELECT * FROM TAB;
 
 SELECT * FROM BUSEO;
 
 --SUBQUERY
 SELECT * FROM MANAGER;
 DESC MANAGER;
 
 SELECT * FROM PERSONNEL
 WHERE JOB='MANAGER';
--SELECT�� ����� INSERT��Ű�ڴ�

 INSERT INTO MANAGER(PNO,PNAME,PAY,STARTDATE)  
 SELECT PNO,PNAME,PAY,STARTDATE FROM PERSONNEL
 WHERE JOB='MANAGER';
 
 SELECT * FROM MANAGER;
 
 --������ SALESMAN�� ����� ��� ������ SALESMAN ���̺�� ����
 SELECT * FROM SALESMAN;
 WHERE JOB='SALESMAN';
 
 INSERT INTO SALESMAN
 SELECT * FROM PERSONNEL 
 WHERE JOB = 'SALESMAN';  --���������� �μ�Ʈ��Ű�� ����̴� 
 
 COMMIT; --�μ�Ʈ��Ű�� Ŀ��������Ѵ� �Ʒ��� ����Ŀ���� �����εǾ��ִ°� �������ϸ� Ŀ���� �ڵ����� ����ȴ�
  
 --UPDATE 
 --�����ȣ�� 1111�� ����� �μ��� 30���� ���� 
 SELECT * FROM PERSONNEL WHERE PNO=1111;
 UPDATE PERSONNEL SET DNO = 30
 WHERE  PNO=1111;   -- ������Ʈ�� ��� �������� ����;��Ѵ�  ������ ������ �� ����
 
 UPDATE PERSONNEL SET JOB='SALESMAN',MANAGER=1111,STARTDATE=SYSDATE,BONUS=200
 WHERE PNO=7711;
 
 SELECT * FROM PERSONNEL;
 
 COMMIT;
 
 SELECT * FROM SAWON;
 
 UPDATE SAWON SET DNO=20;    --���ǹ��� ���� ������ ��絥���Ͱ� �� ����ȴ�  
 
 ROLLBACK; --����ߴ� �۾��� ��ҵȴ� 
 
 --SUBQUERY�� ����
 SELECT * FROM PERSONNEL
 WHERE DNO = (SELECT DNO FROM DIVISION WHERE DNAME= 'SALES');  --�������� �μ���ȣ�� 30 
 
 UPDATE PERSONNEL SET JOB = 'SALESMAN'
 WHERE DNO = (SELECT DNO FROM DIVISION WHERE DNAME= 'SALES'); 
 
 --����������  ����Ʈ���� ���ι����� �ٲ���� 
 
 SELECT A.*
 FROM PERSONNEL A, DIVISION B
 WHERE A.DNO= B.DNO AND DNAME='SALES';
 
 UPDATE PERSONNEL SET JOB = 'SALESMAN'
 FROM PERSONNEL A, DIVISION B           --���ι��� ���ǹ�
 WHERE A.DNO= B.DNO AND DNAME='SALES';  --ORACLE(X), MS-SQL(O)
 --����Ŭ������ ���ι����� ������Ʈ�� �� �� ����
 
 COMMIT;
 
 --DELETE
 --�����ȣ�� 1300�� ����� �����Ͻÿ�
 SELECT * FROM PERSONNEL WHERE PNO=1300;
 DELETE FROM PERSONNEL WHERE PNO=1300;
 
 SELECT * FROM SAWON;
 
 DELETE SAWON;
  
 ROLLBACK;
 
  
--�μ����� BUSAN�� �μ��� �μ���ȣ�� ã�� �� �μ��� �ش��ϴ� ������ �����Ͻÿ�

SELECT * FROM PERSONNEL
WHERE DNO=(SELECT DNO FROM DIVISION WHERE POSITION = 'BUSAN');
 
DELETE FROM PERSONNEL
WHERE DNO=(SELECT DNO FROM DIVISION WHERE POSITION = 'BUSAN');
 
 COMMIT;
 
 --DML���� ����� ������ ���� ��� 
 SELECT * FROM PERSONNEL;
 DESC PERSONNEL;   --PNO�� NOT NULL�̶� �ݵ�� �����
 
 INSERT INTO PERSONNEL (PNO,PNAME,DNO) VALUES(1300,'SONG',99);
 
 SELECT * FROM USER_CONSTRAINTS;  --���������� ���� ���Ǹ� �־���� ���̺� 
--PNO���� ���������� ���ִ�  (KIM.PERSONNEL_PNO_PK)
--PRIMARY KEY: �ߺ�X NULL X �ϳ������̺�� �Ѱ����÷����� ���� �� �ִ� �ٸ� �÷��� ���� �� ���� EX)ȸ�� ��� �й���
--FOREIGN KEY :�ܺ�����Ű �����ϴ�Ű���� ������Ÿ���� �Ȱ��ƾ��Ѵ� �����ϴ� KEY�� PK �Ǵ� UK
--EX)�б����� �����ϴµ� 


--UPDATE����
SELECT * FROM  DIVISION;    --�������DNO 10 20 30 40 50�� ����     
SELECT * FROM  PERSONNEL;   --�۽������̺��� DNO�� �����ϰ�����
 --������� �ִ�Ű�� �۽��ο� �ִ� Ű�� �����Ϸ�����
 
 UPDATE PERSONNEL SET DNO=90
--�θ�Ű�� ����

 
--DELETE ����
 DELETE DIVISION WHERE DNO=30;
--��Ƶ����� �ڽķ��ڵ尡 �߰� �׷��� �ش絥���͸� ���� ������  
 
 
 --TRANSACTION
 --DML����(INSERT, UPDATE,DELETE)���۽� �ڵ����� ����
 --COMMIT,ROLLBACK�� ����� �����
 --TCL(TRANSACTION CONTROL LANGUAGE)
 
--A���¿��� B���·� 5,000�� �۱�
--1.A����Ȯ�� 
--2.A�����ܾ�Ȯ��(10000��)
--3.A���¿��� 5000������(5000��)
--4.B����Ȯ��
--5.B���� 5000���۱�
--6.B���� �ܾ� Ȯ��(6000)
--7.B���¿� 500�� ����(�ܾ�11000��) 
--8.�Ϸ� (COMMIT;)
 --�� �� �ϳ��� ������ �ȵǸ� �����߻� 
 --LOG���Ͽ� ����(����� ����ġ) -TRANSACTION LOG
 --���(ROOLBACK)
 
 --LOCK ��  
 --������� ��� A�� �����ϸ� �ٸ� ������� ���ӺҰ� �����ѵ����� �����Ƽ�ϱǰ������ 
 
 --AUTO COMMIT  ��Ұ��ȵȴ�
 --DDL(CREATE,ALTER,DROP,RENAME)  �������Ҿȵǰ� 
 --DCL(GRANT,REVOKE) ������ �ְų� ������ ����� �� ����
 
 
 SELECT * FROM TAB;
 
 SELECT * FROM DIVISION;
 
 --OBJECT: TABLE,INDEX,SYNONYM,SEQUENCE,VIEW 
 
 /*
 TABLE 
 DATA TYPE 
 CHAR:����(��������) ������� ������ ������ �ִ�-���� ���ϴ�  �԰�ȭ�Ǽ� �������д� �ӵ��� ������  PNO���� �÷��� ���� �˻��� ������ ������ 
 VARCHAR2: ����(��������) ������� os�� ��ȯ�����ش�-��������ʴ´�   �ּҰ������� ��� ����(���) �޸��  ����ȭ�۾�(CHAINING)
 ĳ���Ϳ� ������ĳ������ ������?
 
 NUMBER(P,S): ����
 DATE: ��¥(��������)
 LONG: ����(��������,2GB)
 */
 
 CREATE TABLE BUSE01  --ũ������Ʈ�� ����Ŀ���̶� �ѹ��� �ȵȴ�
 (DNO NUMBER(2),
 --DNO�� ���ڿ� �ڸ��� ���ڸ� 99���� �� ���ִ�
 DNAME VARCHAR(14),
 ZIPCODE CHAR(7));
 
 SELECT * FROM BUSE01;
 DESC BUSE01;
 
 INSERT INTO BUSE01 VALUES (10,'AAA','123-123');
 
 INSERT INTO BUSE01 VALUES (20,'BBB','222-333');
 
 /*
���̺��̸�
1.������ ����(30��)
2.������,���� ��밡��(����������)
3.Ư�����ڴ� _,$,#�� ��밡��
4.�̸��� �ߺ�������
5.�÷����� Ʋ������
6.�����(INSERT,VALUES����) ������


--��밡���� �̸�
Sawon,P_NO,Division10,Name_Rule

--���Ұ����� �̸�
10division, $sal, p-no, Alter(�����)

 */
 
 
CREATE TABLE CUSTOM    --�������� ������ �ָ� �ϳ� �������ָ�ȴ� EX)ID �ߺ�X,�ΰ� ���X ���̺��� �Ѱ����� ���� �� �ִ� �����̸Ӹ�Ű�� ���� �� NOT NULL
(ID CHAR(5) CONSTRAINT CUSTOM_ID_PK PRIMARY KEY,  --���̺����̸�,�÷����̸�,���������� �̸�  
PWD CHAR(3),
NAME CHAR(6),
ADDR VARCHAR2(50),
ZIP CHAR(5),
BIRTH DATE,
JUMIN CHAR(14),
AGE NUMBER,
TEL CHAR(10));

DESC CUSTOM;
INSERT INTO CUSTOM VALUES ('A001','123','SUZI','����','12345','94-10-10','941010-2123456','27','0101231234');
 
 SELECT * FROM CUSTOM;
 INSERT INTO CUSTOM VALUES (NULL,'123','INNA','����','12345','94-10-10','941010-2123456','40','0101231234');
 
 INSERT INTO CUSTOM VALUES ('A001','123','INA','����','12345',SYSDATE,'941010-2123456','27','0101231234');

 
 DROP  TABLE CUSTOM; --���̺����
 
 SELECT * FROM CUSTOM;
 
 SELECT * FROM USER_CONSTRAINTS;

 COMMIT;
 
 CREATE TABLE SALESMAN1
 AS
 SELECT PNO,PNAME,JOB, PAY FROM PERSONNEL
 WHERE JOB= 'SALESMAN';

DROP TABLE SALESMAN1;

SELECT * FROM SALESMAN1;

CREATE TABLE MANAGER1
AS SELECT * FROM PERSONNEL WHERE JOB= 'MANAGER';

SELECT * FROM MANAGER1;

CREATE TABLE PAY3000
AS
SELECT * FROM PERSONNEL WHERE PAY>=3000;
-- PAY3000���̺� ����

SELECT * FROM PAY3000;

--Ư�����̺��� �̴�� ����Ǽ� ���ο� ���̺��� ������� 
--�̸̹������ ���̺��� �μ�Ʈ ����Ⱦ� ũ������Ʈ�� ���

--PERSONNEL ���̺��� 12���޿� �Ի��� �������� ����Ÿ��
--MON12�̶� ���̺�� ����
SELECT * FROM PERSONNEL;

CREATE TABLE MON12
AS
SELECT FROM PERSONNEL; 
WHERE TO_CHAR(STARTDATE,'MM')=12; 

SELECT * FROM MON12;


CREATE TABLE ANALYST (NUM,NAME,JOB,DNUM)
AS
SELECT PNO,PNAME,JOB,DNO FROM PERSONNEL
WHERE JOB='ANALYST';

SELECT * FROM ANALYST;

--�μ���ȣ�� 10�� �μ��� �ѱ޿��� ������ DIV10 ���̺�� ����ÿ�
CREATE TABLE DIV10
AS 
SELECT DNO,SUM(PAY) SUM_PAY FROM PERSONNEL 
GROUP BY DNO
HAVING DNO=10;

SELECT * FROM DIV10;

--���̺��� ������ ����
SELECT * FROM PERSONNEL;

CREATE TABLE SAWON1
AS
SELECT * FROM PERSONNEL
WHERE 0=1; --�۽��ε����� �����ϰ� �����ʹ� ������ �ʴ´�

SELECT * FROM SAWON1;

DESC PERSONNEL; --NOT NULL�� ���簡 �ȵȰ� �ƴ϶� �����̸Ӹ�Ű�� ���簡 ��������
DESC SAWON1;  --���������� ������� �ʴ´� �����̸Ӹ�Ű�� ���� ���������Ѵ� 

--���̺� ���� 
--ũ������Ʈ�� ������Ʈ�� ���鶧 ���ٰ� �ߴµ� 

SELECT * FROM SALESMAN1;
DESC SALESMAN1; --�Ʒ��� �÷��ϳ� �߰� 

ALTER TABLE SALESMAN1
ADD (DNO NUMBER(2));             --�÷��߰� ADD --�÷��ٲܲ��� ALTER   --���̺��� ��ɾ�� ȸ�翡���� ���� �� ���̾��� 

SELECT * FROM SALESMAN1;

ALTER TABLE SALESMAN1
ADD (JUMIN CHAR(14),ZIP CHAR(7));

SELECT * FROM SALESMAN1; 

ALTER TABLE SALESMAN1
ADD BIGI VARCHAR2(10) DEFAULT('AA');  --�������� 

ALTER TABLE SALESMAN1
ADD (MARRIAGE CHAR(8) CONSTRAINT SALESMAN1_MARRIAGE_CK
CHECK (MARRIAGE IN ('SINGLE','MARRIED'))); 
--üũ �������� üũ ������ �÷���  

SELECT * FROM SALESMAN1;

INSERT INTO SALESMAN1 VALUES 
(111,'CHO', 'SALESMAN',2000,10,'11111','123-123','BB','SINGLE');

INSERT INTO SALESMAN1 VALUES 
(222,'CHO', 'SALESMAN',2000,10,'11111','123-123','BB','MARRIED');

SELECT * FROM USER_CONSTRAINTS;
--���Ἲ�� ������ �ŷڰ� ������ ���������� ���°��� 
--�����̸Ӹ�Ű�� üũŰ�� ����ϴٰ� ���� �ȴ�
--�����̸Ӹ�Ű �ߺ��� �ΰ� ���ȵǰ� �ϳ��� ��밡��
--����ũŰ�� 249���������� �� �ִ� �׿ܿ��� UK�� �ָ�ȴ� 
--����Ű �ܺ�����Ű ����Ű�� �����ϴ��÷� �����Ǿ����� �÷��� �Ȱ��� �����  ������Ÿ���� ���ƾ��Ѵ� 
--����ƮŰ�� ����� ������ �������� �����ʾƵ� ���ó�¥�� ���� ��� 


--�����������ͺ��̽��� ���ؼ� �����Ͻÿ� 
--ǥ�� �����͸� ���� HTTP �������ؽ�ƮƮ��������������

--�й��� �Ȱ�����(�����̸Ӹ�Ű) ���ι����� ��������

--����ȭ�� ���̺��� �ɰ��� �۾��̴� �װ� ����ȭ�̴� 
--ERD���� �ִ� �����Ƽ �𵨸��ϴ¹��  

--�����̸Ӹ�Ű �����
DESC SALESMAN1; --�۽������̺��� ���縦 �ؿԱ� ������ PNO�µ��������� ��� ���������� ���簡 �ȵȴ�

ALTER TABLE SALESMAN1 
ADD CONSTRAINT  SALESMAN1_PNO_PK PRIMARY KEY(PNO);    --���������� �̸��ϻ�  -- ���������� ���� T_C_O  

SELECT * FROM SALESMAN1;


SELECT * FROM MANAGER1;
--MANAGER1 ���̺� COMM �÷��� NUMBER(5)�� �߰�
ALTER TABLE MANAGER1
ADD COMM NUMBER(5);

--MANAGER1 ���̺� PNO �÷��� PK�� �߰� 
ALTER TABLE MANAGER1
ADD PRIMARY KEY(PNO);

SELECT * FROM USER_CONSTRAINTS;
                                        --����Ŭ�� MODIFY MS�� ALTER 
--------------------------------    
--MODIFY(�÷�)
SELECT *  FROM MANAGER1;
DESC MANAGER1;

ALTER TABLE MANAGER1
MODIFY PNAME VARCHAR2(16);

ALTER TABLE MANAGER1
MODIFY PNAME VARCHAR2(7);  --�̵̹����Ͱ� �������� �� �������� ���� ū ������ ���� �� �ִ�

SELECT * FROM MANAGER1;

--DROP(�÷�,��������)

SELECT * FROM USER_CONSTRAINTS;

ALTER TABLE MANAGER1
DROP CONSTRAINT SYS_C007023;

--------------------------------
ALTER TABLE SALESMAN1 
DROP CONSTRAINT SALESMAN1_PNO_PK;

ALTER TABLE SALESMAN1 
DROP PRIMARY KEY;                    --�ΰ��� ��������̴�
-----------------------------------

ALTER TABLE DIVISION          ---����Ű���� 
DROP PRIMARY KEY CASCADE;          ---����Ű���� ���� ��������  

SELECT * FROM USER_CONSTRAINTS;

DESC SALESMAN1;

SELECT * FROM SALESMAN1;

ALTER TABLE SALESMAN1  
DROP COLUMN MARRIAGE;

--SET UNUSED --������ ���� ������ ����ڿ��� �������� ���� 

ALTER TABLE SALESMAN1
SET UNUSED COLUMN DNO;

SELECT * FROM SALESMAN1;

ALTER TABLE SALESMAN1
DROP UNUSED COLUMNS;

SELECT * FROM TAB;

DROP TABLE MANAGER1;

SELECT * FROM RECYCLEBIN;  --��������Ȯ��

SELECT OBJECT_NAME, ORIGINAL_NAME,DROPTIME FROM RECYCLEBIN;

--����
-----------------------------------------------------------
FLASHBACK TABLE MANAGER1 TO BEFORE DROP;

FLASHBACK TABLE "BIN$Eatuz2DaTsyhFeuIb9SENg==$0" TO BEFORE DROP;  --���������� ������Ʈ���� �ΰ��� ������
-----------------------------------------------------------

SELECT * FROM "BIN$Eatuz2DaTsyhFeuIb9SENg==$0"

DROP * FROM TAB;

DROP TABLE SALESMAN1 PURGE; --�ٷλ��� ���������

PURGE RECYCLEBIN;  --���������


--TRUNCATE/DELETE

SELECT * FROM PERSONNEL;
--RECORD�� ����� ������ DELETE  -- �α����� ����O �ӵ��� ���� ROLLBACK���� 

DELETE PERSONNEL; 
 
SELECT * FROM PERSONNEL; --�����Ͱ� ���� 

ROLLBACK;     --INSERT UPDATE CREATE���� ���

SELECT * FROM PERSONNEL;
--------------------------------------
--TRUNCATE TABLE �������� �ǵ��� �� ���� DB�� �ٷιݿ� �α����� ����X �ӵ��� ���� 
TRUNCATE TABLE PERSONNEL;--���̺��� ����°� �ƴ϶� �����͸� ����� ���̴�

SELECT * FROM PERSONNEL;

ROLLBACK;

SELECT * FROM PERSONNEL;

--RENAME
SELECT * FROM TAB;   --TAB����S�� �����ڵ��� ���� ��ɾ� 

SELECT * FROM PAY3000;

RENAME PAY3000 TO HIGHPAY; -�̸��ٲٱ�

SELECT * FROM HIGHPAY;  --���� 3000���� �˻��ϸ� �ȶ� �������̷� �ٲ㼭 �������̷� �˻��ؾ� ��

------------------------------------------------------------
--5. dcl(data control language)
    --grant�����ٶ�, revoke���� ������

/*
GRANT : USER�� OBJECT�� ������ �ο��Ҷ� ���
REVOKE: USER�� OBJECT�� ������ ȸ���Ҷ� ���
*/

CREATE USER TEST 
IDENTIFIED BY TEST 
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP; --������ ������� ���´� 

CREATE USER SUZI2
IDENTIFIED BY SUZI2 
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

SELECT  * FROM DBA_USERS; --��������� ��������� ���� ��ɾ�  �������ǿ� ���� ������ ������ USER ������ڰ� -�� �� �ִ� ��ɾ�



--OBJECT����

GRANT SELECT ON PERSONNEL TO SUZI;    --�����۽��ε����� ����Ʈ
GRANT SELECT,INSERT,DELETE ON DIVISION TO SUZI;  --��������������ͼ���Ʈ
 
SELECT * FROM PERSONNEL;
 
COMMIT;

SELECT * FROM USER_TAB_PRIVS_MADE; --�������� ������ ����� ���� 


--������ڿ��� ���̶�µ����͸� ����Ʈ�� �� �ִ� ������ �ش�
GRANT SELECT ON KIM.DIVISION TO PUBLIC; --�ۺ����� �� ������ �ۺ����ΰ����;��Ѵ�
-----------------------------------------
REVOKE SELECT ON DIVISION FROM PUBLIC;

REVOKE SELECT ON PERSONNEL FROM SUZI;


REVOKE SELECT,INSERT,DELETE ON DIVISION FROM SUZI;

SELECT * FROM USER_TAB_PRIVS_MADE; 

--ROLE

CREATE ROLE MANAGER;

SELECT * FROM ROLE_SYS_PRIVS
WHERE ROLE='MANAGER' OR ROLE = 'CONNECT' OR ROLE='RESOURCE';

/*
--��������(���Ἲ)
primary key
foreign key
uique key
not null
check
*/

CREATE TABLE CUSTOMER
(ID NUMBER(4) CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY,
NAME VARCHAR2(10),
NO NUMBER(4));

SELECT * FROM USER_CONSTRAINTS;

CREATE TABLE ORDERS 
(NO NUMBER(4),
SNO NUMBER(4),
NAME VARCHAR2(10),
COUNT NUMBER(7),
CONSTRAINT ORDERS_NO_PK PRIMARY KEY(NO));  --TABLE LEVEL���� 

SELECT * FROM ORDERS;
SELECT * FROM CUSTOMER;

--���� Ŀ������ �ѹ��� �������� �ѹ��� �����ϴ� ���� 

ALTER TABLE CUSTOMER
ADD CONSTRAINT CUSTOMER_NO_FK FOREIGN KEY(NO)
REFERENCES ORDERS(NO);

SELECT * FROM USER_CONSTRAINTS;

CREATE TABLE CATALOGS 
(CATALOGNO NUMBER(4) CONSTRAINT CATALOGS_CATALOGNO_PK PRIMARY KEY,
NAME VARCHAR2(10),
NO NUMBER(4) CONSTRAINT CATALOGS_NO_FK REFERENCES ORDERS(NO));

--����Ű�� �������� �����̸� �����Ѵ� 

SELECT * FROM ORDERS;

INSERT INTO ORDERS VALUES (10,111,'AAA',11);
INSERT INTO ORDERS VALUES (20,222,'BBB',22);
INSERT INTO ORDERS VALUES (30,333,'CCC',33);

COMMIT; --�μ�Ʈ�����ϸ� �׻� Ŀ��������Ѵ�

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(111, 'SUZI',10);
INSERT INTO CUSTOMER VALUES(222, 'INNA',30);
INSERT INTO CUSTOMER VALUES(333, 'INSUN',40); --X

SELECT * FROM CATALOGS;

INSERT INTO CATALOGS VALUES(777, 'SUZI',20);
INSERT INTO CATALOGS VALUES(888, 'INNA',30);
INSERT INTO CATALOGS VALUES(999, 'INA',40); --X

DELETE ORDERS WHERE NO=20;
--integrity constraint (KIM.CUSTOMER_NO_FK) violated -child record found --�����ϰ� �ִ� �����͸� �߰��ߴ�

DELETE CATALOGS WHERE NO=20;

SELECT * FROM CATALOGS;

COMMIT;

SELECT * FROM ORDERS;

--UNIQUE 
--ORACLE : NULL���
--MS-SQL : 1���� ���
SELECT * FROM ORDERS;
DESC ORDERS;

ALTER TABLE ORDERS 
ADD CONSTRAINT ORDERS_SNO_UK UNIQUE(SNO);

SELECT * FROM ORDERS;

INSERT INTO ORDERS VALUES (40,'','DDD',44);
INSERT INTO ORDERS VALUES (50,'','EEE',55);
INSERT INTO ORDERS VALUES (60,333,'FFF',66); 
--���� 333�� ���־ ����ũ �������ǿ� ����Ǿ��� unique constraint (KIM.ORDERS_NO_PK) violated

--CHECK ��������
SELECT * FROM ORDERS;

ALTER TABLE ORDERS 
ADD CONSTRAINT ORDERS_SNO_CK CHECK(SNO BETWEEN 100 AND 500);
INSERT INTO ORDERS VALUES (60,501,'FFF',66);--X

--NOT NULL 
ALTER TABLE ORDERS
ADD CONSTRAINT ORDERS_NAME_NN CHECK(NAME IS NOT NULL); --üũ������������ ����������

DESC ORDERS;

SELECT * FROM USER_CONSTRAINTS;

CREATE TABLE TEST1
(NO NUMBER(4) CONSTRAINT TEST1_NO_NN NOT NULL); --�׳� ������ �ذ�

--�������
ALTER TABLE TEST1
DROP CONSTRAINT TEST1_NO_NN;


ALTER TABLE ORDERS
DROP CONSTRAINT ORDERS_NO_PK;


--DICTIONARY 

SELECT COUNT(*) FROM DICTIONARY;

SELECT * FROM DICTIONARY;

SELECT * FROM USER_CONSTRAINTS; --���������� ������ �����ϰ� �ִ� ��ųʸ� 

--USER_ : USER ������ OBJECT����
--ALL_ : USER���� ACCESS�� ���� OBJECT����
--DBA_ : DBA������ ���� USER�� ACCESS�Ҽ� �ִ� ����
--V$ : SERVER�� ���ɿ� ���õ� ���� 

SELECT * FROM V$VERSION;

SELECT * FROM ALL_CONSTRAINTS;
--���������� ������ S �����̴�
SELECT * FROM ALL_CONS_COLUMNS WHERE TABLE_NAME='ORDERS';
--����������� ����̺� ��÷��� ���ִ�

--SELECT * FROM DBA_CONS_COLUMNS;
SELECT * FROM USER_TABLES;
SELECT * FROM USER_SYS_PRIVS;


SELECT * FROM DICTIONARY;
SELECT * FROM USER_CONS_COLUMNS;
SELECT * FROM SYSTEM_PRIVILEGE_MAP;


-- VIEW-(����)�� ���� ���
-- ���� ���̺�
CREATE VIEW PER10_V
AS
SELECT * FROM PERSONNEL WHERE DNO=10; --�������̺�

SELECT * FROM USER_VIEWS;

SELECT * FROM PER10_V;
 
SELECT * FROM PER10_V; WHERE PNO=1111; --SELECT ������ ��밡�� 

CREATE VIEW PER20_V
AS
SELECT PNO,PNAME,MANAGER,PAY,DNO FROM PERSONNEL;

SELECT * FROM PER20_V;

CREATE VIEW PER_AVG
AS
SELECT DNO,AVG(PAY) ���, SUM(PAY)�հ�
FROM PERSONNEL
GROUP BY DNO;

SELECT * FROM PER_AVG
WHERE DNO=10;

SELECT * FROM PER_AVG
WHERE �հ�>8000;

INSERT INTO PER20_V VALUES (1234,'JJJ',1001,2000,20);

SELECT * FROM PERSONNEL;

UPDATE PER20_V SET PNAME='AAA' WHERE PNO=1234;

DELETE PER20_V WHERE PNO=1234;

--SIMPLE VIEW 
--�ϳ��� ���̺��� ���� VIEW 
--INSERT,UPDATE,DELETE�� ���� -�ΰ��̻��� ���̺��� ������ �ȵȴ�

SELECT * FROM PERSONNEL;

CREATE VIEW PER
AS
SELECT PNAME,JOB,PAY FROM PERSONNEL;

SELECT * FROM PER;

INSERT INTO PER VALUES ('BBB' ,'ACCOUNT',3000);  --PNO�� �ΰ� ���� �������


SELECT * FROM PER_AVG;

INSERT INTO PER_AVG VALUES (40,1234,5000);

--����
--CREATE -> ALTER�� ����  ��� ALTER�� ������ �ȵȴ�

SELECT * FROM USER_VIEWS;

SELECT * FROM PER20_V;

CREATE OR REPLACE VIEW PER20_V --������ ����� ������ �����ض�� �� 
(��ȣ,�̸�,����,�μ���ȣ)
AS
SELECT PNO,PNAME,JOB,DNO FROM PERSONNEL
WHERE DNO=20;

SELECT * FROM PER20_V; --����

--����
DROP VIEW PER_AVG;
SELECT * FROM PER_AVG;

--COMPLEX VIEW 
--JOIN������ ���� VIEW 
--INSERT, UPDATE, DELETE�� �Ұ� 

CREATE TABLE ������
(����ȣ CHAR(10),
�̸� CHAR(10));

CREATE TABLE ȸ������ 
(����ȣ CHAR(10),
ȸ��� CHAR(10));

INSERT INTO ������ VALUES ('A001','ȫ�浿');
INSERT INTO ������ VALUES ('A002','�̼���');

INSERT INTO ȸ������ VALUES ('A001','LG'); 
INSERT INTO ȸ������ VALUES ('A002','KAKAO');

COMMIT;

SELECT * FROM ������;
SELECT * FROM ȸ������;

CREATE OR REPLACE VIEW ����
AS
SELECT K.����ȣ,�̸�,ȸ��� 
FROM ������ K, ȸ������ H
WHERE K.����ȣ  = H.����ȣ; 

SELECT * FROM ����;
--���ι����� ���� �� �μ�Ʈ ������Ʈ ����Ʈ�� �ȵȴ�!
INSERT INTO ���� VALUES ('A003','�����','SAMSUNG'); --X
UPDATE ���� SET �̸�='�����' WHERE ����ȣ='A001'; --X
DELETE ���� WHERE ����ȣ = 'A001'; --X
-------------------------------------------------------- 
--TOP--N
--���� �ֱٿ� �Ի��� 5���� ����� �̸��� �Ի糯¥�� ����Ͻÿ� 


SELECT * FROM PERSONNEL;

SELECT PNAME,STARTDATE 
FROM PERSONNEL
ORDER BY STARTDATE DESC;

--ROWNUM �ϷĹ�ȣ�� ����� �ɼ�
SELECT ROWNUM,PNAME,STARTDATE FROM (SELECT PNAME,STARTDATE FROM PERSONNEL
ORDER BY STARTDATE DESC)  --����Ŀ����� �����ֱٿ��Ի��ѻ�������� �ǰ�
WHERE ROWNUM<=5;


SELECT ROWNUM,PNAME FROM PERSONNEL;

SELECT * FROM (SELECT * FROM CUSTOM WHERE ADDR1='��⵵')A;

SELECT ROWNUM,PNAME,STARTDATE FROM (SELECT PNAME,STARTDATE FROM PERSONNEL
ORDER BY STARTDATE DESC);

--������ ���ϱ�(3~6) �ѹ� �� ���ΰ� ��������� ROWRUM�� RNUM���� �� ������ �ܿ���
SELECT RNUM,PNAME,STARTDATE FROM\
(SELECT ROWNUM RNUM,PNAME,STARTDATE FROM 
(SELECT PNAME,STARTDATE FROM PERSONNEL
ORDER BY STARTDATE DESC))  
WHERE RNUM >=3 AND RNUM<=6;
--�Խ��� ���鶧 ��� ���� �����ϰ� ����� ��ĭ�� �޲���? ���������� ����ϰ� ����
--����� ��ĭ�� �־��ִ� ����?

--MS-SQL 
--SELECT TOP 5 PNAME,STARTDATE FOR PERSONNEL; ORDER BY STARTDATE DESC;
--SELECT TOP 5 PERCENT PNAME,STARTDATE FOR PERSONNEL; ORDER BY STARTDATE DESC;

--SYNONYM(���Ǿ�)
CREATE SYNONYM INSA
FOR KIM.PERSONNEL;

SELECT * FROM INSA;
SELECT * FROM KIM.PERSONNEL;
SELECT * FROM PERSONNEL;

SELECT ROWID,PNAME FROM PERSONNEL;

SELECT * FROM PERSONNEL WHERE PNO=1111;

CREATE INDEX PER_PAY_INDEX
ON PERSONNEL(PAY);  --���̺��� ������ �ﰢ���� ������ �ϼ��ȴ� 

SELECT * FROM USER_INDEXES;

CREATE TABLE AAA
(ID NUMBER CONSTRAINT AAA_ID_INDEX PRIMARY KEY,
NAME CHAR(10));

SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM USER_INDEXES;

--SEQUENCE(�Ϸù�ȣ)

/*
CREATE SEQUENCE DIV_NO
INCREMENT BY 1
START WITH 1 
MAXVALUE 100 || NOMAXVALUE   --�ִ밪���� ��� �þ�� 
CYCLE || NOCYCLE 
NOCACHE ���� ���� �����͸� ���ڱ� ������ 
CHCHE 20 || NOCACHE
*/

CREATE SEQUENCE PER_PNO
START WITH 90    --���۰�
INCREMENT BY 1  --������
MAXVALUE 99   --�ִ�99����
NOCYCLE  --�ݺ�������
NOCACHE; --�޸𸮻󿡿ø�������

SELECT * FROM USER_SEQUENCES;

--NEXTVAL : SEQUENCE�� ��� ��ȣ(SEQUENCE�̸� NEXTVAL) 
--CURRVAL : SEQUENCE�� ���� ��ȣ(SEQUENCE�̸� CURRVAL) 

SELECT PER_PNO.NEXTVAL FROM DUAL;

INSERT INTO DIVISION (DNO,DNAME,POSITION)
VALUES (PER_PNO.NEXTVAL, 'EDV','KOREA');

SELECT * FROM DIVISION; --�ѹ߾� ��� �����̴� ���� �ϳ��� ��� �ٰܴ� �����ϸ� �ȴ� 

SELECT PER_PNO.CURRVAL FROM DUAL; --���������� �� ���� ��ȣ�� ����?

ALTER SEQUENCE PER_PNO--�����Ҷ� ���
INCREMENT BY 1
MAXVALUE 999
CACHE 10   --1O���� ���ڰ� �޸𸮿� �ö󰡼� ���ڰ��� �о�ͼ� �μ�Ʈ��Ŵ 
NOCYCLE;

SELECT * FROM USER_SEQUENCES;



