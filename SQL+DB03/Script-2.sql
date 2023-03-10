
CREATE TABLE "HR"."MEMBER" 
   (	
   	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10)
   ) 
   
CREATE TABLE "HR"."BBS"
(	
	"no" VARCHAR2(100),
	"TITLE" VARCHAR2(100),
	"CONTENT" VARCHAR2(100),
	"WRITER" VARCHAR2(100)
)

CREATE TABLE PRODUCT(
ID VARCHAR2(200),
NAME VARCHAR2(200),
CONTENT VARCHAR2(200),
PRICE VARCHAR2(200),
COMPANY VARCHAR2(200),
IMG VARCHAR2(200)
)

-- 한줄복사는 ctrl+alt + 화살표 아래

-- 한줄삭제: 컨트롤 + D 

-- 저장할 대상: 엔티티(회원정보, 게시판, 상품), 엔티티간의 관계: 회원이 상품을 주문한다(주문정보)
--           엔티티+관계 ==> 테이블로 만들자!! 

CREATE TABLE orderlist (
	"no" VARCHAR2(100),
	member_id varchar2(100),
	product_id varchar2(100),
	total_count varchar2(100)
)

CREATE TABLE "HR"."BBS2" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	 CONSTRAINT "BBS_PK22" PRIMARY KEY ("no"),
	 CONSTRAINT "FK_MEMBER22" FOREIGN KEY ("WRITER")
	  REFERENCES "HR"."MEMBER" ("ID")
) 

CREATE TABLE "HR"."BBS3" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
) 

--pk제약조건 추가

ALTER TABLE HR.BBS3
ADD CONSTRAINT BBS3_PK PRIMARY KEY ("no")

--kf제약조건 추가
ALTER TABLE HR.BBS3 
ADD CONSTRAINT FK_MEMBER33 
FOREIGN KEY (WRITER) REFERENCES HR."MEMBER"(ID);

CREATE TABLE depart2 (
	id varchar2(100),
	name varchar2(100),
	instructor varchar2(100),
	constraints pk_dp2 PRIMARY KEY (id)
)

CREATE TABLE student2 (
	id varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	depart_id varchar2(100)
)

ALTER TABLE STUDENT2 
ADD CONSTRAINTS pk_st2 
PRIMARY KEY (id)

ALTER TABLE STUDENT2 
ADD CONSTRAINTS fk_st2
FOREIGN KEY (DEPART_id)
REFERENCES depart2 (id)

CREATE TABLE MEMBER22
AS SELECT * FROM MEMBER

INSERT INTO MEMBER22 
VALUES('banana3', 'banana3','banana3','banana3',sysdate)

SELECT * FROM  MEMBER22

INSERT INTO MEMBER22 
VALUES('banana4', 'banana4','banana4','banana4',sysdate, 'aaa')

INSERT INTO BBS 
VALUES (bbs_id_sql.nextval, 'happy', 'happyday', 'ice')

SELECT * FROM  BBS

CREATE SEQUENCE pd_id_seq 
INCREMENT BY 1
START WITH 1

CREATE TABLE product3 (
	id number(38,0),
	name varchar2(100)
)

INSERT INTO product3
VALUES (pd_id_seq.nextval, 'shoes')

SELECT * FROM product3

1. orderlist3을 만드세요 -- id(number), title, price(number)
2. sequence를 만드세요. -- 이름: or_seq, start값: 1, increment 값: 1 
3. ROW 값 3개이상 넣어보고 확인해보세요  

CREATE SEQUENCE OR_SEQ
INCREMENT BY 1
START WITH 1


INSERT INTO ORDERLIST3
VALUES (or_seq.nextval, 'UMBRELLA', 1000)

SELECT *FROM orderlist3
ORDER BY id --오름차순

SELECT *FROM orderlist3
ORDER BY id DESC  --내림차순

SELECT *FROM orderlist3
WHERE id >= 3
ORDER BY id DESC


