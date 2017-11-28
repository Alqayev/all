CREATE OR REPLACE PACKAGE C##BIGDATA.INSERTPACKAGE
AS
PROCEDURE INSERTPRODUCTLIST(P_NAME IN PRODUCTS_ON_SALE.NAME%TYPE,P_PICTURE IN PRODUCTS_ON_SALE.PICTURE%TYPE,
P_PRICE IN PRODUCTS_ON_SALE.PRICE%TYPE,P_BONVAL IN PRODUCTS_ON_SALE.BONUCE_VALUE%TYPE,
P_PRODUCTPICTURE IN PRODUCT_PICTURE.PRODUCT_PATH%TYPE,P_CATEGORY IN PRODUCTS_ON_SALE.CATEGORY%TYPE);
END INSERTPACKAGE;
/