CREATE OR REPLACE PACKAGE BODY C##BIGDATA.INSERTUSER
IS
PROCEDURE  INSERTUSERPRO(U_NAME IN LOGIN_TABLE_PRIMARY.NAME%TYPE,U_SURNAME IN LOGIN_TABLE_PRIMARY.SURNAME%TYPE,
U_EMAIL IN LOGIN_TABLE_PRIMARY.EMAIL%TYPE,U_PASS IN LOGIN_TABLE_PRIMARY.PASSWORD%TYPE)
IS
BEGIN
INSERT INTO LOGIN_TABLE_PRIMARY (NAME,SURNAME,EMAIL,PASSWORD) VALUES (U_NAME,U_SURNAME,U_EMAIL,U_PASS);
END INSERTUSERPRO;

PROCEDURE  BONUCEREGISTR(U_ID IN BONUS_TABLE.PRIMARY_ID%TYPE, U_NAME IN BONUS_TABLE.BONUCE_NAME%TYPE,U_PASS IN BONUS_TABLE.BONUCE_PASSWORD%TYPE)
IS
BEGIN
INSERT INTO BONUS_TABLE (PRIMARY_ID,BONUCE_NAME,BONUCE_PASSWORD) VALUES (U_ID,U_NAME,U_PASS);
END BONUCEREGISTR;
PROCEDURE  ORDEREDINSERT(U_ID IN PRIMARY_TABLE.PRIMARY_ID%TYPE,U_ADDRESS IN PRIMARY_TABLE.ADDRESS%TYPE,LT_DATE_DEL IN PRIMARY_TABLE.LAST_DATE_OF_DELIVERY%TYPE
,U_EMAIL IN PRIMARY_TABLE.EMAIL%TYPE,U_MOBILE IN PRIMARY_TABLE.MOBILE%TYPE,U_MOBILE2 IN PRIMARY_TABLE.MOBILE2%TYPE,U_PAYABLE IN AMOUNT_PAYABLE.AMOUNT_PAYABLE_U%TYPE,
U_BON_VAL IN BONUS_TABLE.BONUCE_QUONTITY%TYPE,P_ID IN RECEIVENT.PRODUCT_ID%TYPE,P_COUNT IN RECEIVENT.ORDER_COUNT%TYPE,BACK_INFO OUT SYS_REFCURSOR)
IS
COL_ID PRIMARY_TABLE.PRIMARY_ID%TYPE;
CURSOR c1 IS 
SELECT PRIMARY_ID FROM PRIMARY_TABLE WHERE PRIMARY_ID=U_ID AND ACTIVE=1;
BEGIN
UPDATE BONUS_TABLE SET BONUCE_QUONTITY=(SELECT BONUCE_QUONTITY FROM  BONUS_TABLE WHERE PRIMARY_ID=U_ID)+P_COUNT*(U_BON_VAL) WHERE PRIMARY_ID=U_ID;
OPEN c1;
   FETCH c1 INTO COL_ID;
   IF c1%NOTFOUND THEN
   INSERT INTO PRIMARY_TABLE (PRIMARY_ID, ADDRESS, LAST_DATE_OF_DELIVERY,EMAIL,MOBILE,MOBILE2) VALUES (U_ID,U_ADDRESS,NVL(TO_DATE(LT_DATE_DEL),TO_DATE('01/01/0001', 'dd/mm/yyyy')),U_EMAIL,U_MOBILE,U_MOBILE2);
   ELSIF c1%FOUND THEN
   UPDATE PRIMARY_TABLE SET ORDER_DATE=sysdate,ADDRESS= U_ADDRESS,LAST_DATE_OF_DELIVERY=NVL(TO_DATE(LT_DATE_DEL),TO_DATE('01/01/0001', 'dd/mm/yyyy')),EMAIL=U_EMAIL,MOBILE=U_MOBILE,MOBILE2=U_MOBILE2 WHERE PRIMARY_ID=U_ID;  
   OPEN BACK_INFO FOR 
   SELECT PRIMARY_ID,ADDRESS,LAST_DATE_OF_DELIVERY,MOBILE,MOBILE2 FROM PRIMARY_TABLE WHERE PRIMARY_ID=U_ID AND ACTIVE=1;
   END IF;
  CLOSE c1;
INSERT ALL
  INTO AMOUNT_PAYABLE (PRIMARY_ID, AMOUNT_PAYABLE_U) VALUES (U_ID,DECODE (P_COUNT,0,U_PAYABLE,P_COUNT*(U_PAYABLE)))
  INTO RECEIVENT (ORDERS_ID, PRODUCT_ID,ORDER_COUNT) VALUES (U_ID,P_ID,P_COUNT)
SELECT * FROM DUAL;
--DELETE FROM PRIMARY_TABLE WHERE ID =1
END ORDEREDINSERT;

PROCEDURE  CHECKODR(U_ID IN PRIMARY_TABLE.PRIMARY_ID%TYPE,BACK_INFO OUT SYS_REFCURSOR)
IS
BEGIN
   OPEN BACK_INFO FOR 
   SELECT PRIMARY_ID,ADDRESS,LAST_DATE_OF_DELIVERY,MOBILE,MOBILE2 FROM PRIMARY_TABLE WHERE PRIMARY_ID=U_ID AND ACTIVE=1;
END CHECKODR;
END INSERTUSER;


--SELECT * FROM PRIMARY_TABLE
/
