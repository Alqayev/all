package net.org.pack.dao;

import java.sql.*;
import javax.mail.*;
import java.util.*;
import net.org.pack.db.DbConnect;
import net.org.pack.model.Model;
import net.org.pack.utilty.DbClose;
import javax.mail.internet.*;


/**
 * Created by TALEH on 11.10.2016.
 */
public class DaoImpl implements Dao {
    @Override
    public String contactMet(Model model) {
        final String name = "fogotpass2@gmail.com";
        final String pss = "mzzxxklomeutxxpw"; // app password
        String email = model.getEmail();
        String checked=null;
        System.out.println(email + "     " + model.getText());
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
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                message.setSubject("Mushteri mesaji !!!");
                message.setText(model.getText().toString());
                Transport.send(message);
                System.out.println("Message sent");
            } catch (Exception ex) {
               checked="Netvork error";
            }
            return checked;
    }

    @Override
    public void insertUserInfo(String name, String email) {
        Connection conn = null;
        String simpleProc = "{ call insertUserInfo(?,?) }";
        CallableStatement cs = null;
        try {
            conn = DbConnect.dbConnect();
            cs = conn.prepareCall(simpleProc);
            cs.setString(1, email);
            cs.setString(2, name);
            cs.execute();
            System.out.println("okkaaaaaa");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbClose.dbClose(conn, cs, null);
        }

    }

    @Override
    public Model checkLogin(String name, String cor) {
        Connection conn = null;
        String simpleProc = "select * from adn where name=? and pass=?";
        PreparedStatement  cs = null;
        conn=DbConnect.dbConnect();
        ResultSet rs=null;
        Model model=null;
        if (conn!=null){
            try {
                cs=conn.prepareStatement(simpleProc);
                cs.setString(1,name);
                cs.setString(2,cor);
                rs=cs.executeQuery();
                if (rs.next()){
                    model=new Model();
                    model.setAdName("AdmiN");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return model;
    }

    @Override
    public void insertCategoryPic(Model model) {
        int superId=model.getSuperId();
        int subId=model.getSubId();
        int subsubId=model.getSubsubId();
        String fileName=model.getPicName();
        String path=model.getPicPass();
        String query="{ call insertPic(?,?,?,?,?) }";
        Connection conn = null;
        CallableStatement  cs = null;
        conn=DbConnect.dbConnect();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                cs.setInt(1,superId);
                cs.setInt(2,subId);
                cs.setInt(3,subsubId);
                cs.setString(4,path);
                cs.setString(5,fileName);
                cs.execute();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,null);
            }
        }
    }

    @Override
    public void insertOurWorkPic(Model model) {
        int superId=model.getSuperId();
        String fileName=model.getPicName();
        String path=model.getPicPass();
        String query="{ call insertourworkPic(?,?,?) }";
        Connection conn = null;
        CallableStatement  cs = null;
        conn=DbConnect.dbConnect();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                cs.setInt(1,superId);
                cs.setString(2,path);
                cs.setString(3,fileName);
                cs.execute();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,null);
            }
        }
    }

    @Override
    public List<Model> showSurmali() {
        String query="{ call showSurmali() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> showpardali() {
        String query="{ call showPardali() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> shushelenmeSabit() {
        String query="{ call shushelenmeSabit() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> daxiliarakesme() {
        String query="{ call daxiliarakesme() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> silikoncebhe() {
        String query="{ call silikoncebhe() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> qapaqlicebhe() {
        String query="{ call qapaqlicebhe() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> monetsistem() {
        String query="{ call monetsistem() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> izosistem() {
        String query="{ call izosistem() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> aluwood() {
        String query="{ call aluwood() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> ytavan() {
        String query="{ call ytavan() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> camtavan() {
        String query="{ call camtavan() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> tent() {
        String query="{ call tent() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> skylight() {
        String query="{ call skylight() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> polikarbonant() {
        String query="{ call polikarbonant() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> membran() {
        String query="{ call membran() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> hovuzlar() {
        String query="{ call hovuzlar() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> alakmahaccar() {
        String query="{ call alakmahaccar() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> pasakmahaccar() {
        String query="{ call pasakmahaccar() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> asqili() {
        String query="{ call asqili() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> pompali() {
        String query="{ call pompali() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> fotoselli() {
        String query="{ call fotoselli() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> petleliqapilar() {
        String query="{ call petleliqapilar() }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("st.image_name"));
                    model.setPicPass(rs.getString("st.image_path"));
                    model.setPictId(rs.getLong("st.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }

    @Override
    public List<Model> bizimportfolio(int id) {
        String query="{ call bizimportfolio(?) }";
        Connection conn = null;
        CallableStatement  cs = null;
        ResultSet rs=null;
        conn=DbConnect.dbConnect();
        List<Model> list=new ArrayList<Model>();
        if (conn!=null){
            try {
                cs=conn.prepareCall(query);
                cs.setInt(1,id);
                rs=cs.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setPicName(rs.getString("ow.image_name"));
                    model.setPicPass(rs.getString("ow.image_path"));
                    model.setPictId(rs.getLong("ow.id"));
                    list.add(model);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                DbClose.dbClose(conn,cs,rs);
            }
        }
        return list;
    }
}
