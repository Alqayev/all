--------------------------------------------------------
--  File created - �������-�������-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRIMARY_TABLE
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."PRIMARY_TABLE" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE , 
	"PRIMARY_ID" NUMBER DEFAULT 0, 
	"ADDRESS" NVARCHAR2(150) DEFAULT 'UNKNOWN', 
	"ORDER_DATE" DATE DEFAULT sysdate, 
	"LAST_DATE_OF_DELIVERY" DATE DEFAULT to_date('01/01/0001','DD/MM/YYYY'), 
	"EMAIL" NVARCHAR2(40) DEFAULT 'UNKNOWN', 
	"MOBILE" NVARCHAR2(30) DEFAULT 'UNKNOWN', 
	"MOBILE2" NVARCHAR2(30) DEFAULT 'UNKNOWN', 
	"ACTIVE" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.PRIMARY_TABLE
SET DEFINE OFF;
Insert into C##BIGDATA.PRIMARY_TABLE (ID,PRIMARY_ID,ADDRESS,ORDER_DATE,LAST_DATE_OF_DELIVERY,EMAIL,MOBILE,MOBILE2,ACTIVE) values ('8','2','ganca',to_date('18.07.16','DD.MM.RR'),to_date('23.07.16','DD.MM.RR'),'askercompany@gmail.com','055','60','1');
Insert into C##BIGDATA.PRIMARY_TABLE (ID,PRIMARY_ID,ADDRESS,ORDER_DATE,LAST_DATE_OF_DELIVERY,EMAIL,MOBILE,MOBILE2,ACTIVE) values ('7','1','Baki',to_date('20.07.16','DD.MM.RR'),to_date('01.01.01','DD.MM.RR'),'alqayevt@gmail.com','425','2121','1');
--------------------------------------------------------
--  DDL for Index PRIMARY_TABLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##BIGDATA"."PRIMARY_TABLE_PK" ON "C##BIGDATA"."PRIMARY_TABLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PRIMARY_TABLE
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."PRIMARY_TABLE" ADD CONSTRAINT "PRIMARY_TABLE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##BIGDATA"."PRIMARY_TABLE" MODIFY ("ID" NOT NULL ENABLE);