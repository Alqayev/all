CREATE OR REPLACE PACKAGE C##BIGDATA.EDITPACKAGE
AS
FUNCTION EDITBONUCELIST(BYID IN NUMBER) RETURN SYS_REFCURSOR ;

FUNCTION EDITCUSTOMERLIST ( BYID IN NUMBER ) RETURN SYS_REFCURSOR;

FUNCTION EDITPRODUCTLIST (BYID IN NUMBER) RETURN SYS_REFCURSOR;
END EDITPACKAGE;
/
