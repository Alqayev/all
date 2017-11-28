CREATE OR REPLACE PACKAGE C##BIGDATA.UPDATEPACKAGE
AS
PROCEDURE UPDATECUSTOMERACTIVE ( ACTV IN RECEIVENT.ACTIVE%TYPE,PRM_ID IN RECEIVENT.ORDERS_ID%TYPE );
PROCEDURE UPDATEPRODUCTPICTURELIST ( PIC IN PRODUCTS_ON_SALE.PICTURE%TYPE,BYID IN PRODUCTS_ON_SALE.ID%TYPE );
PROCEDURE  UPDATEPRODUCTLIST ( NAMES IN PRODUCTS_ON_SALE.NAME%TYPE,PRICES IN PRODUCTS_ON_SALE.PRICE%TYPE,
BONUCE_VAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,IMPDATE IN PRODUCTS_ON_SALE.IMPORTED_DATE%TYPE,
ACTV IN PRODUCTS_ON_SALE.ACTIVE%TYPE,BYID IN PRODUCTS_ON_SALE.ID%TYPE,CATEG IN PRODUCTS_ON_SALE.CATEGORY%TYPE );
PROCEDURE UPDATEBONUCENAMELIST ( NAM IN BONUS_TABLE.BONUCE_NAME%TYPE,BON_QUONTITY IN BONUS_TABLE.BONUCE_QUONTITY%TYPE,
OPN_BON_DATE IN BONUS_TABLE.OPEN_BONUCE_DATE%TYPE,ACTV IN BONUS_TABLE.ACTIVE%TYPE, PRIM_ID IN BONUS_TABLE.PRIMARY_ID%TYPE );
PROCEDURE UPDATEBONUCELIST (
LOGN_DATE IN LOGIN_TABLE_PRIMARY.LOGIN_DATE%TYPE,TASKS IN 
LOGIN_TABLE_PRIMARY.TASK%TYPE,ACTIV IN LOGIN_TABLE_PRIMARY.ACTIVE%TYPE,
BYID IN LOGIN_TABLE_PRIMARY.ID%TYPE );
PROCEDURE UPDATEOLDEMAILACTIVE ( BYID IN LOGIN_TABLE_PRIMARY.ID%TYPE );
PROCEDURE UPDATEOLDTWOMONTHEMAILACTIVE ( BYID IN LOGIN_TABLE_PRIMARY.ID%TYPE );
END;
/
