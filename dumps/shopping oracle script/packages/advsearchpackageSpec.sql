CREATE OR REPLACE PACKAGE C##BIGDATA.ADVSEARCHPACKAGE
IS
FUNCTION CUSTOMERADVSEARCH (BEGIN_DATE IN LOGIN_TABLE_PRIMARY.LOGIN_DATE%TYPE,
END_DATE IN LOGIN_TABLE_PRIMARY.LOGIN_DATE%TYPE,ADV_NAME IN LOGIN_TABLE_PRIMARY.NAME%TYPE,ADV_SURNAME IN LOGIN_TABLE_PRIMARY.SURNAME%TYPE,
EMAILS IN LOGIN_TABLE_PRIMARY.EMAIL%TYPE,TASKS IN LOGIN_TABLE_PRIMARY.TASK%TYPE,ACTV IN LOGIN_TABLE_PRIMARY.ACTIVE%TYPE) RETURN SYS_REFCURSOR;

FUNCTION ORDEREDADVSEARCH (BEGIN_ORDERED_DATE IN PRIMARY_TABLE.ORDER_DATE%TYPE,END_ORDERED_DATE IN PRIMARY_TABLE.ORDER_DATE%TYPE,
BEGIN_DELIVERY_DATE IN PRIMARY_TABLE.LAST_DATE_OF_DELIVERY%TYPE,END_DELIVERY_DATE IN PRIMARY_TABLE.LAST_DATE_OF_DELIVERY%TYPE,
ODR_NAME IN LOGIN_TABLE_PRIMARY.NAME%TYPE,ODR_SURNAME IN LOGIN_TABLE_PRIMARY.SURNAME%TYPE,ODR_EMAIL IN LOGIN_TABLE_PRIMARY.EMAIL%TYPE,
ODR_ADDRESS IN PRIMARY_TABLE.ADDRESS%TYPE,ODR_MOB IN PRIMARY_TABLE.MOBILE%TYPE,ODR_MOB2 IN PRIMARY_TABLE.MOBILE2%TYPE,
PR_NAME IN PRODUCTS_ON_SALE.NAME%TYPE,OD_COUNTMIN IN RECEIVENT.ORDER_COUNT%TYPE,OD_COUNTMAX IN RECEIVENT.ORDER_COUNT%TYPE,
ACTV  IN LOGIN_TABLE_PRIMARY.ACTIVE%TYPE) RETURN SYS_REFCURSOR;

FUNCTION PRODUCTADV (PRD_NAME IN PRODUCTS_ON_SALE.NAME%TYPE,PRD_BEGIN_DATE IN PRODUCTS_ON_SALE.IMPORTED_DATE%TYPE,
PRD_END_DATE IN PRODUCTS_ON_SALE.IMPORTED_DATE%TYPE,PRD_PRICE_MIN IN PRODUCTS_ON_SALE.PRICE%TYPE,
PRD_PRICE_MAX IN PRODUCTS_ON_SALE.PRICE%TYPE,PRO_BONMIN_VAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,
PRO_BONMAX_VAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,PRO_ACTIVE IN PRODUCTS_ON_SALE.ACTIVE%TYPE) RETURN SYS_REFCURSOR;

FUNCTION ADVBONUCELIST(B_NAME IN LOGIN_TABLE_PRIMARY.NAME%TYPE,B_SURNAME IN LOGIN_TABLE_PRIMARY.SURNAME%TYPE,
B_EMAIL IN LOGIN_TABLE_PRIMARY.EMAIL%TYPE,BON_NAME IN BONUS_TABLE.BONUCE_NAME%TYPE,B_QUONTITY_MIN IN BONUS_TABLE.BONUCE_QUONTITY%TYPE,
B_QUONTITY_MAX IN BONUS_TABLE.BONUCE_QUONTITY%TYPE,B_OPEN_DATEMIN IN BONUS_TABLE.OPEN_BONUCE_DATE%TYPE,
B_OPEN_DATEMAX IN BONUS_TABLE.OPEN_BONUCE_DATE%TYPE,B_ACTIVE IN BONUS_TABLE.ACTIVE%TYPE) RETURN SYS_REFCURSOR;
FUNCTION ADVLIBRARY(U_NAME IN PRODUCTS_ON_SALE.NAME%TYPE,U_MINPRIC IN PRODUCTS_ON_SALE.PRICE%TYPE,U_MAXPRIC IN PRODUCTS_ON_SALE.PRICE%TYPE,
U_MINBONVAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,U_MAXBONVAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,U_CATEGORY IN PRODUCTS_ON_SALE.CATEGORY%TYPE) RETURN SYS_REFCURSOR;
END ADVSEARCHPACKAGE;
/