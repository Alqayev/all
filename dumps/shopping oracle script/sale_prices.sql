--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALE_PRICES
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."SALE_PRICES" 
   (	"ID" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE , 
	"S_ID" NUMBER(*,0), 
	"PRICE" NUMBER, 
	"STATUS" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.SALE_PRICES
SET DEFINE OFF;
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('1','1','985','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('2','2','985','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('3','3','985,7','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('4','4','0','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('5','5','0','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('6','6','0','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('7','7','0','1');
Insert into C##BIGDATA.SALE_PRICES (ID,S_ID,PRICE,STATUS) values ('8','8','0','1');
--------------------------------------------------------
--  Constraints for Table SALE_PRICES
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."SALE_PRICES" MODIFY ("ID" NOT NULL ENABLE);
