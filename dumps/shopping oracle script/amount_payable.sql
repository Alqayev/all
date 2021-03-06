--------------------------------------------------------
--  File created - �������-�������-25-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AMOUNT_PAYABLE
--------------------------------------------------------

  CREATE TABLE "C##BIGDATA"."AMOUNT_PAYABLE" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE , 
	"PRIMARY_ID" NUMBER, 
	"AMOUNT_PAYABLE_U" NUMBER DEFAULT 0, 
	"ACTIVE" NUMBER(*,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##BIGDATA.AMOUNT_PAYABLE
SET DEFINE OFF;
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('1','1','36','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('2','1','5','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('3','2','300','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('4','2','20','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('5','1','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('6','2','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('7','1','36','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('8','1','36','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('9','1','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('10','1','200','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('11','1','20','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('12','1','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('13','1','20','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('14','1','100','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('15','1','5','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('16','1','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('17','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('18','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('19','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('20','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('21','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('22','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('23','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('24','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('25','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('26','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('27','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('28','1','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('29','2','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('30','1','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('31','1','5','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('32','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('33','1','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('34','1','5','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('35','1','1200','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('36','1','12','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('37','1','24','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('39','1','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('40','1','9808','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('41','2','90','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('42','2','280','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('43','1','36','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('44','1','40','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('45','1','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('46','1','4904','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('47','1','4904','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('48','2','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('49','2','120','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('50','2','40','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('51','2','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('52','2','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('53','2','107888','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('54','2','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('55','1','315','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('56','1','10','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('57','1','45','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('58','1','50','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('60','1','30','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('61','1','120','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('62','1','300','1');
Insert into C##BIGDATA.AMOUNT_PAYABLE (ID,PRIMARY_ID,AMOUNT_PAYABLE_U,ACTIVE) values ('63','1','56','1');
--------------------------------------------------------
--  Constraints for Table AMOUNT_PAYABLE
--------------------------------------------------------

  ALTER TABLE "C##BIGDATA"."AMOUNT_PAYABLE" MODIFY ("ID" NOT NULL ENABLE);
