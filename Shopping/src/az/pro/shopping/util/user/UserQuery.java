package az.pro.shopping.util.user;

/**
 * Created by TALEH on 06.07.2016.
 */
public class UserQuery {
    public static final String ADDUSER="{call C##BIGDATA.INSERTUSER.INSERTUSERPRO(?,?,?,?)}";
    public static final String ADDBONUCE="{call C##BIGDATA.INSERTUSER.BONUCEREGISTR(?,?,?)}";
    public static final String CHECKEMAIL="{?=call C##BIGDATA.SELECTUSER.CHECKEMAIL(?)}";
    public static final String CHECKLOGIN="{?=call C##BIGDATA.SELECTUSER.CHECKLOGGIN(?,?)}";
    public static final String BYIDFORBON="{?=call C##BIGDATA.SELECTUSER.BYIDFORBONUCE(?,?)}";
    public static final String BYEMAIL="{?=call C##BIGDATA.SELECTUSER.BYEMAIL(?)}";
    public static final String CHANGEPASSWORD="{call C##BIGDATA.UPDATEUSER.CHANGEPASSWORD(?,?)}";
    public static final String GETPRODUCTLIST="{call C##BIGDATA.SELECTUSER.GETPRODUCTLIST(?)}";
    public static final String INSERTORDERED="{call C##BIGDATA.INSERTUSER.ORDEREDINSERT(?,?,?,?,?,?,?,?,?,?,?)}";
    public static final String CHECKODR="{call C##BIGDATA.INSERTUSER.CHECKODR(?,?)}";
    public static final String SELECTPACKAGEPICTURE="{?=call C##BIGDATA.SELECTPACKAGE.SHOWPICTURE(?)}";
    public static final String PRODUCTADVSEARCH="{?=call C##BIGDATA.ADVSEARCHPACKAGE.ADVLIBRARY(?,?,?,?,?,?)}";

}
