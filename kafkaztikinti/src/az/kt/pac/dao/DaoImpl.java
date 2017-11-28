package az.kt.pac.dao;

import az.kt.pac.dbConnect.DbConnect;
import az.kt.pac.model.Model;
import az.kt.pac.util.DbClose;
import az.kt.pac.util.Query;
import az.kt.pac.util.SendException;
import org.apache.log4j.Logger;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by TALEH on 11/7/2016.
 */
public class DaoImpl implements Dao {

    public static Logger logger=Logger.getLogger(DaoImpl.class);

    @Override
    public String insertVitraProduct() {
        DbConnect.dbConnect();
        return null;
    }

    @Override
    public List<Model> loadSeriSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeriSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeriSelectBox() : Setr --> 45,46,47");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadRenkSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadRenkSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadRenkSelectBox() : Setr --> 72,73,74");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadEbatSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadEbatSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadEbatSelectBox() : Setr --> 99,100,101");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadGenislikSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadGenislikSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadGenislikSelectBox() : Setr --> 126,127,128");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadDerinlikSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadDerinlikSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadDerinlikSelectBox() : Setr --> 153,154,155");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadYukseklikSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadYukseklikSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadYukseklikSelectBox() : Setr --> 180,181,182");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadMontajTipiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadMontajTipiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadMontajTipiSelectBox() : Setr --> 207,208,209");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadBaglantiTipiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadBaglantiTipiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadBaglantiTipiSelectBox() : Setr --> 234,235,236");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadYikamaSeceneyiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadYikamaSeceneyiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadYikamaSeceneyiSelectBox() : Setr --> 261,262,263");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadHidromasajSeceneyiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadHidromasajSeceneyiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadHidromasajSeceneyiSelectBox() : Setr --> 288,289,290");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadUygulamaSeceneyiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadUygulamaSeceneyiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadUygulamaSeceneyiSelectBox() : Setr --> 315,316,317");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadKapakTasarimiSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadKapakTasarimiSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("id"));
                    model.setDictionaryValue(rs.getString("dictionary_value"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadKapakTasarimiSelectBox() : Setr --> 342,343,344");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSeramikBanyoLavaboSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeramikBanyoLavaboSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeramikBanyoLavaboSelectBox() : Setr --> 369,370,371");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSeramikBanyoKlozetSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeramikBanyoKlozetSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeramikBanyoKlozetSelectBox() : Setr --> 397,398,399");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSeramikTamamlayiciUrunSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeramikTamamlayiciUrunSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeramikTamamlayiciUrunSelectBox() : Setr --> 424,425,426");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSeramikYasliBedenselEngelliUrunSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeramikYasliBedenselEngelliUrunSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeramikYasliBedenselEngelliUrunSelectBox() : Setr --> 452,453,454");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSeramikArtemaAksesuarSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadSeramikArtemaAksesuarSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSeramikArtemaAksesuarSelectBox() : Setr --> 480,481,482");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSub3ArmaturlarSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadsub3ArtemalarSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSub3ArmaturlarSelectBox() : Setr --> 504,505,506");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadSub3AksesuarlarSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadsub3AksesuarlarSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadSub3AksesuarlarSelectBox() : Setr --> 531,532,533");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public String addVitraProduct(Model model) {
        String query=Query.addVitraProduct;
        String queryPic=Query.addVitraProductPic;
        String queryPicBottom=Query.addVitraProductPicBottom;
//        String sq="{ call example(?)}";
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        String ret=null;
        int byId=0;
        int byPicId=0;
        String kod=null;
        String name=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
//                cl=conn.prepareCall(sq);
//                cl.registerOutParameter(1,java.sql.Types.INTEGER);
//                cl.execute();
//                int a=cl.getInt(1);
//                System.out.println("Dogru cavab --- "+a);

                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setLong(4,model.getSub3Table());

                cl.setLong(5,model.getSeriCesitleri());
                cl.setLong(6,model.getRenkCesitleri());
                cl.setLong(7,model.getEbatCesitleri());
                cl.setLong(8,model.getTarzCesitleri());
                cl.setLong(9,model.getGenislikCesitleri());
                cl.setLong(10,model.getDerinlikCesitleri());

                cl.setLong(11,model.getYukseklikCesitleri());
                cl.setLong(12,model.getSekilCesitleri());
                cl.setLong(13,model.getMontajTipiCesitleri());
                cl.setLong(14,model.getBaglantiTipiCesitleri());
                cl.setLong(15,model.getYikamaSeceneyiCesitleri());
                cl.setLong(16,model.getKapakTasarimiCesitleri());
                cl.setLong(17,model.getGucKaynagiCesitleri());
                cl.setLong(18,model.getYavasKapanirCesitleri());
                cl.setLong(19,model.getBunyeTipiCesitleri());
                cl.setLong(20,model.getAkrilikPlakaCesitleri());
                cl.setLong(21,model.getKapakYonuCesitleri());
                cl.setLong(22,model.getKapakRengiCesitleri());
                cl.setLong(23,model.getDuvarYerlesimCesitleri());
                cl.setLong(24,model.getKalinlikCesitleri());
                cl.setLong(25,model.getNormalCesitleri());
                cl.setLong(26,model.getHidromasajSeceneyiCesitleri());
                cl.setLong(27,model.getUygulamaSeceneyiCesitleri());
                cl.setLong(28,model.getFonksyonSayisiCesitleri());
                cl.setLong(29,model.getCocuklarIcin());
                cl.setLong(30,model.getYeniIcin());
                cl.setString(31,model.getProductCod());
                cl.setString(32,model.getProductName());
                cl.setString(33,model.getUrl());
                cl.registerOutParameter(34, Types.INTEGER);
                cl.registerOutParameter(35, Types.VARCHAR);
                cl.registerOutParameter(36, Types.VARCHAR);
                cl.execute();
                byId=cl.getInt(34);
                name=cl.getString(35);
                kod=cl.getString(36);
                if (name!=null&&kod!=null){
                    ret="Cod  : "+kod+"  Ad  : "+name;
                }else{
                    ret=null;
                }
                cl.close();
                if(byId!=0){
                    cl=conn.prepareCall(queryPic);
                    cl.setInt(1,byId);
                    cl.setString(2,model.getProductPicPath());
                    cl.setString(3,model.getProductProfilPicName());
                    cl.setString(4,model.getUrl());
                    cl.registerOutParameter(5, Types.INTEGER);
                    cl.execute();
                    byPicId=cl.getInt(5);
                    cl.close();
//                    System.out.println("Pictunenermrentert >>>>>>> "+byPicId);
//                    cl=conn.prepareCall(queryPicBottom);
//                    List<String> list=model.getOtherPictureName();
//                    Map mp=model.getOtherPicturePath();
//                    for (String s:list) {
//                        String path= (String) mp.get(s);
//                        cl.setInt(1,byPicId);
//                        cl.setString(2,path);
//                        cl.setString(3,s);
//                        cl.execute();
//                    }


                    System.out.println(byPicId);
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public Model editVitraProduct(String kod) {
        String query=Query.editVitraProduct;
        Model model=null;
        Connection conn=null;
        CallableStatement cl=null;
        String checked=null;
        ResultSet rs=null;
        try{
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.registerOutParameter(2, Types.VARCHAR);
//                cl.execute();
                rs=cl.executeQuery();
                checked=cl.getString(2);
                if (checked==null){
                    System.out.println("Cava "+checked);
                    System.out.println(rs);
                while(rs.next()){
                    System.out.println("Kod var");
                    model=new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setSub3Table(rs.getLong("bt.sub3_id"));
                    model.setSeriCesitleri(rs.getLong("bti2.seri"));
                    model.setEbatCesitleri(rs.getLong("bti.ebat"));
                    model.setRenkCesitleri(rs.getLong("bti.renk"));
                    model.setTarzCesitleri(rs.getLong("bti.tarz"));
                    model.setGenislikCesitleri(rs.getLong("bti.genislik"));
                    model.setDerinlikCesitleri(rs.getLong("bti.derinlik"));
                    model.setYukseklikCesitleri(rs.getLong("bti.yukseklik"));
                    model.setSekilCesitleri(rs.getLong("bti.sekil"));
                    model.setMontajTipiCesitleri(rs.getLong("bti.montaj_tipi"));
                    model.setBaglantiTipiCesitleri(rs.getLong("bti.baglanti_tipleri"));
                    model.setYikamaSeceneyiCesitleri(rs.getLong("bti.yikama_seceneyi"));
                    model.setKapakTasarimiCesitleri(rs.getLong("bti2.kapak_tasarimi"));
                    model.setGucKaynagiCesitleri(rs.getLong("bti.guc_kaynagi"));
                    model.setYavasKapanirCesitleri(rs.getLong("bti.yavas_kapanir"));
                    model.setBunyeTipiCesitleri(rs.getLong("bti.bunye_tipi"));
                    model.setAkrilikPlakaCesitleri(rs.getLong("bti2.akrilik_plaka_seceneyi"));
                    model.setKapakYonuCesitleri(rs.getLong("bti2.kapak_yonu"));
                    model.setKapakRengiCesitleri(rs.getLong("bti2.kapak_rengi"));
                    model.setDuvarYerlesimCesitleri(rs.getLong("bti2.duvar_yerlesim_yeri"));
                    model.setKalinlikCesitleri(rs.getLong("bti2.kalinlik"));
                    model.setNormalCesitleri(rs.getLong("bti2.eyim"));
                    model.setHidromasajSeceneyiCesitleri(rs.getLong("bti2.hidromesaj_seceneyi"));
                    model.setUygulamaSeceneyiCesitleri(rs.getLong("bti2.uygulama_seceneyi"));
                    model.setFonksyonSayisiCesitleri(rs.getLong("bti2.fonksyon_sayi"));
                    model.setCocuklarIcin(rs.getLong("bt.usaq_ucun"));
                    model.setYeniIcin(rs.getLong("bt.yeni"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
//                    System.out.println(rs.getString("name"));
                }
                }else{
                    System.out.println("Kod movcud deyl");
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editVitraProduct() : Setr --> 711,712,713");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String updateVitraProduct(Model model) {
        String query=Query.updateVitraProduct;
//        String sq="{ call example(?)}";
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
//                cl=conn.prepareCall(sq);
//                cl.registerOutParameter(1,java.sql.Types.INTEGER);
//                cl.execute();
//                int a=cl.getInt(1);
//                System.out.println("Dogru cavab --- "+a);

                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setLong(4,model.getSub3Table());

                cl.setLong(5,model.getSeriCesitleri());
                cl.setLong(6,model.getRenkCesitleri());
                cl.setLong(7,model.getEbatCesitleri());
                cl.setLong(8,model.getTarzCesitleri());
                cl.setLong(9,model.getGenislikCesitleri());
                cl.setLong(10,model.getDerinlikCesitleri());

                cl.setLong(11,model.getYukseklikCesitleri());
                cl.setLong(12,model.getSekilCesitleri());
                cl.setLong(13,model.getMontajTipiCesitleri());
                cl.setLong(14,model.getBaglantiTipiCesitleri());
                cl.setLong(15,model.getYikamaSeceneyiCesitleri());
                cl.setLong(16,model.getKapakTasarimiCesitleri());
                cl.setLong(17,model.getGucKaynagiCesitleri());
                cl.setLong(18,model.getYavasKapanirCesitleri());
                cl.setLong(19,model.getBunyeTipiCesitleri());
                cl.setLong(20,model.getAkrilikPlakaCesitleri());
                cl.setLong(21,model.getKapakYonuCesitleri());
                cl.setLong(22,model.getKapakRengiCesitleri());
                cl.setLong(23,model.getDuvarYerlesimCesitleri());
                cl.setLong(24,model.getKalinlikCesitleri());
                cl.setLong(25,model.getNormalCesitleri());
                cl.setLong(26,model.getHidromasajSeceneyiCesitleri());
                cl.setLong(27,model.getUygulamaSeceneyiCesitleri());
                cl.setLong(28,model.getFonksyonSayisiCesitleri());
                cl.setLong(29,model.getCocuklarIcin());
                cl.setLong(30,model.getYeniIcin());
                cl.setString(31,model.getProductCod());
                cl.setString(32,model.getProductName());
                cl.setString(33,model.getUrl());
                cl.setLong(34,model.getProduct_id());
                cl.setString(35,model.getProductPicPath());
                cl.setString(36,model.getProductProfilPicName());
                cl.registerOutParameter(37, Types.VARCHAR);
                cl.execute();
                ret=cl.getString(37);
                System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   "+ret);
//                byId=cl.getInt(34);
//                name=cl.getString(35);
//                kod=cl.getString(36);
//                if (name!=null&&kod!=null){
//                    ret="Cod  : "+kod+"  Ad  : "+name;
//                }else{
//                    ret=null;
//                }
                cl.close();
            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> updateVitraProduct() : Setr --> 787,788,789");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public String deleteVitraProduct(String kod) {
        String query=Query.deleteVitraProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.registerOutParameter(2,Types.VARCHAR);
                cl.execute();
                ret=cl.getString(2);
            }

        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> updateVitraProduct() : Setr --> 787,788,789");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectVitraProduct() {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectVitraProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }

        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectVitraProduct() : Setr --> 846,847,848");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> selectProduct_byCod(String kod, int id, int sub1) {
//        System.out.println("bu"+kod);
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectProduct_byCod;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.setInt(2,id);
                cl.setInt(3,sub1);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setTopUrun(rs.getLong("top_id"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectVitraProduct_byCod() : Setr --> 881,882,883");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadGeberitSub1_selectbox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadGeberitSub1SelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub1_id"));
                    model.setDictionaryValue(rs.getString("sub_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadGeberitSub1_selectbox() : Setr --> 906,907,908");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadGeberitSub2FotoselliOptGroup_selectbox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadGeberitSub2FotoselliOptgroupSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub2_id"));
                    model.setDictionaryValue(rs.getString("sub2_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadGeberitSub2FotoselliOptGroup_selectbox() : Setr --> 933,934,935");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadGeberitSub2KonstrukiyonMontajOptgroupSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub2_id"));
                    model.setDictionaryValue(rs.getString("sub2_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox() : Setr --> 960,961,962");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public Model checkedGeberitKodForInsert(String kod) {
        String query=Query.checkedKodForInsert_geberit;
        Model model=null;
        Connection conn=null;
        CallableStatement cl=null;
        String checked=null;
        ResultSet rs=null;
        try{
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.registerOutParameter(2, Types.VARCHAR);
                cl.execute();
                rs=cl.executeQuery();
                checked=cl.getString(2);
                if (checked==null){
                    while(rs.next()){
                        model=new Model();
                        model.setProductCod(rs.getString("bt.sifre"));
                    }
                }else{
                  model=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editVitraProduct() : Setr --> 711,712,713");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String insertGeberit(Model model) {
        String query=Query.addGeberitProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectGeberit() {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectGeberitProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectGeberit() : Setr --> 1066,1067,1068");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> selectGeberit_byCod(String kod) {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectGeberitProduct_byCod;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }

        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectGeberit_byCod() : Setr --> 1097,1098,1099");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public void deleteGeberit(String kod) {
        String query=Query.deleteGeberitProduct;
        Connection conn=null;
        CallableStatement cl=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.execute();
            }

        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> deleteGeberit(String kod) : Setr --> 1123,1124,1125");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
    }

    @Override
    public Model editGeberit(String kod) {
        Model model=null;
        String query=Query.editGeberitProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                rs=cl.executeQuery();
                while (rs.next()){
//                    bt.sub1_id,bt.sub2_id,bt.bottom_id,bt.name,bt.sifre,bt.active,btp.url,btp.picture_name from bottom_table bt
                    model= new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setProductPicPath(rs.getString("btp.picture_path"));
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editGeberit() : Setr --> 1157,1158,1159");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String updateGeberit(Model model) {
        String query=Query.updateGeberitProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getProduct_id());
                cl.setInt(11,model.getActive());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> loadHansgroheSub2SelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadHangroheSub2SelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub2_id"));
                    model.setDictionaryValue(rs.getString("sub2_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadHansgroheSub2SelectBox() : Setr --> 1221,1222,1223");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadHansgroheTalisOptGrp() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadHangroheTalisOptGrp;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadHansgroheTalisOptGrp() : Setr --> 1248,1249,1250");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public String insertHansgrohe(Model model) {
        String query=Query.addHansgroheProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getSub3Table());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 1288,1289,1290");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectHansgroheProduct() {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectHansgroheProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectHansgroheProduct() : Setr --> 1318,1319,1320");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public void deleteHansgrohe(String kod) {
        String query=Query.deleteHansgrohe;
        Connection conn=null;
        CallableStatement cl=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                cl.execute();
            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> deleteGeberit(String kod) : Setr --> 1123,1124,1125");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
    }

    @Override
    public Model editHansgrohe(String kod) {
        Model model=null;
        String query=Query.editHansgroheProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                rs=cl.executeQuery();
                while (rs.next()){
//                    bt.sub1_id,bt.sub2_id,bt.bottom_id,bt.name,bt.sifre,bt.active,btp.url,btp.picture_name from bottom_table bt
                    model= new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setSub3Table(rs.getLong("bt.sub3_id"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setProductPicPath(rs.getString("btp.picture_path"));
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editHansgrohe() : Setr --> 1375,1376,1377");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String updateHansgrohe(Model model) {
        String query=Query.updateHansgroheProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getProduct_id());
                cl.setInt(12,model.getActive());
                cl.setLong(11,model.getSub3Table());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> loadAxorSub2SelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadAxorSub2SelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub2_id"));
                    model.setDictionaryValue(rs.getString("sub2_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadAxorSub2SelectBox() : Setr --> 1446,1447,1448");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public List<Model> loadAxorAccesoriesSelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadAxorAccesoriesOptGrpSelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub3_id"));
                    model.setDictionaryValue(rs.getString("sub3_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadAxorAccesoriesSelectBox() : Setr --> 1474,1475,1476");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public String insertAxor(Model model) {
        String query=Query.addAxorProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getSub3Table());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 1513,1514,1515");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectAxorProduct() {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectAxorProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectAxorProduct() : Setr --> 1544,1545,1546");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public void deleteAxor(String kod) {
        String query=Query.deleteAxor;
        Connection conn=null;
        CallableStatement cl=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                cl.execute();
            }
        }catch (Exception ex){
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> deleteGeberit(String kod) : Setr --> 1123,1124,1125");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
    }

    @Override
    public Model editAxor(String kod) {
        Model model=null;
        String query=Query.editAxorProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                rs=cl.executeQuery();
                while (rs.next()){
//                    bt.sub1_id,bt.sub2_id,bt.bottom_id,bt.name,bt.sifre,bt.active,btp.url,btp.picture_name from bottom_table bt
                    model= new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setSub3Table(rs.getLong("bt.sub3_id"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setProductPicPath(rs.getString("btp.picture_path"));
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editAxor() : Setr --> 1602,1602,1603");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public Model checkedKodForUpdate(String kod, int id) {
        String query=Query.checkedKodForUpdate;
        Model model=null;
        Connection conn=null;
        CallableStatement cl=null;
        String checked=null;
        ResultSet rs=null;
        try{
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setString(1,kod);
                cl.registerOutParameter(2, Types.VARCHAR);
                cl.setInt(3,id);
                cl.execute();
                rs=cl.executeQuery();
                checked=cl.getString(2);
                if (checked==null){
                    while(rs.next()){
                        model=new Model();
                        model.setProductCod(rs.getString("bt.sifre"));
                    }
                }else{
                    model=null;
                }

            }
        }catch (Exception ex){
            model=null;
            ex.printStackTrace();
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editVitraProduct() : Setr --> 1640,1641,1642");
        }
        return model;
    }

    @Override
    public String updateAxor(Model model) {
        String query=Query.updateAxorProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getProduct_id());
                cl.setInt(12,model.getActive());
                cl.setLong(11,model.getSub3Table());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> loadFrankeSub1SelectBox() {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadFrankeSub1SelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub1_id"));
                    model.setDictionaryValue(rs.getString("sub_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadFrankeSub1SelectBox() : Setr --> 1711,1712,1713");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public String insertFranke(Model model) {
        String query=Query.addFrankeProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectFranke() {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectFrankeProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectFranke() : Setr --> 1780,1781,1782");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public Model editFranke(String kod) {
        Model model=null;
        String query=Query.editFrankeProduct;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                rs=cl.executeQuery();
                while (rs.next()){
//                    bt.sub1_id,bt.sub2_id,bt.bottom_id,bt.name,bt.sifre,bt.active,btp.url,btp.picture_name from bottom_table bt
                    model= new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setProductPicPath(rs.getString("btp.picture_path"));
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editFranke() : Setr --> 1816,1817,1818");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String updateFranke(Model model) {
        String query=Query.updateFrankeProduct;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getProduct_id());
                cl.setInt(11,model.getActive());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> updateFranke() : Setr --> 1855,1856,1857");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public String insertTop10(Model model) {
        String query=Query.addTop10Product;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getSub3Table());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }

            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> addVitraProduct() : Setr --> 639,640,641");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> selectTop10(int id) {
        List<Model> list=new ArrayList<Model>();
        String query=Query.selectTop10Product;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setInt(1,id);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model= new Model();
                    model.setProductName(rs.getString("name"));
                    model.setProductCod(rs.getString("sifre"));
                    model.setTopUrun(rs.getLong("top_id"));
                    model.setProduct_id(rs.getLong("bottom_id"));
                    model.setActive(rs.getInt("active"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> selectTop10() : Setr --> 1926,1927,1928");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }

    @Override
    public Model editTop10Product(String kod, int topId) {
        Model model=null;
        String query=Query.editTop10Product;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,Long.parseLong(kod));
                cl.setInt(2,topId);
                rs=cl.executeQuery();
                while (rs.next()){
//                    bt.sub1_id,bt.sub2_id,bt.bottom_id,bt.name,bt.sifre,bt.active,btp.url,btp.picture_name from bottom_table bt
                    model= new Model();
                    model.setProductName(rs.getString("bt.name"));
                    model.setTopUrun(rs.getLong("bt.top_id"));
                    model.setProductCod(rs.getString("bt.sifre"));
                    model.setProduct_id(rs.getLong("bt.bottom_id"));
                    model.setActive(rs.getInt("bt.active"));
                    model.setSub1Table(rs.getLong("bt.sub1_id"));
                    model.setSub2Table(rs.getLong("bt.sub2_id"));
                    model.setUrl(rs.getString("btp.url"));
                    model.setProductProfilPicName(rs.getString("btp.picture_name"));
                    model.setProductPicPath(rs.getString("btp.picture_path"));
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> editFranke() : Setr --> 1816,1817,1818");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return model;
    }

    @Override
    public String updateTop10(Model model) {
        String query=Query.updateTop10Product;
        Connection conn=null;
        CallableStatement cl=null;
        String ret=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setLong(1,model.getTopUrun());
                cl.setLong(2,model.getSub1Table());
                cl.setLong(3,model.getSub2Table());
                cl.setString(4,model.getProductCod());
                cl.setString(5,model.getProductName());
                cl.setString(6,model.getUrl());
                cl.setString(7,model.getProductProfilPicName());
                cl.setString(8,model.getProductPicPath());
                cl.registerOutParameter(9, Types.VARCHAR);
                cl.setLong(10,model.getProduct_id());
                cl.setInt(11,model.getActive());
                cl.execute();
                ret=cl.getString(9);
                System.out.println("Yoxlama >>>"+ret);
                if (ret!=null){
                    ret="Cod  : ";
                }else{
                    ret=null;
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            ret=null;
//            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> updateFranke() : Setr --> 1855,1856,1857");
        }finally {
            DbClose.dbClose(conn,cl,null,null);
        }
        return ret;
    }

    @Override
    public List<Model> loadTopSub2SelectBox(int sub2) {
        List<Model> list=new ArrayList<Model>();
        String query= Query.loadTop10Sub2SelectBox;
        Connection conn=null;
        CallableStatement cl=null;
        ResultSet rs=null;
        try {
            conn=DbConnect.dbConnect();
            if (conn!=null){
                cl=conn.prepareCall(query);
                cl.setInt(1,sub2);
                rs=cl.executeQuery();
                while (rs.next()){
                    Model model=new Model();
                    model.setDictionaryId(rs.getInt("sub2_id"));
                    model.setDictionaryValue(rs.getString("sub2_category_name"));
                    list.add(model);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dao; DaoImpl Class --> loadTopSub2SelectBox() : Setr --> 1446,1447,1448");
        }finally {
            DbClose.dbClose(conn,cl,rs,null);
        }
        return list;
    }


}
