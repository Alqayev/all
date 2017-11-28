package az.pro.shopping.dao;
import az.pro.shopping.cnt.DbConnect;
import az.pro.shopping.dao.user.UserDaoImpl;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.util.DbClose;
import az.pro.shopping.util.Query;
import az.pro.shopping.web.ControllerServlet;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;
import org.apache.log4j.Logger;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;

/**
 * Created by TALEH on 17.06.2016.
 */
public class DaShopImpl implements DaoShop {
    public static Logger logger=Logger.getLogger(DaShopImpl.class);
    @Override
    public List<ModelShop> getAdminShoppingList() {
//        SELECT L.ID,L.NAME,L.SURNAME,L.EMAIL,L.LOGIN_DATE,L.TASK,L.ACTIVE FROM LOGIN_TABLE_PRIMARY L
        String sql = Query.GETADMINSHOPPINGLIST;
        Connection conn = null;
        //PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
          //  pre = conn.prepareStatement(sql);
//            rs = pre.executeQuery();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()) {
//                ResultSetMetaData rsmd = rs.getMetaData();
//                rsmd.
//                System.out.println("id - " +rs.getLong("ID"));
                ModelShop model = new ModelShop();
                model.setPrimaryId(rs.getLong("ID"));
                model.setName(rs.getString("NAME"));
                model.setSurname(rs.getString("SURNAME"));
                model.setEmail(rs.getString("EMAIL"));
                model.setLogginDate(rs.getDate("LOGIN_DATE"));
                model.setTasks(rs.getString("TASK"));
                model.setActive(rs.getInt("ACTIVE"));
                list.add(model);

            }
        } catch (Exception e) {
            System.out.println(" getAdminShoppingList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, null, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }


        }
        return list;
    }

    @Override
    public List<ModelShop> getAdminOrderedList() {

        String sql = Query.SHOWFULLORDEREDLIST;
        Connection conn = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs=(ResultSet) cs.getObject(1);
            while (rs.next()) {
//RC.ID CH_ID,LTP.ID LTP_ID,LTP.NAME LTP_NAME,LTP.SURNAME LTP_SURNAME,LTP.EMAIL LTP_EMAIL,PT.ADDRESS PT_ADDRESS,PT.ORDER_DATE PT_DATE
//                ,PT.LAST_DATE_OF_DELIVERY PT_DELDATE,PT.MOBILE PT_MOBILE,PT.MOBILE2 PT_MOBILE2,POS.NAME POS_NAME,RC.ORDER_COUNT RC_COUNT
                ModelShop model = new ModelShop();
                model.setProductId(rs.getLong("CH_ID"));
                model.setPrimaryId(rs.getLong("LTP_ID"));
                model.setName(rs.getString("LTP_NAME"));
                model.setSurname(rs.getString("LTP_SURNAME"));
                model.setEmail(rs.getString("LTP_EMAIL"));
                model.setAddress(rs.getString("PT_ADDRESS"));
                model.setOrderDate(rs.getDate("PT_DATE"));
                model.setLastDateOfDelivery(rs.getDate("PT_DELDATE"));
                model.setMobile(rs.getString("PT_MOBILE"));
                model.setMobile2(rs.getString("PT_MOBILE2"));
                model.setProductName(rs.getString("POS_NAME"));
                model.setPrCount(rs.getInt("RC_COUNT"));
                model.setRcActive(rs.getInt("RC_ACTIVE"));
                list.add(model);
            }
        } catch (Exception e) {
            logger.error("Errorr : getAdminOrderedList  "+e);
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                logger.error("Errorr : getAdminOrderedList  "+e);
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return list;
    }

    @Override
    public List<ModelShop> getAdminProductList() {
//        P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE
        String sql = Query.GETADMINPRODUCTLIST;
        Connection conn = null;
//        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
//            pre = conn.prepareStatement(sql);
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
//            rs = pre.executeQuery();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setProductId(rs.getLong("ID"));
                model.setProductName(rs.getString("NAME"));
                model.setProductPicture(rs.getString("PICTURE"));
                model.setProductPrice(rs.getDouble("PRICE"));
                model.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
                model.setProductImportDate(rs.getDate("IMPORTED_DATE"));
                model.setProductActive(rs.getInt("ACTIVE"));
                model.setDictId(rs.getInt("DICID"));
                model.setDictValue(rs.getString("DICT_VALUE"));
                list.add(model);
            }
        } catch (Exception e) {
            System.out.println(" getAdminProductList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, null, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<ModelShop> getAdminBonuceList() {
//        L.ID,L.NAME,L.SURNAME,L.EMAIL,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE
        String sql = Query.GETADMINBONUCELIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
//            pre = conn.prepareStatement(sql);
            cs=conn.prepareCall(sql);

            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
//            rs = pre.executeQuery();
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setPrimaryId(rs.getLong("PRIMARY_ID"));
                model.setName(rs.getString("NAME"));
                model.setSurname(rs.getString("SURNAME"));
                model.setEmail(rs.getString("EMAIL"));
                model.setBonuceName(rs.getString("BONUCE_NAME"));
                model.setBonuceQuontity(rs.getDouble("BONUCE_QUONTITY"));
                model.setBonuceOpenDate(rs.getDate("OPEN_BONUCE_DATE"));
                model.setBonuceActive(rs.getInt("ACTIVE"));
                list.add(model);
            }
        } catch (Exception e) {

            System.out.println(" getAdminProductList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public ModelShop getAdminEditCustomerList(int id) {
//        SELECT L.ID,L.NAME,L.SURNAME,L.EMAIL,L.LOGIN_DATE,L.TASK,L.ACTIVE
        String sql = Query.EDITCUSTOMERLIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        ModelShop customer = null;
        try {
            conn = DbConnect.dbConnect();
//            pre = conn.prepareStatement(sql);
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setInt(2,id);
            cs.execute();
//            pre.setInt(1, id);
            rs= (ResultSet) cs.getObject(1);
//            rs = pre.executeQuery();
            if (rs.next()) {
                customer = new ModelShop();
                customer.setPrimaryId(rs.getLong("ID"));
                customer.setName(rs.getString("NAME"));
                customer.setSurname(rs.getString("SURNAME"));
                customer.setEmail(rs.getString("EMAIL"));
                customer.setLogginDate(rs.getDate("LOGIN_DATE"));
                customer.setTasks(rs.getString("TASK"));
                customer.setActive(rs.getInt("ACTIVE"));

            }
        } catch (Exception e) {

            System.out.println(" getAdminEditCustomerList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
        }
        return customer;
    }

    @Override
    public ModelShop getAdminEditProductList(int id) {
//        P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE
        String sql = Query.EDITPRODUCTLIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        ModelShop customer = null;
        try {
            conn = DbConnect.dbConnect();
            cs= conn.prepareCall(sql);
//            pre = conn.prepareStatement(sql);
//            /pre.setInt(1, id);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setInt(2,id);
            cs.execute();
            rs=(ResultSet)cs.getObject(1);
//            rs = pre.executeQuery();
            if (rs.next()) {
                customer = new ModelShop();
                customer.setProductId(rs.getLong("ID"));
                customer.setProductName(rs.getString("NAME"));
                customer.setProductPicture(rs.getString("PICTURE"));
                customer.setProductPrice(rs.getDouble("PRICE"));
                customer.setProductImportDate(rs.getDate("IMPORTED_DATE"));
                customer.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
                customer.setProductActive(rs.getInt("ACTIVE"));
                customer.setDictId(rs.getInt("DICID"));
                customer.setDictValue(rs.getString("DICT_VALUE"));

            }
        } catch (Exception e) {
            System.out.println(" getAdminEditProductList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return customer;
    }

    @Override
    public ModelShop getAdminEditBonuceList(int id) {
//        B.PRIMARY_ID,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE
        String sql = Query.EDITBONUCELIST;
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        CallableStatement cs=null;
        ModelShop customer = null;
        try {
            conn = DbConnect.dbConnect();
//            pre = conn.prepareStatement(sql);
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setInt(2,id);
            cs.execute();
//            pre.setInt(1, id);
//            rs = pre.executeQuery();
            rs= (ResultSet) cs.getObject(1);

            if (rs.next()) {
                customer = new ModelShop();
                customer.setPrimaryId(rs.getLong("PRIMARY_ID"));
                customer.setBonuceName(rs.getString("BONUCE_NAME"));
                customer.setBonuceQuontity(rs.getDouble("BONUCE_QUONTITY"));
                customer.setBonuceOpenDate(rs.getDate("OPEN_BONUCE_DATE"));
                customer.setBonuceActive(rs.getInt("ACTIVE"));

            }
        } catch (Exception e) {
            System.out.println(" getAdminEditBonuceList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
        }
        return customer;
    }

    @Override
    public void updateCustomerList(ModelShop shop) {
//        LOGIN_DATE=?,TASK=?,ACTIVE=? WHERE ID=?
        String sql = Query.UPDATEBONUCELIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        java.util.Date das = shop.getLogginDate();
        try {
            if (das == null) {
                String dat = "01/01/0001";
                DateFormat differentParseDate = new SimpleDateFormat("MM/dd/yyyy");
                das = differentParseDate.parse(dat);
            }
            conn = DbConnect.dbConnect();
//            pre = conn.prepareStatement(sql);
            cs=conn.prepareCall(sql);
            cs.setDate(1,new Date(das.getTime()));
            cs.setString(2,shop.getTasks());
            cs.setInt(3,shop.getActive());
            cs.setLong(4,shop.getPrimaryId());
            cs.execute();
//            pre.setDate(1, new Date(das.getTime()));
//            pre.setString(2, shop.getTasks());
//            pre.setInt(3, shop.getActive());
//            pre.setLong(4, shop.getPrimaryId());
//            pre.execute();
            //System.out.println("Success !!!");
        } catch (Exception e) {
            System.out.println("updateCustomerList");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, null);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void updateProductList(ModelShop shop) {
//        NAME=?,PRICE=?,BONUCE_VALUE=?,IMPORTED_DATE=?,ACTIVE=? WHERE ID=?
        String sql = Query.UPDATEPRODUCTLIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        java.util.Date das = shop.getProductImportDate();

        try {
            if (das == null) {
                String dat = "01/01/0001";
                DateFormat differentParseDate = new SimpleDateFormat("MM/dd/yyyy");
                das = differentParseDate.parse(dat);
            }
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setString(1,shop.getProductName());
            cs.setDouble(2, shop.getProductPrice());
            cs.setDouble(3, shop.getProductBonusValue());
            cs.setDate(4, new Date(das.getTime()));
            cs.setInt(5, shop.getProductActive());
            cs.setLong(6, shop.getProductId());
            cs.setInt(7,shop.getDictId());
            cs.execute();
        } catch (Exception e) {
            logger.error("Errorr : updateProductList  " +e);
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,null);
        }
    }

    @Override
    public void updateCustomerPicture(long id, String filePath) {
        String sql = Query.UPDATEPRODUCTPICTURELIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setString(1,filePath);
            cs.setLong(2,id);
            cs.execute();
//            pre = conn.prepareStatement(sql);
//            pre.setString(1, filePath);
//            pre.setLong(2, id);
//            pre.execute();
            // System.out.println("Success !!!");
        } catch (Exception e) {
            System.out.println("updateCustomerPicture");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, null);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void updateBonuceList(ModelShop shop) {
//        BONUCE_NAME=?,BONUCE_QUONTITY=?,OPEN_BONUCE_DATE=?,ACTIVE=? WHERE PRIMARY_ID=?
        String sql = Query.UPDATEBONUCENAMELIST;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        java.util.Date das = shop.getBonuceOpenDate();

        try {
            if (das == null) {
                String dat = "01/01/0001";
                DateFormat differentParseDate = new SimpleDateFormat("MM/dd/yyyy");
                das = differentParseDate.parse(dat);
            }
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setString(1, shop.getBonuceName());
            cs.setDouble(2, shop.getBonuceQuontity());
            cs.setDate(3,new Date(das.getTime()));
            cs.setInt(4, shop.getBonuceActive());
            cs.setLong(5, shop.getPrimaryId());
            cs.execute();
//            pre = conn.prepareStatement(sql);
//            pre.setString(1, shop.getBonuceName());
//            pre.setDouble(2, shop.getBonuceQuontity());
//            pre.setDate(3, new Date(shop.getBonuceOpenDate().getTime()));
//            pre.setInt(4, shop.getBonuceActive());
//            pre.setLong(5, shop.getPrimaryId());
//            pre.execute();
            //System.out.println("Success !!!");
        } catch (Exception e) {
            System.out.println("updateBonuceList");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, null);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void updateOrderedActive(int active, long id) {
        String sql = Query.UPDATEPRODUCTACTIVE;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setInt(1,active);
            cs.setLong(2,id);
            cs.execute();
        } catch (Exception e) {
            System.out.println("updateBonuceList");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
               logger.error("Error  : updateOrderedActive  "+e);
            }
            DbClose.dbPlClose(conn,cs,null);
        }
    }

    @Override
    public void insertProductPicture(ModelShop shop) {
        String sql3=Query.INSERTPRODUCTANDPICTURENAE;
        Connection conn = null;
        CallableStatement cs=null;
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql3);
            cs.setString(1, shop.getProductName());
            cs.setString(2, shop.getProductPicture());
            cs.setDouble(3, shop.getProductPrice());
            cs.setDouble(4, shop.getProductBonusValue());
            cs.setString(5,shop.getFileName());
            cs.setInt(6,shop.getDictId());
            cs.execute();  //// baza hissede sonuncu id -ni goturdum
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("insertProductPicture");
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
//            DbClose.dbClose(conn, pre, rs);
            try {
                conn.close();
                cs.close();
//                pre1.close();
            } catch (SQLException e) {
                System.out.println("insertProductPicture pre1");
                e.printStackTrace();
            }
        }

    }

    @Override
    public List<ModelShop> customerAdvSercah(ModelShop shop) {
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        java.util.Date sendBeginBaza = shop.getBeginLoginDate();
        java.util.Date sendendBaza = shop.getEndLoginDate();
        Date advBegin = null;
        Date advEnd = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            if (sendBeginBaza != null) {
                advBegin = new Date(sendBeginBaza.getTime());
            }
            if (sendendBaza != null) {
                advEnd = new Date((sendendBaza.getTime()));
            }

            String name = shop.getName();
            if (name.length() == 0) {
                name = null;
            }
            String surname = shop.getSurname();
            if (surname.length() == 0) {
                surname = null;
            }
            String email = shop.getEmail();
            if (email.length() == 0) {
                email = null;
            }
            String tasks = shop.getTasks();
            if (tasks.equalsIgnoreCase("2")) {
                tasks=null;
            }
            int active = shop.getActive();
            System.out.println("advBegin = " + advBegin);
            System.out.println("advEnd = " + advEnd);
            System.out.println("name = " + name);
            System.out.println("surname = " + surname);
            System.out.println("email = " + email);
            System.out.println("tasks = " + tasks);
            System.out.println("active = " + active);

//            if (advBegin == null && advEnd == null && name == null && surname == null && email == null && tasks.equalsIgnoreCase("2") && active == 2) {
//
//
//                conn = DbConnect.dbConnect();
//                if (conn != null) {
//                    pre = conn.prepareStatement(sql);
//                    rs = pre.executeQuery();
//                    while (rs.next()) {
//                        ModelShop model = new ModelShop();
//                        model.setPrimaryId(rs.getLong("ID"));
//                        model.setName(rs.getString("NAME"));
//                        model.setSurname(rs.getString("SURNAME"));
//                        model.setEmail(rs.getString("EMAIL"));
//                        model.setLogginDate(rs.getDate("LOGIN_DATE"));
//                        model.setTasks(rs.getString("TASK"));
//                        model.setActive(rs.getInt("ACTIVE"));
//                        list.add(model);
//                    }
//                } else {
//                    System.out.println("Connection is null!!!   customerAdvSercah");
//                }
//            }
//              else {
//                sql += " WHERE ID>=1 ";
//                if (sendBeginBaza != null) {
////                    to_date('01/01/0001','DD/MM/YYYY')
//                    sql += "AND LOGIN_DATE >= TO_DATE('" + advBegin + "','yyyy/MM/dd')";
//                }
//                if (sendendBaza != null) {
//                    sql += " AND LOGIN_DATE <= TO_DATE('" + advEnd + "','yyyy/MM/dd')";
//                }
//                if (name != null) {
//                    sql += " AND UPPER(NAME) LIKE UPPER('%" + name + "%')";
//                }
//                if (surname != null) {
//                    sql += " AND UPPER(SURNAME) LIKE UPPER('%" + surname + "%')";
//                }
//                if (email != null) {
//                    sql += " AND UPPER(EMAIL) LIKE UPPER('%" + email + "%')";
//                }
//                if (!tasks.equalsIgnoreCase("2")) {
//                    sql += " AND TASK ='" + tasks + "'";
//                }
//                if (active != 2) {
//                    sql += " AND ACTIVE =" + active;
//                }
////                name == null && surname == null && email == null && tasks.equalsIgnoreCase("2") && active == 2
//                System.out.println("Sql : " + sql);
                String sql =Query.ADVSEARCHCUSTOMER;
                conn = DbConnect.dbConnect();
            System.out.println(sql);
                if (conn != null) {
//                    pre = conn.prepareStatement(sql);
                    cs=conn.prepareCall(sql);
                    cs.registerOutParameter(1,OracleTypes.CURSOR);
                    cs.setDate(2,advBegin);
                    cs.setDate(3,advEnd);
                    cs.setString(4,name);
                    cs.setString(5,surname);
                    cs.setString(6,email);
                    cs.setString(7,tasks);
                    cs.setLong(8,active);
                    cs.execute();
                    rs= (ResultSet) cs.getObject(1);
                    while (rs.next()) {
                        ModelShop model = new ModelShop();
                        model.setPrimaryId(rs.getLong("ID"));
                        model.setName(rs.getString("NAME"));
                        model.setSurname(rs.getString("SURNAME"));
                        model.setEmail(rs.getString("EMAIL"));
                        model.setLogginDate(rs.getDate("LOGIN_DATE"));
                        model.setTasks(rs.getString("TASK"));
                        model.setActive(rs.getInt("ACTIVE"));
                        list.add(model);

                    }
                } else {
                    System.out.println("Connection is null!!!   customerAdvSercah");
                }
//
//
//            }
        } catch (Exception e) {
            System.out.println("customerAdvSercah");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
        }
        return list;
    }

    @Override
    public List<ModelShop> orderedAdvSercah(ModelShop shop) {
        Connection conn = null;
        CallableStatement cs=null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        java.util.Date parsBeginOrderdDate = shop.getOrderBeginDate();
        java.util.Date parsEndOrderdDate = shop.getOrderEndDate();
        java.util.Date parsBeginDeliver = shop.getDeliveryBeginDate();
        java.util.Date parsEndDeliver = shop.getDeliveryEndDate();
        Date bazaBeginOrderdDate = null;
        Date bazaEndOrderdDate = null;
        Date bazaBeginDeliver = null;
        Date bazaEndDeliver = null;
        if (parsBeginOrderdDate != null) {
            bazaBeginOrderdDate = new Date(parsBeginOrderdDate.getTime());
        }
        if (parsEndOrderdDate != null) {
            bazaEndOrderdDate = new Date(parsEndOrderdDate.getTime());
        }
        if (parsBeginDeliver != null) {
            bazaBeginDeliver = new Date(parsBeginDeliver.getTime());
        }
        if (parsEndDeliver != null) {
            bazaEndDeliver = new Date(parsEndDeliver.getTime());
        }
        String name = shop.getName();
        if (name.length() == 0) {
            name = null;
        }
        String surname = shop.getSurname();
        if (surname.length() == 0) {
            surname = null;
        }
        String email = shop.getEmail();
        if (email.length() == 0) {
            email = null;
        }
        String mobile = shop.getMobile();
        if (mobile.length() == 0) {
            mobile = null;
        }
        String address = shop.getAddress();
        if (address.length() == 0) {
            address = null;
        }
        String mobile2 = shop.getMobile2();
        if (mobile2.length() == 0) {
            mobile2 = null;
        }
        String productName = shop.getProductName();
        int bazaMaxOne = shop.getMaxCountOrdered();
        int bazaMinTwo = shop.getMinCountOrdered();
        int active = shop.getActive();


        try{

                String sql =Query.ADVSEARCHORDEREDLIST;
                conn = DbConnect.dbConnect();
                cs=conn.prepareCall(sql);
                cs.registerOutParameter(1,OracleTypes.CURSOR);
                cs.setDate(2,bazaBeginOrderdDate);
                cs.setDate(3,bazaEndOrderdDate);
                cs.setDate(4,bazaBeginDeliver);
                cs.setDate(5,bazaEndDeliver);
                cs.setString(6,name);
                cs.setString(7,surname);
                cs.setString(8,email);
                cs.setString(9,address);
                cs.setString(10,mobile);
                cs.setString(11,mobile2);
                cs.setString(12,productName);
                cs.setInt(13,bazaMinTwo);
                cs.setInt(14,bazaMaxOne);
                cs.setInt(15,active);
                cs.execute();
                rs= (ResultSet) cs.getObject(1);
                while (rs.next()) {
                    ModelShop model = new ModelShop();
                    model.setProductId(rs.getLong("CH_ID"));
                    model.setPrimaryId(rs.getLong("LTP_ID"));
                    model.setName(rs.getString("LTP_NAME"));
                    model.setSurname(rs.getString("LTP_SURNAME"));
                    model.setEmail(rs.getString("LTP_EMAIL"));
                    model.setAddress(rs.getString("PT_ADDRESS"));
                    model.setOrderDate(rs.getDate("PT_DATE"));
                    model.setLastDateOfDelivery(rs.getDate("PT_DELDATE"));
                    model.setMobile(rs.getString("PT_MOBILE"));
                    model.setMobile2(rs.getString("PT_MOBILE2"));
                    model.setProductName(rs.getString("POS_NAME"));
                    model.setPrCount(rs.getInt("RC_COUNT"));
                    model.setRcActive(rs.getInt("RC_ACTIVE"));
                    list.add(model);
                }
        } catch (Exception e) {
            System.out.println("orderedAdvSercah");
            logger.error("Error : orderedAdvSercah  "+e);
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }

        return list;
    }

    @Override
    public List<ModelShop> productAdvSercah(ModelShop shop) {
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
//        String sql = "SELECT P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE FROM PRODUCTS_ON_SALE P ";
        String sql=Query.ADVSEARCHPRODUCTLIST;
        List<ModelShop> list = new ArrayList<ModelShop>();
        String name = shop.getProductName();
        if (name.length() == 0) {
            name = null;
        }
        int active = shop.getProductActive();
        double bazaMinPrice = shop.getBeginBroductPrice();
        double bazaEndPrice = shop.getEndProductPrice();
        double bonValueMin = shop.getBeginProductBonusValue();
        double bonValuMax = shop.getEndProductBonusValue();
        java.util.Date sendMinBaza = shop.getBeginProductImportDate();
        java.util.Date sendMaxBaza = shop.getEndProductImportDate();
        Date impMinDate = null;
        Date impMaxDate = null;
        if (sendMinBaza != null) {
            impMinDate = new Date(sendMinBaza.getTime());
        }
        if (sendMaxBaza != null) {
            impMaxDate = new Date(sendMaxBaza.getTime());
        }

        try {
//            if (name == null && active == 2 && bazaMinPrice == 0 && bazaEndPrice == 0 && bonValueMin == 0 && bonValuMax == 0 && impMinDate == null && impMaxDate == null) {
//
//
//                conn = DbConnect.dbConnect();
//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
//                conn = DbConnect.dbConnect();
//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
//                while (rs.next()) {
//                    ModelShop model = new ModelShop();
//                    model.setProductId(rs.getLong("ID"));
//                    model.setProductName(rs.getString("NAME"));
//                    model.setProductPicture(rs.getString("PICTURE"));
//                    model.setProductPrice(rs.getDouble("PRICE"));
//                    model.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
//                    model.setProductImportDate(rs.getDate("IMPORTED_DATE"));
//                    model.setProductActive(rs.getInt("ACTIVE"));
//                    list.add(model);
//                }
//            }
// else {
//                sql += " WHERE ID>=1 ";
//                if (name != null) {
//                    sql += " AND UPPER(NAME) LIKE UPPER('%" + name + "%') ";
//                }
//                if (impMinDate != null) {
//
////                    System.out.println(sql);
//                    sql += " AND IMPORTED_DATE >= TO_DATE('" + impMinDate + "','yyyy/MM/dd') ";
//                }
//                if (impMaxDate != null) {
//                    sql += " AND IMPORTED_DATE <= TO_DATE('" + impMaxDate + "','yyyy/MM/dd') ";
//                }
//
//                if (bazaMinPrice != 0) {
//                    sql += " AND PRICE >=" + bazaMinPrice;
//                }
//                if (bazaEndPrice != 0) {
//                    sql += " AND PRICE <=" + bazaEndPrice;
//                }
//                if (bonValueMin != 0) {
//                    sql += " AND BONUCE_VALUE >=" + bonValueMin;
//                }
//                if (bonValuMax != 0) {
//                    sql += " AND BONUCE_VALUE <=" + bonValuMax;
//                }
//                if (active != 2) {
//                    sql += " AND ACTIVE =" + active;
//                }
                conn = DbConnect.dbConnect();
            if (conn!=null){
                cs=conn.prepareCall(sql);
                cs.registerOutParameter(1,OracleTypes.CURSOR);
                cs.setString(2,name);
                cs.setDate(3,impMinDate);
                cs.setDate(4,impMaxDate);
                cs.setDouble(5,bazaMinPrice);
                cs.setDouble(6,bazaEndPrice);
                cs.setDouble(7,bonValueMin);
                cs.setDouble(8,bonValuMax);
                cs.setInt(9,active);
                cs.execute();
                rs= (ResultSet) cs.getObject(1);
//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
//                conn = DbConnect.dbConnect();
//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
                while (rs.next()) {
                    ModelShop model = new ModelShop();
                    model.setProductId(rs.getLong("ID"));
                    model.setProductName(rs.getString("NAME"));
                    model.setProductPicture(rs.getString("PICTURE"));
                    model.setProductPrice(rs.getDouble("PRICE"));
                    model.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
                    model.setProductImportDate(rs.getDate("IMPORTED_DATE"));
                    model.setProductActive(rs.getInt("ACTIVE"));
                    list.add(model);
                }
            }
            else{
                System.out.println("Connection is null !!");
            }

//            }
//            System.out.println(sql);
        } catch (Exception e) {
            System.out.println("productAdvSercah");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<ModelShop> bonuceAdvSercah(ModelShop shop) {
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
//        String sql = "SELECT B.PRIMARY_ID,L.NAME,L.SURNAME,L.EMAIL,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE FROM LOGIN_TABLE_PRIMARY L\n" +
//                "LEFT JOIN BONUS_TABLE B ON L.ID=B.PRIMARY_ID ";
        String sql="{?=call C##BIGDATA.ADVSEARCHPACKAGE.ADVBONUCELIST(?,?,?,?,?,?,?,?,?)}";
        List<ModelShop> list = new ArrayList<ModelShop>();
        String name = shop.getName();
        if (name.length() == 0) {
            name = null;
        }
        String surname = shop.getSurname();
        if (surname.length() == 0) {
            surname = null;
        }
        String email = shop.getEmail();
        if (email.length() == 0) {
            email = null;
        }
        String bonName = shop.getBonuceName();
        if (bonName.length() == 0) {
            bonName = null;
        }

        int active = shop.getBonuceActive();
        double bazaMinQuontity = shop.getBonucQuontityMin();
        double bazaMaxQuontity = shop.getBonucQuontityMax();
        java.util.Date sendMinBaza = shop.getBonucBeginOpenDate();
        java.util.Date sendMaxBaza = shop.getBonucEndOpenDate();
        Date impMinDate = null;
        Date impMaxDate = null;
        if (sendMinBaza != null) {
            impMinDate = new Date(sendMinBaza.getTime());
        }
        if (sendMaxBaza != null) {
            impMaxDate = new Date(sendMaxBaza.getTime());
        }

        try {
//            if (name == null && active == 2 && surname == null && email == null && bonName == null && bazaMaxQuontity == 0 && bazaMinQuontity == 0 && impMinDate == null && impMaxDate == null) {
//
//                conn = DbConnect.dbConnect();
//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
//                while (rs.next()) {
//                    ModelShop model = new ModelShop();
//                    model.setPrimaryId(rs.getLong("PRIMARY_ID"));
//                    model.setName(rs.getString("NAME"));
//                    model.setSurname(rs.getString("SURNAME"));
//                    model.setEmail(rs.getString("EMAIL"));
//                    model.setBonuceName(rs.getString("BONUCE_NAME"));
//                    model.setBonuceQuontity(rs.getDouble("BONUCE_QUONTITY"));
//                    model.setBonuceOpenDate(rs.getDate("OPEN_BONUCE_DATE"));
//                    model.setBonuceActive(rs.getInt("ACTIVE"));
//                    list.add(model);
//                }
//            }
//            else {
//                sql += " WHERE B.PRIMARY_ID>=1 ";
//                if (name != null) {
//                    sql += " AND UPPER (L.NAME) LIKE UPPER ('%" + name + "%') ";
//                }
//                if (surname != null) {
//                    sql += " AND UPPER (L.SURNAME) LIKE UPPER ('%" + surname + "%') ";
//                }
//                if (email != null) {
//                    sql += " AND UPPER (L.EMAIL) LIKE UPPER ('%" + email + "%') ";
//                }
//                if (bonName != null) {
//                    sql += " AND UPPER (B.BONUCE_NAME) LIKE UPPER ('%" + bonName + "%') ";
//                }
//                if (impMinDate != null) {
//
////                    System.out.println(sql);
//                    sql += " AND B.OPEN_BONUCE_DATE >= TO_DATE('" + impMinDate + "','yyyy/MM/dd') ";
//                }
//                if (impMaxDate != null) {
//
////                    System.out.println(sql);
//                    sql += " AND B.OPEN_BONUCE_DATE <= TO_DATE('" + impMaxDate + "','yyyy/MM/dd') ";
//                }
//                if (bazaMinQuontity != 0) {
//
////                    System.out.println(sql);
//                    sql += " AND B.BONUCE_QUONTITY >= " + bazaMinQuontity;
//                }
//                if (bazaMaxQuontity != 0) {
//
////                    System.out.println(sql);
//                    sql += " AND B.BONUCE_QUONTITY <= " + bazaMaxQuontity;
//                }
//                if (active != 2) {
//                    sql += " AND B.ACTIVE=" + active;
//                }

                conn = DbConnect.dbConnect();
                cs=conn.prepareCall(sql);
                cs.registerOutParameter(1,OracleTypes.CURSOR);
                cs.setString(2,name);
                cs.setString(3,surname);
                cs.setString(4,email);
                cs.setString(5,bonName);
                cs.setDouble(6,bazaMinQuontity);
                cs.setDouble(7,bazaMaxQuontity);
                cs.setDate(8,impMinDate);
                cs.setDate(9,impMaxDate);
                cs.setInt(10,active);
                cs.execute();
                rs= (ResultSet) cs.getObject(1);

//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
                while (rs.next()) {
                    ModelShop model = new ModelShop();
                    model.setPrimaryId(rs.getLong("PRIMARY_ID"));
                    model.setName(rs.getString("NAME"));
                    model.setSurname(rs.getString("SURNAME"));
                    model.setEmail(rs.getString("EMAIL"));
                    model.setBonuceName(rs.getString("BONUCE_NAME"));
                    model.setBonuceQuontity(rs.getDouble("BONUCE_QUONTITY"));
                    model.setBonuceOpenDate(rs.getDate("OPEN_BONUCE_DATE"));
                    model.setBonuceActive(rs.getInt("ACTIVE"));
                    list.add(model);
                }
//                System.out.println(sql);
//            }
            System.out.println(sql);
        } catch (Exception e) {
            System.out.println("bonuceAdvSercah");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public void sendCustomerMail(ModelShop shop) {
        final String name = "fogotpass2@gmail.com";
        final String pss = "rkeoidwkegcbaxlw"; // app password
        String sql = Query.SENDCUSTOMERMAIL;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();

        String subject = shop.getSubject();
        String text = shop.getTextAre();
        String email = null;
        String filePath = shop.getFilePath();
        String filName = shop.getFileName();
        long id = shop.getPrimaryId();

        try {
            conn = DbConnect.dbConnect();
            if (conn != null) {
//                pre = conn.prepareStatement(sql);
                cs=conn.prepareCall(sql);
                cs.registerOutParameter(1,OracleTypes.CURSOR);
                cs.setLong(2,id);
                cs.execute();
                rs= (ResultSet) cs.getObject(1);
//                pre.setLong(1, id);
//                rs = pre.executeQuery();
                if (rs.next()) {
                    email = rs.getString("EMAIL");
                    if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")) {
                        Properties pro = new Properties();
                        pro.put("mail.smtp.ssl.trust", "smtp.gmail.com");
                        pro.put("mail.smtp.auth", "true");
                        pro.put("mail.smtp.starttls.enable", "true");
                        pro.put("mail.smtp.host", "smtp.gmail.com");
                        pro.put("mail.smtp.port", "587");
                        Session session = Session.getInstance(pro, new Authenticator() {
                            @Override
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(name, pss);
                            }

                        });


                        Message message = new MimeMessage(session);
                        message.setFrom(new InternetAddress("tt@gmail.com"));

                        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                        message.setSubject(subject);
                        message.setText(text);
                        if (filePath != null && filName != null && !filName.contains("?") && !filName.contains("\\") && !filName.contains("/") && !filName.contains("*") && !filName.contains("\"") && !filName.contains("<") && !filName.contains(">") && !filName.contains("|")) {
                            MimeBodyPart messagebody = new MimeBodyPart();
                            DataSource data = new FileDataSource(filePath);
                            messagebody.setDataHandler(new DataHandler(data));

                            messagebody.setFileName(filName);

                            Multipart multi = new MimeMultipart();
                            multi.addBodyPart(messagebody);
                            message.setContent(multi);

                        }
                        Transport.send(message);
                        System.out.println("Message sent");
                    }
                }
            }


//            System.out.println("email =   "+email);

        } catch (Exception e) {
            System.out.println("sendCustomerMail");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void sendAllCustomerMail(ModelShop shop) {
        final String name = "fogotpass2@gmail.com";
        final String pss = "rkeoidwkegcbaxlw"; // app password
        String sql = Query.SENDALLCUSTOMERMAIL;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        String subject = shop.getSubject();
        String text = shop.getTextAre();
        String email = null;
        String filePath = shop.getFilePath();
        String filName = shop.getFileName();

        try {
            conn = DbConnect.dbConnect();
            if (conn != null) {

//                pre = conn.prepareStatement(sql);
//                rs = pre.executeQuery();
                cs=conn.prepareCall(sql);
                cs.registerOutParameter(1,OracleTypes.CURSOR);
                cs.execute();
                rs= (ResultSet) cs.getObject(1);
                while (rs.next()) {
                    email = rs.getString("EMAIL");


                    if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")) {
                        System.out.println("email =   " + email);
                        Properties pro = new Properties();
                        pro.put("mail.smtp.ssl.trust", "smtp.gmail.com");
                        pro.put("mail.smtp.auth", "true");
                        pro.put("mail.smtp.starttls.enable", "true");
                        pro.put("mail.smtp.host", "smtp.gmail.com");
                        pro.put("mail.smtp.port", "587");
                        Session session = Session.getInstance(pro, new Authenticator() {
                            @Override
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(name, pss);
                            }

                        });

                        Message message = new MimeMessage(session);
                        message.setFrom(new InternetAddress("tt@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                        message.setSubject(subject);
                        message.setText(text);
                        if (filePath != null && filName != null && !filName.contains("?") && !filName.contains("\\") && !filName.contains("/") && !filName.contains("*") && !filName.contains("\"") && !filName.contains("<") && !filName.contains(">") && !filName.contains("|")) {
                            MimeBodyPart messagebody = new MimeBodyPart();
                            DataSource data = new FileDataSource(filePath);
                            messagebody.setDataHandler(new DataHandler(data));

                            messagebody.setFileName(filName);

                            Multipart multi = new MimeMultipart();
                            multi.addBodyPart(messagebody);
                            message.setContent(multi);

                        }
                        Transport.send(message);
                        // System.out.println("Message sent");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("sendCustomerMail");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public synchronized List<ModelShop> trSendMail() {

        List<ModelShop> list = new ArrayList<ModelShop>();

            String sql = Query.SENDALLCUSTOMERMAIL;
            Connection conn = null;
            PreparedStatement pre = null;
            CallableStatement cs=null;
            ResultSet rs = null;


            try {
                conn = DbConnect.dbConnect();
                if (conn != null) {
                    cs=conn.prepareCall(sql);
//                    pre = conn.prepareStatement(sql);
                    cs.registerOutParameter(1,OracleTypes.CURSOR);
                    cs.execute();
                    rs= (ResultSet) cs.getObject(1);
//                    rs = pre.executeQuery();
                    while (rs.next()) {
                        ModelShop shop = new ModelShop();
                        shop.setEmail(rs.getString("EMAIL"));
                        shop.setPrimaryId(rs.getLong("ID"));
                        list.add(shop);
//                    bigList.add(shop);
                    }
                }

            } catch (Exception e) {
                System.out.println("trSendMail");
                e.printStackTrace();
            } finally {
                DbClose.dbClose(conn, pre, rs);
            }
//        System.out.println("birinci ="+System.currentTimeMillis());
        return list;
    }

    @Override
    public synchronized void trSendMailUpdateActive(long id) {

            String sql = Query.UPDATEEMAILACTIVE;
            Connection conn = null;

            PreparedStatement pre = null;
            ResultSet rs = null;
            try {
                conn = DbConnect.dbConnect();

                if (conn != null) {

                    pre = conn.prepareStatement(sql);
                    pre.setLong(1, id);
                    pre.execute();
                }

            } catch (Exception e) {
                System.out.println("trSendMailUpdateActive");
                e.printStackTrace();
            } finally {
                try {
                    conn.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                DbClose.dbClose(conn, pre, rs);
            }
    }

    @Override
    public synchronized List<ModelShop> trOldUsersSendMail() {

        List<ModelShop> list = new ArrayList<ModelShop>();

            String sql = Query.SENDOLDCUSTOMERMAIL;
            Connection conn = null;
            PreparedStatement pre = null;
            CallableStatement cs=null;
            ResultSet rs = null;
            try {
                conn = DbConnect.dbConnect();
                if (conn != null) {
                    cs=conn.prepareCall(sql);
                    cs.registerOutParameter(1,OracleTypes.CURSOR);
                    cs.execute();
//                    pre = conn.prepareStatement(sql);
//                    rs = pre.executeQuery();
                    rs= (ResultSet) cs.getObject(1);
                    while (rs.next()) {
                        ModelShop shop = new ModelShop();
                        shop.setEmail(rs.getString("EMAIL"));
                        shop.setPrimaryId(rs.getLong("ID"));
                        list.add(shop);
                    }
                }

            } catch (Exception e) {
                System.out.println("trSendMail");
                e.printStackTrace();
            } finally {
                DbClose.dbClose(conn, pre, rs);
                try {
                    cs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
//        System.out.println("birinci ="+System.currentTimeMillis());



        return list;
    }

    @Override
    public synchronized void trOldMailUpdateActive(long id) {

            String sql = Query.UPDATEOLDEMAILACTIVE;
            Connection conn = null;

            PreparedStatement pre = null;
            ResultSet rs = null;
            CallableStatement cs=null;
            try {
                conn = DbConnect.dbConnect();

                if (conn != null) {
                    cs=conn.prepareCall(sql);
                    cs.setLong(1,id);
                    cs.execute();
//                    System.out.println(conn);
//                    pre = conn.prepareStatement(sql);
//                    pre.setLong(1, id);
//                    pre.execute();
                }

            } catch (Exception e) {
                System.out.println("trOldMailUpdateActive");
                e.printStackTrace();
            } finally {
                try {
                    conn.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                DbClose.dbClose(conn, pre, rs);
                try {
                    cs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
    }

    @Override
    public synchronized List<ModelShop> trOldTwoMonthUsersSendMail() {

        List<ModelShop> list = new ArrayList<ModelShop>();
            String sql = Query.SENDOLDTWOMONTHCUSTOMERMAIL;
            Connection conn = null;
            PreparedStatement pre = null;
        CallableStatement cs=null;
            ResultSet rs = null;
            try {
                conn = DbConnect.dbConnect();
                if (conn != null) {
                    cs=conn.prepareCall(sql);
                    cs.registerOutParameter(1,OracleTypes.CURSOR);
                    cs.execute();
                    rs= (ResultSet) cs.getObject(1);
//                    pre = conn.prepareStatement(sql);
//                    rs = pre.executeQuery();
                    while (rs.next()) {
                        ModelShop shop = new ModelShop();
                        shop.setEmail(rs.getString("EMAIL"));
                        shop.setPrimaryId(rs.getLong("ID"));
                        list.add(shop);
                    }
                }

            } catch (Exception e) {
                System.out.println("trSendMail");
                e.printStackTrace();
            } finally {
                DbClose.dbClose(conn, pre, rs);
                try {
                    cs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
//        System.out.println("birinci ="+System.currentTimeMillis());



        return list;
    }

    @Override
    public synchronized void trOldTwoMonthMailUpdateActive(long id) {

            String sql = Query.UPDATEOLDTWOMONTHEMAILACTIVE;
            Connection conn = null;

            PreparedStatement pre = null;
            ResultSet rs = null;
            CallableStatement cs=null;
            try {
                conn = DbConnect.dbConnect();

                if (conn != null) {

                    cs=conn.prepareCall(sql);
                    cs.setLong(1,id);
                    cs.execute();
//                    pre = conn.prepareStatement(sql);
//                    pre.setLong(1, id);
//                    pre.execute();
                }

            } catch (Exception e) {
                System.out.println("trOldMailUpdateActive");
                e.printStackTrace();
            } finally {
                try {
                    conn.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                DbClose.dbClose(conn, pre, rs);
                try {
                    cs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }


    }

    @Override
    public List<ModelShop> customerGroupBy() {
        String sql = Query.CUSTOMERSGROUPBY;
        System.out.println(sql);
        Connection conn = null;
        //PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setPrimaryId(rs.getLong("ID"));
                model.setName(rs.getString("NAME"));
                model.setSurname(rs.getString("SURNAME"));
                model.setEmail(rs.getString("EMAIL"));
                model.setLogginDate(rs.getDate("LOGIN_DATE"));
                model.setTasks(rs.getString("TASK"));
                model.setActive(rs.getInt("ACTIVE"));

                list.add(model);

            }
        } catch (Exception e) {
            System.out.println(" getAdminShoppingList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, null, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }


        }
        return list;
    }

    @Override
    public List<ModelShop> orderedGroupBy() {
//        L.NAME,L.SURNAME,L.EMAIL,P.ADDRESS,P.ORDER_DATE,P.LAST_DATE_OF_DELIVERY,P.MOBILE,P.MOBILE2,R.ONE,R.TWO,R.THREE,R.FOUR,R.FIVE,R.SIX,R.SEVEN
        String sql = Query.ORDEREDSGROUPBY;
        Connection conn = null;
//        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs=(ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setProductId(rs.getLong("CH_ID"));
                model.setPrimaryId(rs.getLong("LTP_ID"));
                model.setName(rs.getString("LTP_NAME"));
                model.setSurname(rs.getString("LTP_SURNAME"));
                model.setEmail(rs.getString("LTP_EMAIL"));
                model.setAddress(rs.getString("PT_ADDRESS"));
                model.setOrderDate(rs.getDate("PT_DATE"));
                model.setLastDateOfDelivery(rs.getDate("PT_DELDATE"));
                model.setMobile(rs.getString("PT_MOBILE"));
                model.setMobile2(rs.getString("PT_MOBILE2"));
                model.setProductName(rs.getString("POS_NAME"));
                model.setPrCount(rs.getInt("RC_COUNT"));
                model.setRcActive(rs.getInt("RC_ACTIVE"));
                list.add(model);
//                conn.commit();
            }
        } catch (Exception e) {
           logger.error("Error : orderedGroupBy  "+e);
        } finally {
           DbClose.dbPlClose(conn,cs,rs);
        }
        return list;
    }

    @Override
    public List<ModelShop> productGroupBy() {
//        P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE
        String sql = Query.PRODUCTGROUPBY;
        Connection conn = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setProductId(rs.getLong("ID"));
                model.setProductName(rs.getString("NAME"));
                model.setProductPicture(rs.getString("PICTURE"));
                model.setProductPrice(rs.getDouble("PRICE"));
                model.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
                model.setProductImportDate(rs.getDate("IMPORTED_DATE"));
                model.setProductActive(rs.getInt("ACTIVE"));
                list.add(model);
            }
        } catch (Exception e) {
            System.out.println(" getAdminProductList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, null, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<ModelShop> bonuceGroupBy() {
        //        L.ID,L.NAME,L.SURNAME,L.EMAIL,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE
        String sql = Query.BONUCESGROUPBY;
        Connection conn = null;
        PreparedStatement pre = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);

            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setPrimaryId(rs.getLong("PRIMARY_ID"));
                model.setName(rs.getString("NAME"));
                model.setSurname(rs.getString("SURNAME"));
                model.setEmail(rs.getString("EMAIL"));
                model.setBonuceName(rs.getString("BONUCE_NAME"));
                model.setBonuceQuontity(rs.getDouble("BONUCE_QUONTITY"));
                model.setBonuceOpenDate(rs.getDate("OPEN_BONUCE_DATE"));
                model.setBonuceActive(rs.getInt("ACTIVE"));
                list.add(model);
            }
        } catch (Exception e) {

            System.out.println(" getAdminProductList ");
            e.printStackTrace();
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbClose(conn, pre, rs);
            try {
                cs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;

    }

    @Override
    public List<ModelShop> orderedDeliveryDateGroupBy() {
//        L.NAME,L.SURNAME,L.EMAIL,P.ADDRESS,P.ORDER_DATE,P.LAST_DATE_OF_DELIVERY,P.MOBILE,P.MOBILE2,R.ONE,R.TWO,R.THREE,R.FOUR,R.FIVE,R.SIX,R.SEVEN
        String sql = Query.ORDEREDDELIVERYDATESGROUPBY;
        Connection conn = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        try {
            conn = DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs=(ResultSet) cs.getObject(1);
            while (rs.next()) {
                ModelShop model = new ModelShop();
                model.setProductId(rs.getLong("CH_ID"));
                model.setPrimaryId(rs.getLong("LTP_ID"));
                model.setName(rs.getString("LTP_NAME"));
                model.setSurname(rs.getString("LTP_SURNAME"));
                model.setEmail(rs.getString("LTP_EMAIL"));
                model.setAddress(rs.getString("PT_ADDRESS"));
                model.setOrderDate(rs.getDate("PT_DATE"));
                model.setLastDateOfDelivery(rs.getDate("PT_DELDATE"));
                model.setMobile(rs.getString("PT_MOBILE"));
                model.setMobile2(rs.getString("PT_MOBILE2"));
                model.setProductName(rs.getString("POS_NAME"));
                model.setPrCount(rs.getInt("RC_COUNT"));
                model.setRcActive(rs.getInt("RC_ACTIVE"));
                list.add(model);
//                conn.commit();
            }
        } catch (Exception e) {
           logger.error("Error : orderedDeliveryDateGroupBy");
        } finally {
            try {
                conn.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn, cs, rs);
        }
        return list;
    }

    @Override
    public List<ModelShop> insertCheckBox() {
        String sql=Query.INSERTCHECKBOX;
        Connection conn = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();

        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()){
                ModelShop model=new ModelShop();
                model.setDictId(rs.getInt("ID"));
                model.setDictName(rs.getString("DICT_NAME"));
                model.setDictValue(rs.getString("DICT_VALUE"));
                list.add(model);
            }

        } catch (SQLException e) {
            logger.error("Error : insertCheckBox "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }

        return list;
    }

    @Override
    public List<ModelShop> chartAction() {
        String sql2=Query.chartAction;
        String sql=Query.chartName;
        Connection conn = null;
        CallableStatement cs=null;
        ResultSet rs = null;
        List<ModelShop> list = new ArrayList<ModelShop>();
        ModelShop model;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (conn!=null){
                while (rs.next()){
                     model=new ModelShop();

                    model.setChartMonth(rs.getString("AY"));
                    model.setPrCount(rs.getInt("CEM"));
                    list.add(model);
                }
//                cs=conn.prepareCall(sql2);
//                cs.registerOutParameter(1,OracleTypes.CURSOR);
//                cs.execute();
//                rs= (ResultSet) cs.getObject(1);
//                while (rs.next()){
//                    model=new ModelShop();
//                    model.setPrCount(rs.getInt("CEM"));
//                    model.setChartMonth(rs.getString("AY"));
//                    list.add(model);
//                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            logger.error("Error : chartAction "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }

        return list;
    }
}
