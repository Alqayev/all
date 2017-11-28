--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NEW_ORDERS
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."NEW_ORDERS" 
   (	"ID" NUMBER(*,0), 
	"IMPORT_DATE" DATE DEFAULT SYSDATE, 
	"STATUS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.NEW_ORDERS
SET DEFINE OFF;
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('1',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('2',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('3',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('4',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('5',to_date('16.09.16','DD.MM.RR'),'5');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('6',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('7',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('8',to_date('16.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('11',to_date('18.09.16','DD.MM.RR'),'11');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('12',to_date('18.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('13',to_date('19.09.16','DD.MM.RR'),'101');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('14',to_date('19.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('15',to_date('19.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('16',to_date('19.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('18',to_date('19.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('19',to_date('19.09.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('22',to_date('20.09.16','DD.MM.RR'),'13');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('24',to_date('20.09.16','DD.MM.RR'),'13');
Insert into C##BIGDATA.NEW_ORDERS (ID,IMPORT_DATE,STATUS) values ('25',to_date('20.09.16','DD.MM.RR'),'451');
--------------------------------------------------------
--  Constraints for Table NEW_ORDERS
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."NEW_ORDERS" MODIFY ("ID" NOT NULL ENABLE);
