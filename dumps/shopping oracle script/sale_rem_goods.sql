--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALE_REM_GOODS
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."SALE_REM_GOODS" 
   (	"ID" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE , 
	"P_ID" NUMBER(*,0), 
	"REM_GOODS_C" NUMBER(*,0), 
	"STATUS" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.SALE_REM_GOODS
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table SALE_REM_GOODS
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."SALE_REM_GOODS" MODIFY ("ID" NOT NULL ENABLE);
