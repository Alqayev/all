--------------------------------------------------------
--  File created - �������-�������-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BONUS_TABLE
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."BONUS_TABLE" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE , 
	"PRIMARY_ID" NUMBER, 
	"BONUCE_NAME" NVARCHAR2(30), 
	"BONUCE_PASSWORD" NVARCHAR2(2000), 
	"BONUCE_QUONTITY" NUMBER DEFAULT 0, 
	"OPEN_BONUCE_DATE" DATE DEFAULT sysdate, 
	"ACTIVE" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.BONUS_TABLE
SET DEFINE OFF;
Insert into C##BIGDATA.BONUS_TABLE (ID,PRIMARY_ID,BONUCE_NAME,BONUCE_PASSWORD,BONUCE_QUONTITY,OPEN_BONUCE_DATE,ACTIVE) values ('1','1','TALEH','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','1529',to_date('09.07.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.BONUS_TABLE (ID,PRIMARY_ID,BONUCE_NAME,BONUCE_PASSWORD,BONUCE_QUONTITY,OPEN_BONUCE_DATE,ACTIVE) values ('2','3','Fogot','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','0',to_date('09.07.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.BONUS_TABLE (ID,PRIMARY_ID,BONUCE_NAME,BONUCE_PASSWORD,BONUCE_QUONTITY,OPEN_BONUCE_DATE,ACTIVE) values ('3','2','Asker','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2439',to_date('09.07.16','DD.MM.RR'),'1');
Insert into C##BIGDATA.BONUS_TABLE (ID,PRIMARY_ID,BONUCE_NAME,BONUCE_PASSWORD,BONUCE_QUONTITY,OPEN_BONUCE_DATE,ACTIVE) values ('5','2','fgd',null,'25',to_date('24.09.16','DD.MM.RR'),'1');
--------------------------------------------------------
--  DDL for Index BONUCE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##BIGDATA"."BONUCE_PK" ON "C##BIGDATA"."BONUS_TABLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BONUS_TABLE
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."BONUS_TABLE" ADD CONSTRAINT "BONUCE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##BIGDATA"."BONUS_TABLE" MODIFY ("ID" NOT NULL ENABLE);
