--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALE_AMOUNT_SALES
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."SALE_AMOUNT_SALES" 
   (	"ID" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE , 
	"P_ID" NUMBER(*,0), 
	"AMOUNT_COUNT" NUMBER, 
	"STATUS" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.SALE_AMOUNT_SALES
SET DEFINE OFF;
Insert into C##BIGDATA.SALE_AMOUNT_SALES (ID,P_ID,AMOUNT_COUNT,STATUS) values ('1','1','7498','1');
--------------------------------------------------------
--  Constraints for Table SALE_AMOUNT_SALES
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."SALE_AMOUNT_SALES" MODIFY ("ID" NOT NULL ENABLE);