CREATE TABLE MEMBER4 
   (	ID VARCHAR2(100) PRIMARY KEY, 
	PW VARCHAR2(100), 
	NAME VARCHAR2(100), 
	TEL VARCHAR2(100), 
	TEAM DATE, -- 나중에 sysdate를 넣을 항목
	COMPANY VARCHAR2(100) DEFAULT 'multi' NOT NULL, 
	LOCATION VARCHAR2(100) UNIQUE 
)

CREATE TABLE DEPT
(
DEPTNO NUMBER(2),
DNAME VARCHAR2(14 BYTE),
LOC VARCHAR2(13 BYTE)
)

CREATE TABLE EMP
(
EMPNO NUMBER(4),
ENAME VARCHAR2(10 BYTE),
JOB VARCHAR2(9 BYTE),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
)

CREATE TABLE SALGRADE
(
GRADE NUMBER,
LOSAL NUMBER,
HISAL NUMBER
)

ALTER TABLE DEPT ADD (
CONSTRAINT PK_DEPT
PRIMARY KEY
(DEPTNO));

ALTER TABLE EMP ADD (
CONSTRAINT PK_EMP
PRIMARY KEY
(EMPNO));

ALTER TABLE EMP ADD (
CONSTRAINT FK_DEPTNO
FOREIGN KEY (DEPTNO)
REFERENCES DEPT (DEPTNO));

SELECT * FROM EMP --selection

SELECT deptno FROM emp --projection

SELECT DISTINCT deptno FROM emp --중복제거

SELECT ename, sal * 12 AS yearsal FROM emp 

SELECT ename, sal * 12 FROM emp 

SELECT * FROM EMP
ORDER BY sal DESC 

SELECT * FROM EMP
WHERE NOT deptno = 30 --30이 아닌것! NOT 
ORDER BY EMPNO DESC

SELECT * FROM EMP
WHERE deptno = 30 OR  job = 'SALESMAN' -- OR 이나 AND 사용 

SELECT * FROM emp 
WHERE  sal != 3000

SELECT * FROM emp
WHERE job NOT IN ('SALESMAN', 'MANAGER') -- NOT 을 써서 세일즈맨, 매니저가 아닌것
ORDER BY job

SELECT * FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000 --BETWEEN A AND B 
ORDER BY EMPNO 

SELECT * FROM emp
WHERE ename NOT LIKE '_L&' -- LIKE 연산자 _L%

SELECT * FROM EMP 
WHERE comm IS NULL 

SELECT * FROM EMP 
WHERE comm IS NOT NULL 

CREATE TABLE dept_temp2
AS
SELECT * FROM dept 

SELECT * FROM dept_temp2

UPDATE DEPT_TEMP2
SET loc = 'seoul'

UPDATE DEPT_TEMP2
SET dname = 'database', loc = 'busan' -- 쉼표 잊지않기
WHERE deptno = 40

DELETE FROM DEPT_TEMP2
WHERE dname = 'sales'

SELECT * FROM dept_temp2 dt

 CREATE TABLE PRODUCT22
(	"ID" VARCHAR2(200),
"NAME" VARCHAR2(200),
"CONTENT" VARCHAR2(200),
"PRICE" NUMBER(38,0),
"COMPANY" VARCHAR2(200),
"IMG" VARCHAR2(200)
)

SELECT *FROM PRODUCT22
ORDER BY price DESC  --내림차순

SELECT *FROM PRODUCT22
ORDER BY COMPANY --오름차순

SELECT * FROM PRODUCT22
WHERE NAME
ORDER BY company

SELECT DISTINCT COMPANY FROM PRODUCT22

SELECT NAME, PRICE * 5 AS PRICE5 FROM PRODUCT22

SELECT * FROM PRODUCT22
WHERE  PRICE = 5000

SELECT * FROM PRODUCT22
WHERE PRICE BETWEEN 3000 AND 6000

SELECT * FROM PRODUCT22
WHERE NOT COMPANY = 'c100'

SELECT * FROM PRODUCT22
WHERE company = 'c100' OR  COMPANY = 'c200'

SELECT * FROM PRODUCT22
WHERE name LIKE '_4&'

SELECT * FROM PRODUCT22
WHERE name LIKE 'food'

-- 11번까지
