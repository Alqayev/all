--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DATE_SS
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."DATE_SS" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE , 
	"PRIM_ID" NUMBER, 
	"ORDER_DATE" DATE, 
	"PRODUCT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.DATE_SS
SET DEFINE OFF;
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('1','1',null,null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('2',null,to_date('04.01.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('3',null,to_date('03.02.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('4',null,to_date('17.03.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('5',null,to_date('15.04.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('6',null,to_date('05.05.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('7',null,to_date('15.06.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('8',null,to_date('06.07.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('9',null,to_date('07.08.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('10',null,to_date('11.09.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('11',null,to_date('07.10.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('12',null,to_date('21.11.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('13',null,to_date('10.12.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('14',null,null,null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('15','1',to_date('18.07.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('16','1',to_date('18.07.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('17','1',to_date('20.07.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('18','1',to_date('20.07.16','DD.MM.RR'),null);
Insert into C##BIGDATA.DATE_SS (ID,PRIM_ID,ORDER_DATE,PRODUCT_ID) values ('19','1',to_date('20.07.16','DD.MM.RR'),null);
--------------------------------------------------------
--  DDL for Index DATE_SS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##BIGDATA"."DATE_SS_PK" ON "C##BIGDATA"."DATE_SS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table DATE_SS
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."DATE_SS" ADD CONSTRAINT "DATE_SS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##BIGDATA"."DATE_SS" MODIFY ("ID" NOT NULL ENABLE);
