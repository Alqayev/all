package az.pro.shopping.dao.user;

import az.pro.shopping.cnt.DbConnect;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.model.user.UserModel;
import az.pro.shopping.util.DbClose;
import az.pro.shopping.util.Query;
import az.pro.shopping.util.user.UserQuery;
import oracle.jdbc.OracleTypes;
import org.apache.catalina.User;
import org.apache.log4j.Logger;

import javax.jws.soap.SOAPBinding;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Created by TALEH on 06.07.2016.
 */
public class UserDaoImpl implements UserDao{
    public static Logger logger=Logger.getLogger(UserDaoImpl.class);
    @Override
    public void registrUser(UserModel user) {
        String sql= UserQuery.ADDUSER;
        Connection conn=null;
        CallableStatement cs=null;
        try {
            conn= DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setString(1,user.getUserName());
            cs.setString(2,user.getUserSurname());
            cs.setString(3,user.getUserEmail());
            cs.setString(4,user.getUserPass());
            cs.execute();
            logger.fatal("Succes insert value : registrUser");
        } catch (Exception e) {
            logger.error("Error : registrUser  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,null);

        }
    }

    @Override
    public String checkEmail(String email) {
        String sql=UserQuery.CHECKEMAIL;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        String check_Email=null;
        try {
            conn= DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setString(2,email);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (rs.next()){
                check_Email=rs.getString("EMAIL");
            }else {
                check_Email=null;
            }
            logger.fatal("Succes check value : registrUser");
        } catch (Exception e) {
            logger.error("Error : checkEmail  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                logger.error("Error : checkEmail "+e);
            }
            DbClose.dbPlClose(conn,cs,rs);

        }
        return check_Email;
    }

    @Override
    public UserModel checkLogin(String email, String password) {
        String sql=UserQuery.CHECKLOGIN;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        UserModel user=new UserModel();
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setString(2,email);
            cs.setString(3,password);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (rs.next()){
                user.setUserName(rs.getString("NAME"));
                user.setUserSurname(rs.getString("SURNAME"));
                user.setPrimaryId(rs.getLong("ID"));
                user.setUserEmail(rs.getString("EMAIL"));
                user.setUserLoginDate(rs.getDate("LOGIN_DATE"));
                user.setUserTask(rs.getString("TASK"));
            }else{
                user=null;
            }
        } catch (Exception e) {
            logger.error("Error : checkLogin  " +e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return user;
    }

    @Override
    public long byId(String email, String cor) {
        String sql=UserQuery.BYIDFORBON;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        long id=0;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setString(2,email);
            cs.setString(3,cor);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (rs.next()){
                id=rs.getLong("ID");
            }
        } catch (Exception e) {
            logger.error("Error : byId  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return id;
    }

    @Override
    public void registrBonuce(UserModel user) {
        String sql=UserQuery.ADDBONUCE;
        Connection conn=null;
        CallableStatement cs=null;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setLong(1,user.getPrimaryId());
            cs.setString(2,user.getBonuceName());
            cs.setString(3,user.getBonucePass());
            cs.execute();
            logger.fatal("Succes insert bonuce !!!");
        } catch (Exception e) {
           logger.error("Error : registrBonuce "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,null);
        }
    }

    @Override
    public long byIdForEmail(String email) {
        String sql=UserQuery.BYEMAIL;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        long id=0;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setString(2,email);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (rs.next()){
                id=rs.getLong("ID");
            }
        } catch (Exception e) {
            logger.error("Error  :   byIdForEmail  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return id;
    }

    @Override
    public void changePassword(long id, String updatePass,String email,String newPassword) {
        String sql=UserQuery.CHANGEPASSWORD;
        final String name = "fogotpass2@gmail.com";
        final String pss = "rkeoidwkegcbaxlw"; // app password
        Connection conn=null;
        CallableStatement cs=null;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setLong(1,id);
            cs.setString(2,updatePass);
            cs.execute();
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
                message.setSubject("New password");
                message.setText(newPassword);
                Transport.send(message);
            }
            logger.fatal("Success send mail password");
        } catch (Exception e) {
            logger.error("Error  :   changePassword  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,null);
        }
    }

    @Override
    public List<UserModel> getProductInfo() {
        String sql=UserQuery.GETPRODUCTLIST;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        List<UserModel>list=new ArrayList<UserModel>();
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()){
             UserModel user=new UserModel();
             user.setProducId(rs.getLong("ID"));
             user.setProductName(rs.getString("NAME"));
             user.setProuctPrice(rs.getDouble("PRICE"));
             user.setProductBonuceValue(rs.getDouble("BONUCE_VALUE"));
             user.setProductImpDate(rs.getDate("IMPORTED_DATE"));
             user.setProductPicture(rs.getString("PRODUCT_PATH"));
             list.add(user);

            }
        } catch (Exception e) {
           logger.error("Error : getProductInfo  "+e);
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
    public UserModel orderedInsert(UserModel user) {
        String sql=UserQuery.INSERTORDERED;
        Connection conn=null;
        CallableStatement cs=null;
        java.util.Date dat=user.getLastDateOfDelivery();
        Date bazadate=null;
        ResultSet rs=null;
        UserModel userBack=new UserModel();
        if (dat!=null){
            bazadate=new Date(dat.getTime());
        }
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setLong(1,user.getPrimaryId());
            cs.setString(2,user.getUserAddress());
            cs.setDate(3,bazadate);
            cs.setString(4,user.getUserEmail());
            cs.setString(5,user.getUserMobil());
            cs.setString(6,user.getUserAdditionalMob());
            cs.setDouble(7,user.getProuctPrice());
            cs.setDouble(8,user.getProductBonuceValue());
            cs.setLong(9,user.getProducId());
            cs.setInt(10,user.getOdrCount());
            cs.registerOutParameter(11,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(11);
            if (rs.next()){
                userBack.setPrimaryId(rs.getLong("PRIMARY_ID"));
                userBack.setUserAddress(rs.getString("ADDRESS"));
                userBack.setLastDateOfDelivery(rs.getDate("LAST_DATE_OF_DELIVERY"));
                userBack.setUserMobil(rs.getString("MOBILE"));
                userBack.setUserAdditionalMob(rs.getString("MOBILE2"));
            }else {

                userBack=null;
            }
            logger.fatal("Success insert ordered !!!");
        } catch (Exception e) {
           logger.error("Error  : orderedInsert  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return userBack;

    }

    @Override
    public String chBonId(long id) {
        String sql="SELECT BONUCE_NAME FROM BONUS_TABLE WHERE PRIMARY_ID="+id;
        Connection conn=null;
        PreparedStatement pre=null;
        ResultSet rs=null;
        String name=null;
        try {
            conn=DbConnect.dbConnect();
            pre=conn.prepareStatement(sql);
            rs=pre.executeQuery();
            if (rs.next()){
                name=rs.getString("BONUCE_NAME");
            }
        } catch (Exception e) {
           logger.error("Errorr : chBonId : "+e);
        } finally {
            DbClose.dbClose(conn,pre,rs);
        }
        return name;
    }

    @Override
    public UserModel orderedAddress(long b) {
        String sql=UserQuery.CHECKODR;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        UserModel user=new UserModel();
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.setLong(1,b);
            cs.registerOutParameter(2,OracleTypes.CURSOR);
            cs.execute();
            rs= (ResultSet) cs.getObject(2);
            if (rs.next()){
                user.setPrimaryId(rs.getLong("PRIMARY_ID"));
                user.setUserAddress(rs.getString("ADDRESS"));
                user.setLastDateOfDelivery(rs.getDate("LAST_DATE_OF_DELIVERY"));
                user.setUserMobil(rs.getString("MOBILE"));
                user.setUserAdditionalMob(rs.getString("MOBILE2"));
            }else {

                user=null;
            }
        } catch (Exception e) {
            logger.error("Error  : orderedAddress  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return user;
    }

    @Override
    public UserModel getPicture(long id) {
        String sql=UserQuery.SELECTPACKAGEPICTURE;
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        UserModel user=new UserModel();
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setLong(2,id);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            if (rs.next()){
                user.setProductPicture(rs.getString("PRODUCT_PATH"));
                user.setProductName(rs.getString("NAME"));
            }
        } catch (Exception e) {
            logger.error("Error  : getPicture  "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbClose.dbPlClose(conn,cs,rs);
        }
        return user;
    }

    @Override
    public void contactUs(String userName,String email,String subject,String text1) {
        String text="User email : "+email+"\nUser name : "+userName+"\nText : "+text1;
        final String name = "fogotpass2@gmail.com";
        final String pss = "rkeoidwkegcbaxlw"; // app password

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


        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("tt@gmail.com"));

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(name));
            message.setSubject(subject);
            message.setText(text);
            Transport.send(message);
        } catch (Exception e) {
            logger.error("Error : contactUs"+e);
        }
    }

    @Override
    public List<ModelShop> productLibrary() {
        String sql= Query.PRODUCTANDCATEGORY;
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
                model.setProductId(rs.getLong("ID"));
                model.setProductName(rs.getString("NAME"));
                model.setProductBonusValue(rs.getDouble("BONUCE_VALUE"));
                model.setProductPrice(rs.getDouble("PRICE"));
                model.setProductCategory(rs.getInt("CATEGORY"));
                model.setDictId(rs.getInt("D_ID"));
                model.setDictValue(rs.getString("DICT_VALUE"));
                list.add(model);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            logger.error("Error : productLibrary "+e);
        } finally {
            try {
                conn.commit();
            } catch (SQLException e) {
                logger.error("Error : productLibrary "+e);
            }
            DbClose.dbPlClose(conn,cs,rs);
        }

        return list;
    }

    @Override
    public List<UserModel> advSearchUserProduct(UserModel user) {
        String name= user.getProductName();
        double minPrice=user.getMinPrice();
        double maxPrice=user.getMaxPrice();
        double minBonVal=user.getMinBonVal();
        double maxBonVal=user.getMaxBonPrice();
        int category=user.getCategory();
        String sql=UserQuery.PRODUCTADVSEARCH;
        List<UserModel>list=new ArrayList<UserModel>();
        Connection conn=null;
        CallableStatement cs=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            cs=conn.prepareCall(sql);
            cs.registerOutParameter(1,OracleTypes.CURSOR);
            cs.setString(2,name);
            cs.setDouble(3,minPrice);
            cs.setDouble(4,maxPrice);
            cs.setDouble(5,minBonVal);
            cs.setDouble(6,maxBonVal);
            cs.setInt(7,category);
            cs.execute();
            rs= (ResultSet) cs.getObject(1);
            while (rs.next()){
                UserModel shuser=new UserModel();
                shuser.setProductName(rs.getString("NAME"));
                shuser.setProuctPrice(rs.getDouble("PRICE"));
                shuser.setProductBonuceValue(rs.getDouble("BONUCE_VALUE"));
                shuser.setCategory(rs.getInt("CATEGORY"));
                shuser.setProductPicture(rs.getString("PRODUCT_PATH"));
                shuser.setDictValue(rs.getString("DICT_VALUE"));
                list.add(shuser);
            }
        } catch (Exception e) {
            logger.error("Error : advSearchUserProduct"+e);
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
}
