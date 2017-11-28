--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORD_DETAILS
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."ORD_DETAILS" 
   (	"ORD_NO" NUMBER(2,0), 
	"ITEM_NO" NUMBER(3,0), 
	"ORD_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.ORD_DETAILS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index ORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##BIGDATA"."ORD_PK" ON "C##BIGDATA"."ORD_DETAILS" ("ORD_NO", "ITEM_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ORD_DETAILS
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."ORD_DETAILS" ADD CONSTRAINT "ORD_PK" PRIMARY KEY ("ORD_NO", "ITEM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##BIGDATA"."ORD_DETAILS" MODIFY ("ORD_DATE" NOT NULL ENABLE);
