--------------------------------------------------------
--  File created - �������-�������-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MONTHLY_ORDERS
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."MONTHLY_ORDERS" 
   (	"ORDER_ID" NUMBER(*,0), 
	"ORDER_TOTAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.MONTHLY_ORDERS
SET DEFINE OFF;
Insert into C##BIGDATA.MONTHLY_ORDERS (ORDER_ID,ORDER_TOTAL) values ('2','2500');
Insert into C##BIGDATA.MONTHLY_ORDERS (ORDER_ID,ORDER_TOTAL) values ('3',null);
