--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRODUCT_COUNT
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."PRODUCT_COUNT" 
   (	"ID" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE , 
	"P_COUNT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.PRODUCT_COUNT
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table PRODUCT_COUNT
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."PRODUCT_COUNT" MODIFY ("ID" NOT NULL ENABLE);
