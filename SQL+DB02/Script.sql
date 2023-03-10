--BOARD 복사

CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
   -- 추천게시판(RECOMMEND)
   -- re_no 숫자
   -- title, content, writer문자
   
   CREATE TABLE RECOMMEND (
   RE_NO NUMBER(38,0),
   PRODUCT22 VARCHAR2(100),
   CONTENT VARCHAR2(100),
   WRITER VARCHAR2(100)
   
   )
   
   --드랍 테이블 -> 테이블을 통째로 날림
   
   DROP TABLE RECOMMEND 
   
   CREATE TABLE RECOMMEND (
   RE_NO NUMBER(38,0),
   PRODUCT22 VARCHAR2(100),
   CONTENT VARCHAR2(100),
   WRITER VARCHAR2(100)
   
   )
   
   ALTER TABLE HR.RECOMMEND ADD VIEWCOUNT NUMBER(38,0) NULL;
   
  CREATE TABLE "HR"."BOARD2" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   


 DROP TABLE BOARD3  
 
 DROP TABLE BOARD2
 
 -- DCL : DB 관리/제어해주는 문법(계정생성, 계정권한부여, 백업, 복구)
 
 CREATE USER apple IDENTIFIED BY a1234
 
 GRANT CONNECT, resource, dba TO apple 
 
 INSERT INTO MEMBER VALUES ('100','100','park','011')
 
 INSERT INTO MEMBER VALUES ('200','200','park','011')
 
 INSERT INTO MEMBER VALUES ('300','300','park','011')
 
 SELECT * FROM MEMBER
 
 SELECT * FROM MEMBER WHERE id = '100' -- id가 100인 모든 컬럼
 
 SELECT id FROM MEMBER WHERE id = '100' -- id가 100인 id 컬럼
 
 SELECT id,name FROM MEMBER WHERE id = '100' -- id가 100인 id,name 컬럼
 
 SELECT tel FROM MEMBER WHERE name = 'park'
 
 UPDATE MEMBER SET name = 'kim' WHERE ID = '100'
 
 UPDATE MEMBER SET name = 'yang' WHERE ID = '200'
 
 UPDATE MEMBER SET name = 'lee' WHERE ID = '300'
 
 SELECT * FROM MEMBER

 UPDATE MEMBER SET PW ='8888', TEL = '9999' WHERE ID = 'ice' 
 
 DELETE FROM MEMBER WHERE id='100'
 
 DELETE FROM MEMBER WHERE tel = '011'
 
 SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'
 
 SELECT * FROM MEMBER WHERE id = '200' OR  tel = '011'
 
 -- id, name, content, price, company, img
 
 CREATE TABLE product (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

SELECT * FROM MEMBER ORDER BY id -- 오름차순

SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순

--정리문제

SELECT * FROM PRODUCT ORDER BY PRICE DESC --1

SELECT NAME, CONTENT, PRICE  FROM PRODUCT ORDER BY COMPANY --2

SELECT NAME,PRICE FROM PRODUCT WHERE ID = '100' --3

SELECT NAME,COMPANY FROM PRODUCT WHERE PRICE = '5000' --4

SELECT NAME,IMG FROM PRODUCT WHERE ID= '100' AND PRICE ='1000'--5

SELECT COMPANY,NAME FROM PRODUCT WHERE COMPANY ='c100' --6

SELECT NAME, PRICE  FROM PRODUCT WHERE COMPANY ='c100'OR COMPANY= 'c200' --7

UPDATE PRODUCT SET CONTENT = '품절' WHERE PRICE = '5000' --8

UPDATE PRODUCT SET IMG = '0.PNG', PRICE = '10000' WHERE ID='100' OR ID = '102' --9

UPDATE PRODUCT SET COMPANY = 'apple',name = 'appleshoes' WHERE ID = '101' --10

DELETE FROM PRODUCT WHERE NAME = 'shoes1' OR ID = '107' --11

DELETE FROM PRODUCT WHERE NAME = 'c100' --12

DELETE FROM PRODUCT  -- 13

DROP TABLE PRODUCT -- 14






 
 