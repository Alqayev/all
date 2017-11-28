--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALECOUNT
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."SALECOUNT" 
   (	"ID" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE , 
	"S_ID" NUMBER(*,0), 
	"P_COUNT" NUMBER DEFAULT NULL, 
	"STATUS" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.SALECOUNT
SET DEFINE OFF;
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('1','1','105','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('2','2','105','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('3','3','105','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('4','4','412','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('5','5','412','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('6','6','412','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('7','7','1245','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('8','8','7524245','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('11','0',null,'1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('16','3','45','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('17','3','126','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('18','3','130','1');
Insert into C##BIGDATA.SALECOUNT (ID,S_ID,P_COUNT,STATUS) values ('19','6','500','1');
--------------------------------------------------------
--  Constraints for Table SALECOUNT
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."SALECOUNT" MODIFY ("ID" NOT NULL ENABLE);
