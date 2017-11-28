--------------------------------------------------------
--  File created - вторник-ќкт€брь-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRODUCTS_ON_SALE
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."PRODUCTS_ON_SALE" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 2 NOORDER  NOCYCLE , 
	"NAME" NVARCHAR2(40) DEFAULT 'empty', 
	"PICTURE" NVARCHAR2(2000) DEFAULT 'empty', 
	"PRICE" NUMBER DEFAULT 0, 
	"BONUCE_VALUE" NUMBER DEFAULT 0, 
	"IMPORTED_DATE" DATE DEFAULT sysdate, 
	"ACTIVE" NUMBER(*,0) DEFAULT 1, 
	"CATEGORY" NUMBER(*,0) DEFAULT 7
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.PRODUCTS_ON_SALE
SET DEFINE OFF;
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('1','Flaver','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Flaver.jpg','10','10',to_date('05.07.16','DD.MM.RR'),'1','7');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('2','Moto','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Moto.jpg','100','5',to_date('05.07.16','DD.MM.RR'),'1','7');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('3','Present','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Present.jpg','5','4',to_date('05.07.16','DD.MM.RR'),'1','7');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('4','Frame','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Frame.jpg','12','6',to_date('05.07.16','DD.MM.RR'),'1','7');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('5','Hasky','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Hasky.jpg','40','20',to_date('08.07.16','DD.MM.RR'),'1','7');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('6','fdgf','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\','45','75',to_date('14.07.16','DD.MM.RR'),'1','5');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('7','kjkl','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\','2452','44',to_date('14.07.16','DD.MM.RR'),'1','5');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('8','Kitchen tools','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\Kitchen.jpg','10','10',to_date('14.07.16','DD.MM.RR'),'1','4');
Insert into C##BIGDATA.PRODUCTS_ON_SALE (ID,NAME,PICTURE,PRICE,BONUCE_VALUE,IMPORTED_DATE,ACTIVE,CATEGORY) values ('9','Plob','C:\Users\TALEH\IdeaProjects\Shopping\out\artifacts\Shopping_war_exploded\upload\st.jpg','4','3',to_date('20.07.16','DD.MM.RR'),'1','7');
--------------------------------------------------------
--  DDL for Index PRODUCTS_ON_SALE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##BIGDATA"."PRODUCTS_ON_SALE_PK" ON "C##BIGDATA"."PRODUCTS_ON_SALE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PRODUCTS_ON_SALE
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."PRODUCTS_ON_SALE" ADD CONSTRAINT "PRODUCTS_ON_SALE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##BIGDATA"."PRODUCTS_ON_SALE" MODIFY ("ID" NOT NULL ENABLE);
