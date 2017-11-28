package az.kt.pac.web;

import az.kt.pac.dao.Dao;
import az.kt.pac.dao.DaoImpl;
import az.kt.pac.model.Model;
import az.kt.pac.service.Service;
import az.kt.pac.service.ServiceImpl;
import az.kt.pac.util.ActionChecked;
import org.apache.catalina.tribes.ChannelInterceptor;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by TALEH on 11/8/2016.
 */
public class ControllerServlet extends HttpServlet {

    private static final long serialVrsionUid=1L;
    private static final String UPLOAD_DIRECTORY="upload";
    private static final int THRESHOLD_SIZE=1024*1024*3;//// 3MB
    private static final int MAX_FILE_SIZE=1024*1024*10;  //10MB
    private static final int REQUEST_SIZE=1024*1024*50;  //50MB
    public DiskFileItemFactory factory;
    public ServletFileUpload upload;
    public String uploadPath;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesReq(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesReq(request,response);
    }

    private void proccesReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        Dao dao=new DaoImpl();
        Service service=new ServiceImpl(dao);
        String action = "";
        String path = "";

        if (request.getParameter("action") != null) {
            action = request.getParameter("action");

        }
        try {


//                                             V I T R A        S E L E C T B O X
            if (action.equalsIgnoreCase(ActionChecked.LOADSERISELECTBOX)){
                List<Model> list=service.loadSeriSelectBox();
                request.setAttribute("loadSeriSelectBox",list);
                path="vgr/security/view/loadSelectBox_Seri.jsp";
            }

            else if (action.equalsIgnoreCase(ActionChecked.LOADRENKSELECTBOX)){
                List<Model> list=service.loadRenkSelectBox();
                request.setAttribute("loadRenkSelectBox",list);
                path="vgr/security/view/loadSelectBox_Renk.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADEBATSELECTBOX)){
                List<Model> list=service.loadEbatSelectBox();
                request.setAttribute("loadEbatSelectBox",list);
                path="vgr/security/view/loadSelectBox_Ebat.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADGENISLIKSELECTBOX)){
                List<Model> list=service.loadGenislikSelectBox();
                request.setAttribute("loadGenislikSelectBox",list);
                path="vgr/security/view/loadSelectBox_Genislik.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADDERINLIKSELECTBOX)){
                List<Model> list=service.loadDerinlikSelectBox();
                request.setAttribute("loadDerinlikSelectBox",list);
                path="vgr/security/view/loadSelectBox_Derinlik.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADYUKSEKLIKSELECTBOX)){
                List<Model> list=service.loadYukseklikSelectBox();
                request.setAttribute("loadYukseklikSelectBox",list);
                path="vgr/security/view/loadSelectBox_Yukseklik.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADMONTAJTIPISELECTBOX)){
                List<Model> list=service.loadMontajTipiSelectBox();
                request.setAttribute("loadMontajTipiSelectBox",list);
                path="vgr/security/view/loadSelectBox_MontajTipi.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADBAGLANTITIPISELECTBOX)) {
                    List<Model> list = service.loadBaglantiTipiSelectBox();
                    request.setAttribute("loadBaglantiTipiSelectBox", list);
                    path = "vgr/security/view/loadSelectBox_BaglantiTipi.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADYIKAMASECENEYISELECTBOX)) {
                    List<Model> list = service.loadYikamaSeceneyiSelectBox();
                    request.setAttribute("loadYikamaSeceneyiSelectBox", list);
                    path = "vgr/security/view/loadSelectBox_YikamaSeceneyi.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADHIDROMASAJSECENEYISELECTBOX)) {
                List<Model> list = service.loadHidromasajSeceneyiSelectBox();
                request.setAttribute("loadHidromasajSeceneyiSelectBox", list);
                path = "vgr/security/view/loadSelectBox_Hidromasaj.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADUYGULAMASECENEYISELECTBOX)) {
                List<Model> list = service.loadUygulamaSeceneyiSelectBox();
                request.setAttribute("loadUygulamaSeceneyiSelectBox", list);
                path = "vgr/security/view/loadSelectBox_Uygulama.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADKAPATASARIMISELECTBOX)) {
                List<Model> list = service.loadKapakTasarimiSelectBox();
                request.setAttribute("loadKapakTasarimiSelectBox", list);
                path = "vgr/security/view/loadSelectBox_KapakTasarimi.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSERAMIKBANYOLAVABOSELECTBOX)) {
                List<Model> list = service.loadSeramikBanyoLavaboSelectBox();
                request.setAttribute("loadSeramikBanyoLavaboSelectBox", list);
                path = "vgr/security/view/loadSelectBox_SeramikBanyoLavabo.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSERAMIKBANYOKLOZETSELECTBOX)) {
                List<Model> list = service.loadSeramikBanyoKlozetSelectBox();
                request.setAttribute("loadSeramikBanyoKlozetSelectBox", list);
                path = "vgr/security/view/loadSelectBox_SeramikBanyoKlozet.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSERAMIKTAMAMLAYICIURUNSELECTBOX)) {
                List<Model> list = service.loadSeramikTamamlayiciUrunSelectBox();
                request.setAttribute("loadSeramikTamamlayiciUrunSelectBox", list);
                path = "vgr/security/view/loadSelectBox_SeramikTamamlayiciUrun.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSERAMIKTYASLIBEDENSELENGELLIURUNSELECTBOX)) {
                List<Model> list = service.loadSeramikYasliBedenselEngelliUrunSelectBox();
                request.setAttribute("loadSeramikYasliBedenselEngelliUrunSelectBox", list);
                path = "vgr/security/view/loadSelectBox_SeramikYasliBedenselEngelliUrun.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSERAMIKARTEMAAKSESUARSELECTBOX)) {
                List<Model> list = service.loadSeramikArtemaAksesuarSelectBox();
                request.setAttribute("loadSeramikArtemaAksesuarSelectBox", list);
                path = "vgr/security/view/loadSelectBox_SeramikArtemaAksesuar.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSUB3ARMATURLARELECTBOX)) {
                List<Model> list = service.loadSub3ArmaturlarSelectBox();
                request.setAttribute("loadSUB3ARMATURLARSelectBox", list);
                path = "vgr/security/view/loadSelectBox_Sub3Armaturlar.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADSUB3AKSESUARLARELECTBOX)) {
                List<Model> list = service.loadSub3AksesuarlarSelectBox();
                request.setAttribute("loadSUB3AksesuarlarSelectBox", list);
                path = "vgr/security/view/loadSelectBox_Sub3Aksesuarlar.jsp";
            }

//                                       E N D       V I T R A        S E L E C T B O X



                                //            A D D        V I T R A              P R O D U C T

            else if (action.equalsIgnoreCase(ActionChecked.ADDVITRAPRODUCT)) {
                String profilPictureName="";
                String profilPicturePath="";
                ArrayList<String> profilPicKeyName=new ArrayList<String>();
                Map<String,String> bottomPicture=new HashMap();

//                ArrayList<String> otherPicturePath=new ArrayList<String>();
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Does't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);

                        if(flitem.getFieldName().equals("profil")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else if (flitem.getFieldName().equals("not_profil")){
                            bottomPicture.put(fileName,filePath);
                            profilPicKeyName.add(fileName);
//                            otherPictureName.add(fileName);
//                            otherPicturePath.add(filePath);
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                            profilPicKeyName=null;
                            bottomPicture=null;
//                            otherPictureName.add(null);
//                            otherPicturePath.add(null);
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                System.out.println(map);
//                if (flitem.getSize()!=0){

                    Model model=new Model();
                    String productCod=(String)map.get("vitraProducCodName");
                    String productName=(String)map.get("vitraProducNameName");
                    String url=(String)map.get("vitraProducInfoUrlName");

                    long topUrun=Long.parseLong((String)map.get("topId_v"));//top Id
                    long sub1Table=Long.parseLong((String)map.get("sub1TableName"));
                    long sub2Table=Long.parseLong((String)map.get("sub2TableName"));
                    long sub3Table=Long.parseLong((String)map.get("sub3TableName"));

                    long seriCesitleri=Long.parseLong((String)map.get("seriCesitleriName"));
                    long renkCesitleri=Long.parseLong((String)map.get("renkCesitleriName"));
                    long ebatCesitleri=Long.parseLong((String)map.get("ebatCesitleriName"));
                    long tarzCesitleri=Long.parseLong((String)map.get("tarzCesitleriName"));
                    long genislikCesitleri=Long.parseLong((String)map.get("genislikCesitleriName"));
                    long derinlikCesitleri=Long.parseLong((String)map.get("derinlikCesitleriName"));
                    long yukseklikCesitleri=Long.parseLong((String)map.get("yukseklikCesitleriName"));
                    long sekilCesitleri=Long.parseLong((String)map.get("sekilCesitleriName"));
                    long montajTipiCesitleri=Long.parseLong((String)map.get("montajTipiCesitleriName"));
                    long baglantiTipiCesitleri=Long.parseLong((String)map.get("baglantiTipiCesitleriName"));
                    long yikamaSeceneyiCesitleri=Long.parseLong((String)map.get("yikamaSeceneyiCesitleriName"));
                    long kapakTasarimiCesitleri=Long.parseLong((String)map.get("kapakTasarimiCesitleriName"));
                    long gucKaynagiCesitleri=Long.parseLong((String)map.get("gucKaynagiCesitleriName"));
                    long yavasKapanirCesitleri=Long.parseLong((String)map.get("yavasKapanirCesitleriName"));
                    long bunyeTipiCesitleri=Long.parseLong((String)map.get("bunyeTipiCesitleriName"));
                    long akrilikPlakaCesitleri=Long.parseLong((String)map.get("akrilikPlakaCesitleriName"));
                    long kapakYonuCesitleri=Long.parseLong((String)map.get("kapakYonuCesitleriName"));
                    long kapakRengiCesitleri=Long.parseLong((String)map.get("kapakRengiCesitleriName"));
                    long duvarYerlesimCesitleri=Long.parseLong((String)map.get("duvarYerlesimCesitleriName"));
                    long kalinlikCesitleri=Long.parseLong((String)map.get("kalinlikCesitleriName"));
                    long normalCesitleri=Long.parseLong((String)map.get("normalCesitleriName"));
                    long hidromasajSeceneyiCesitleri=Long.parseLong((String)map.get("hidromasajSeceneyiCesitleriName"));
                    long uygulamaSeceneyiCesitleri=Long.parseLong((String)map.get("uygulamaSeceneyiCesitleriName"));
                    long fonksyonSayisiCesitleri=Long.parseLong((String)map.get("fonksyonSayisiCesitleriName"));
                    long cocuklarIcin=Long.parseLong((String)map.get("cocuklarIcin"));
                    long yeniIcin=Long.parseLong((String)map.get("yeniIcin"));

                    model.setTopUrun(topUrun);
                    model.setSub1Table(sub1Table);
                    model.setSub2Table(sub2Table);
                    model.setSub3Table(sub3Table);
                    model.setProductCod(productCod);
                    model.setProductName(productName);
                    model.setUrl(url);
                    model.setSeriCesitleri(seriCesitleri);
                    model.setRenkCesitleri(renkCesitleri);
                    model.setEbatCesitleri(ebatCesitleri);
                    model.setTarzCesitleri(tarzCesitleri);
                    model.setDerinlikCesitleri(derinlikCesitleri);
                    model.setYukseklikCesitleri(yukseklikCesitleri);
                    model.setGenislikCesitleri(genislikCesitleri);
                    model.setSekilCesitleri(sekilCesitleri);
                    model.setMontajTipiCesitleri(montajTipiCesitleri);
                    model.setBaglantiTipiCesitleri(baglantiTipiCesitleri);
                    model.setYikamaSeceneyiCesitleri(yikamaSeceneyiCesitleri);
                    model.setKapakTasarimiCesitleri(kapakTasarimiCesitleri);
                    model.setGucKaynagiCesitleri(gucKaynagiCesitleri);
                    model.setYavasKapanirCesitleri(yavasKapanirCesitleri);
                    model.setBunyeTipiCesitleri(bunyeTipiCesitleri);
                    model.setAkrilikPlakaCesitleri(akrilikPlakaCesitleri);
                    model.setKapakYonuCesitleri(kapakYonuCesitleri);
                    model.setKapakRengiCesitleri(kapakRengiCesitleri);
                    model.setDuvarYerlesimCesitleri(duvarYerlesimCesitleri);
                    model.setKalinlikCesitleri(kalinlikCesitleri);
                    model.setNormalCesitleri(normalCesitleri);
                    model.setHidromasajSeceneyiCesitleri(hidromasajSeceneyiCesitleri);
                    model.setUygulamaSeceneyiCesitleri(uygulamaSeceneyiCesitleri);
                    model.setFonksyonSayisiCesitleri(fonksyonSayisiCesitleri);
                    model.setCocuklarIcin(cocuklarIcin);
                    model.setYeniIcin(yeniIcin);


                    if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                        model.setProductProfilPicName(profilPictureName);
                        model.setProductPicPath(profilPicturePath);
                    }else{
                        model.setProductProfilPicName("empty");
                        model.setProductPicPath("empty");
                    }
                    if(bottomPicture!=null&&bottomPicture.size()!=0&&profilPicKeyName!=null&&profilPicKeyName.size()!=0){
                        model.setOtherPictureName(profilPicKeyName);
                        model.setOtherPicturePath(bottomPicture);
//                        System.out.println("Menim yazdigim ad >>>>>>>>"+bottomPicture.get(1));
//                        model.setOtherPictureName(otherPictureName);
//                        model.setOtherPicturePath(otherPicturePath);
                    }else{
//                        System.out.println("Menim yazdigim ad "+bottomPicture.get(1));
                        profilPicKeyName.add("empty");
                        bottomPicture.put("empty","empty");
                        model.setOtherPictureName(profilPicKeyName);
                        model.setOtherPicturePath(bottomPicture);
                    }
                System.out.println("Url =>>>>>sdfsdfsdfsdf>>>>> "+url);
                String success=service.addVitraProduct(model);
                if(success!=null){
                    request.setAttribute("already",success);
                    path="vgr/security/vgrPanel/checked.jsp";
                }
                System.out.println("----->>>>>  "+success);
                }
           // }

                          //            E N D         A D D        V I T R A              P R O D U C T
//                       U P D A T E    V I T R A       P R O D U C T

            else if (action.equalsIgnoreCase(ActionChecked.UPDATEVITRAPRODUCT)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        System.out.println("Karahat vitra  ----  > "+flitem.getFieldName());
                        if(flitem.getFieldName().equals("profil_edit")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                System.out.println(map);
//                if (flitem.getSize()!=0){

                Model model=new Model();
                String productCod=(String)map.get("vitraProducCodName_edit");
                String productName=(String)map.get("vitraProducNameName_edit");
                String url=(String)map.get("vitraProducInfoUrlName_edit");

                long topUrun=Long.parseLong((String)map.get("topId_v_edit"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1TableName_yeni"));
                long sub2Table=Long.parseLong((String)map.get("productIdName_edit"));
                long sub3Table=Long.parseLong((String)map.get("sub3TableName_edit"));

                long seriCesitleri=Long.parseLong((String)map.get("seriCesitleriName_edit"));
                long renkCesitleri=Long.parseLong((String)map.get("renkCesitleriName_edit"));
                long ebatCesitleri=Long.parseLong((String)map.get("ebatCesitleriName_edit"));
                long tarzCesitleri=Long.parseLong((String)map.get("tarzCesitleriName_edit"));
                long genislikCesitleri=Long.parseLong((String)map.get("genislikCesitleriName_edit"));
                long derinlikCesitleri=Long.parseLong((String)map.get("derinlikCesitleriName_edit"));
                long yukseklikCesitleri=Long.parseLong((String)map.get("yukseklikCesitleriName_edit"));
                long sekilCesitleri=Long.parseLong((String)map.get("sekilCesitleriName_edit"));
                long montajTipiCesitleri=Long.parseLong((String)map.get("montajTipiCesitleriName_edit"));
                long baglantiTipiCesitleri=Long.parseLong((String)map.get("baglantiTipiCesitleriName_edit"));
                long yikamaSeceneyiCesitleri=Long.parseLong((String)map.get("yikamaSeceneyiCesitleriName_edit"));
                long kapakTasarimiCesitleri=Long.parseLong((String)map.get("kapakTasarimiCesitleriName_edit"));
                long gucKaynagiCesitleri=Long.parseLong((String)map.get("gucKaynagiCesitleriName_edit"));
                long yavasKapanirCesitleri=Long.parseLong((String)map.get("yavasKapanirCesitleriName_edit"));
                long bunyeTipiCesitleri=Long.parseLong((String)map.get("bunyeTipiCesitleriName_edit"));
                long akrilikPlakaCesitleri=Long.parseLong((String)map.get("akrilikPlakaCesitleriName_edit"));
                long kapakYonuCesitleri=Long.parseLong((String)map.get("kapakYonuCesitleriName_edit"));
                long kapakRengiCesitleri=Long.parseLong((String)map.get("kapakRengiCesitleriName_edit"));
                long duvarYerlesimCesitleri=Long.parseLong((String)map.get("duvarYerlesimCesitleriName_edit"));
                long kalinlikCesitleri=Long.parseLong((String)map.get("kalinlikCesitleriName_edit"));
                long normalCesitleri=Long.parseLong((String)map.get("normalCesitleriName_edit"));
                long hidromasajSeceneyiCesitleri=Long.parseLong((String)map.get("hidromasajSeceneyiCesitleriName_edit"));
                long uygulamaSeceneyiCesitleri=Long.parseLong((String)map.get("uygulamaSeceneyiCesitleriName_edit"));
                long fonksyonSayisiCesitleri=Long.parseLong((String)map.get("fonksyonSayisiCesitleriName_edit"));
                long cocuklarIcin=Long.parseLong((String)map.get("cocuklarIcin_edit"));
                long yeniIcin=Long.parseLong((String)map.get("yeniIcin_edit"));

                long product_Id=Long.parseLong((String)map.get("productIdName_edit"));

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setSub3Table(sub3Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                model.setSeriCesitleri(seriCesitleri);
                model.setRenkCesitleri(renkCesitleri);
                model.setEbatCesitleri(ebatCesitleri);
                model.setTarzCesitleri(tarzCesitleri);
                model.setDerinlikCesitleri(derinlikCesitleri);
                model.setYukseklikCesitleri(yukseklikCesitleri);
                model.setGenislikCesitleri(genislikCesitleri);
                model.setSekilCesitleri(sekilCesitleri);
                model.setMontajTipiCesitleri(montajTipiCesitleri);
                model.setBaglantiTipiCesitleri(baglantiTipiCesitleri);
                model.setYikamaSeceneyiCesitleri(yikamaSeceneyiCesitleri);
                model.setKapakTasarimiCesitleri(kapakTasarimiCesitleri);
                model.setGucKaynagiCesitleri(gucKaynagiCesitleri);
                model.setYavasKapanirCesitleri(yavasKapanirCesitleri);
                model.setBunyeTipiCesitleri(bunyeTipiCesitleri);
                model.setAkrilikPlakaCesitleri(akrilikPlakaCesitleri);
                model.setKapakYonuCesitleri(kapakYonuCesitleri);
                model.setKapakRengiCesitleri(kapakRengiCesitleri);
                model.setDuvarYerlesimCesitleri(duvarYerlesimCesitleri);
                model.setKalinlikCesitleri(kalinlikCesitleri);
                model.setNormalCesitleri(normalCesitleri);
                model.setHidromasajSeceneyiCesitleri(hidromasajSeceneyiCesitleri);
                model.setUygulamaSeceneyiCesitleri(uygulamaSeceneyiCesitleri);
                model.setFonksyonSayisiCesitleri(fonksyonSayisiCesitleri);
                model.setCocuklarIcin(cocuklarIcin);
                model.setYeniIcin(yeniIcin);
                model.setProduct_id(product_Id);

                System.out.println(" Product id --- >>> "+product_Id);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.updateVitraProduct(model);
            }

            else if(action.equalsIgnoreCase(ActionChecked.EDITVITRAPRODUCT)){
                String kod=request.getParameter("edit");
                Model model=null;
                if(kod!=null&&kod!=""&&kod.trim().length()!=0){
                     model=service.editVitraProduct(kod);
                    System.out.println("Model  = "+model);
                }
                if (model != null) {
                    request.setAttribute("editVitraProduct",model);
                    path="vgr/security/edit.jsp";

                }else{
                    request.setAttribute("editVitraProduct",model);
                    path="vgr/security/edit.jsp";
                }
            }
            else if (action.equalsIgnoreCase(ActionChecked.DELETEVITRAPRODUCT)) {
                String kod=request.getParameter("delete");
                System.out.println(kod);
                String success=service.deleteVitraProduct(kod);
                request.setAttribute("deleteVitraProduct",success);
                path="vgr/security/vgrPanel/checked_all.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.SELECTVITRAPRODUCT)) {
                List<Model> list=service.selectVitraProduct();
                request.setAttribute("selectVitraProduct",list);
                path="vgr/security/tables/vitra_t.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.SELECTPRODUCTBY_COD)) {
                String kod=request.getParameter("kod");
                int id=Integer.parseInt(request.getParameter("id"));
                int sub1id=Integer.parseInt(request.getParameter("sub1"));
                List<Model> list=service.selectProduct_byCod(kod,id,sub1id);
                if (id==1){
                    request.setAttribute("selectProductByCods_Vitra",list);
                    path="vgr/security/tables/tables_content/selectByCod_Vitra.jsp";
                }
                else if (id==3&&sub1id==6){
                    request.setAttribute("selectProductByCods_Hansgrohe",list);
                    path="vgr/security/tables/tables_content/selectByCod_Hansgrohe.jsp";
                }
                  else if (id==3&&sub1id==7){
                    request.setAttribute("selectProductByCods_Axor",list);
                    path="vgr/security/tables/tables_content/selectByCod_Axor.jsp";
                }
                 else if (id==4){
                    request.setAttribute("selectProductByCods_Geberit",list);
                    path="vgr/security/tables/tables_content/selectByCod_Geberit.jsp";
                }
                else if (id==5){
                    request.setAttribute("selectProductByCods_Franke",list);
                    path="vgr/security/tables/tables_content/selectByCod_Franke.jsp";
                }
                else if (id==6){
                    request.setAttribute("selectProductByCods_Teuco",list);
                    path="vgr/security/tables/tables_content/selectByCod_Teuco.jsp";
                }
                else if (id==7){
                    request.setAttribute("selectProductByCods_Fap",list);
                    path="vgr/security/tables/tables_content/selectByCod_Fap.jsp";
                }
                if (id>7){
                    System.out.println("bura");
                    request.setAttribute("selectProductByCods_OtherP",list);
                    path="vgr/security/tables/tables_content/selectByCod_OtherProduct.jsp";
                }


            }

                                //            G E B R I T


            else if (action.equalsIgnoreCase(ActionChecked.LOADGEBERITSUB1SELECTBOX)) {
                List<Model> list=service.loadGeberitSub1_selectbox();
                request.setAttribute("loadGeberitSub1_selectbox",list);
                path="vgr/security/view/loadGeberit_sub1.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOADGEBERITSUB2FOTESELLIOPTGROUPSELECTBOX)) {
                List<Model> list=service.loadGeberitSub2FotoselliOptGroup_selectbox();
                request.setAttribute("loadGeberitSub2FotoselliOptGroup_selectbox",list);
                path="vgr/security/view/loadGeberit_sub2FotoselliOptGroup.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.LOAD_GEBERITSUB2_KONTRUKSIYON_MONTAJ_OPTGROUP_SELECTBOX)) {
                List<Model> list=service.loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox();
                request.setAttribute("loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox",list);
                path="vgr/security/view/loadGeberit_sub2KonstrukiyonMontajOptGroup.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.CHECKED_GEBERITCOD_FOR_INSERT)) {
                String kod=request.getParameter("kod");
                Model list=service.checkedGeberitKodForInsert(kod);
                if(list!=null){
                    request.setAttribute("_checked_","1");
                    path="vgr/security/vgrPanel/_checked.jsp";
                }else{
                    request.setAttribute("_checked_","2");
                    path="vgr/security/vgrPanel/_checked.jsp";
                }
            }
            else if (action.equalsIgnoreCase(ActionChecked.INSERT_GEBERIT)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        System.out.println("Karahat vitra  ----  > "+flitem.getFieldName());
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("geberitCodName_insert");
                String productName=(String)map.get("geberitProductNameName_insert");
                String url=(String)map.get("geberitProductUrlName_insert");

                long topUrun=Long.parseLong((String)map.get("topIdGeberit_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Geberit_insert"));
                long sub2Table=Long.parseLong((String)map.get("sub2Geberit_insert"));

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertGeberit(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }
            else if(action.equalsIgnoreCase(ActionChecked.SELECT_GEBERIT)){
                List<Model> list=service.selectGeberit();
                request.setAttribute("selectGeberitProduct",list);
                path="vgr/security/tables/geberit_t.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.SELECT_GEBERIT_BYCOD)){
                String kod=request.getParameter("kod");
                List<Model> list=service.selectGeberit_byCod(kod);
                request.setAttribute("selectGeberitProduct",list);
                path="vgr/security/tables/geberit_t.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.DELETE_GEBERIT)){
                String kod=request.getParameter("delete");
                service.deleteGeberit(kod);
            }
            else if(action.equalsIgnoreCase(ActionChecked.EDIT_GEBERIT)){
                String kod=request.getParameter("update");
                Model model=service.editGeberit(kod);
                request.setAttribute("editGeberitProduct",model);
                path="vgr/security/modal/editGeberit.jsp";
            }

            else if(action.equalsIgnoreCase(ActionChecked.UPDATE_GEBERIT)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                long id=Long.parseLong((String)map.get("_id"));//top Id
                String productCod=(String)map.get("geberitCodName_edit");
                String productName=(String)map.get("geberitProductNameName_edit");
                String url=(String)map.get("geberitProductUrlName_insert_edit");

                long topUrun=Long.parseLong((String)map.get("topIdGeberit_edit"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Geberit_edit"));
                long sub2Table=Long.parseLong((String)map.get("sub2Geberit_edit"));
                int active=Integer.parseInt((String)map.get("active_GebName_update")  );
                System.out.println(active+" >>>>>>>");
                model.setActive(active);
                model.setProduct_id(id);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("geberit_picNameName"));
                    model.setProductPicPath((String)map.get("geberit_picPathNameName"));
                }
                String success=service.updateGeberit(model);
                if(success!=null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }


            //    H A N S G R O H E    M A R K A S I


            else if(action.equalsIgnoreCase(ActionChecked.LOAD_HANSGROHESUB2_SELECTBOX)){
                List<Model> list=service.loadHansgroheSub2SelectBox();
                request.setAttribute("loadHansgroheSub2SelectBox",list);
                path="vgr/security/view/loadSelectBox_HansgroheSub2.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.LOAD_HANSGROHE_TALIS_OPTGRP)){
                List<Model> list=service.loadHansgroheTalisOptGrp();
                request.setAttribute("loadHansgroheTalisOptGrp",list);
                path="vgr/security/view/loadSelectBox_HansgroheTalisOptGrp.jsp";
            }

            else if(action.equalsIgnoreCase(ActionChecked.INSERT_HANSGROHE)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();

                String productCod=(String)map.get("hansgroheCodName_insert");
                String productName=(String)map.get("hansgroheProductNameName_insert");
                String url=(String)map.get("hansgroheProductUrlName_insert");


                long topUrun=Long.parseLong((String)map.get("topIdHansgrohe_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Hansgrohe_insert"));
                long sub2Table=Long.parseLong((String)map.get("sub2Hansgrohe_insert"));
                long sub3Table=Long.parseLong((String)map.get("sub3Hansgrohe_insert"));//SUB3

                model.setSub3Table(sub3Table);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertHansgrohe(model);
                System.out.println(success+" >>>>>>>>>>>>>>>");
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi vəya kod bazada movcuddur. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }

            else if(action.equalsIgnoreCase(ActionChecked.SELECT_HANSGROHE_PRODUCT)){
                List<Model> list=service.selectHansgroheProduct();
//                System.out.println(list);
                request.setAttribute("selectHansgroheProduct",list);
                path="vgr/security/tables/hansgrohe_t.jsp";
            }

            else if(action.equalsIgnoreCase(ActionChecked.DELETE_HANSGROHE)){
                String kod=request.getParameter("delete");
                service.deleteHansgrohe(kod);
            }

            else if(action.equalsIgnoreCase(ActionChecked.EDIT_HANSGROHE)){
                String kod=request.getParameter("update");
                Model model=service.editHansgrohe(kod);
                request.setAttribute("editHansgroheProduct",model);
                path="vgr/security/modal/editHansgrohe.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.UPDATE_HANSGROHE)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();

                String productCod=(String)map.get("hansgroheCodName_edit");
                String productName=(String)map.get("hansgroheProductNameName_edit");
                String url=(String)map.get("hansgroheProductUrlName_edit");


                long id=Long.parseLong((String)map.get("hansIdName"));
                long topUrun=Long.parseLong((String)map.get("topIdHansgrohe_edit"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Hansgrohe_edit"));
                long sub2Table=Long.parseLong((String)map.get("sub2Hansgrohe_edit"));
                long sub3Table=Long.parseLong((String)map.get("sub3Hansgrohe_edit"));//SUB3
                int active=Integer.parseInt((String)map.get("activeHName_edit"));

                model.setProduct_id(id);
                model.setActive(active);
                model.setSub3Table(sub3Table);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("picNameName"));
                    model.setProductPicPath((String)map.get("picPathNameName"));
                }
                String success=service.updateHansgrohe(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi vəya kod bazada movcuddur. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }

            //    A X O R    M A R K A S I


            else if(action.equalsIgnoreCase(ActionChecked.LOAD_AXORSUB2_SELECTBOX)){
                List<Model> list=service.loadAxorSub2SelectBox();
                request.setAttribute("loadAxorSub2SelectBox",list);
                path="vgr/security/view/loadSelectBox_AxorSub2.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.LOAD_AXOR_Accesories_SELECTBOX)){
                List<Model> list=service.loadAxorAccesoriesSelectBox();
                request.setAttribute("loadAxorAccesoriesSelectBox",list);
                path="vgr/security/view/loadSelectBox_AxorAccesiories.jsp";
            }

            else if(action.equalsIgnoreCase(ActionChecked.INSERT_AXOR)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();

                String productCod=(String)map.get("axorCodName_insert");
                String productName=(String)map.get("axorProductNameName_insert");
                String url=(String)map.get("axorProductUrlName_insert");


//                long id=Long.parseLong((String)map.get("hansIdName"));
                long topUrun=Long.parseLong((String)map.get("topIdAxor_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Axor_insert"));
                long sub2Table=Long.parseLong((String)map.get("sub2Axor_insert"));
                long sub3Table=Long.parseLong((String)map.get("sub3axor_insert"));//SUB3
//                int active=Integer.parseInt((String)map.get("activeHName_edit"));

//                model.setProduct_id(id);
//                model.setActive(active);
                model.setSub3Table(sub3Table);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("picNameName"));
                    model.setProductPicPath((String)map.get("picPathNameName"));
                }
                String success=service.insertAxor(model);
                System.out.println(success+" >>>>>>>>>>>>>>>");
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi vəya kod bazada movcuddur. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }
            else if(action.equalsIgnoreCase(ActionChecked.SELECT_AXOR_PRODUCT)){
                List<Model> list=service.selectAxorProduct();
//                System.out.println(list);
                request.setAttribute("selectAxorProduct",list);
                path="vgr/security/tables/Axor_t.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.DELETE_AXOR)){
                String kod=request.getParameter("delete");
                service.deleteAxor(kod);
            }
            else if(action.equalsIgnoreCase(ActionChecked.EDIT_AXOR)){
                String kod=request.getParameter("update");
                Model model=service.editAxor(kod);
                request.setAttribute("editAxorProduct",model);
                path="vgr/security/modal/editAxor.jsp";
            }

            else if (action.equalsIgnoreCase(ActionChecked.CHECKED_COD_FOR_UPDATE)) {
                System.out.println(">>>>>>>>>>>>>>>>>>>>>");
                String kod=request.getParameter("kod");
                int id=Integer.parseInt(request.getParameter("id"));
                Model list=service.checkedKodForUpdate(kod,id);
                if(list!=null){
                    request.setAttribute("_checked_","1");
                    path="vgr/security/vgrPanel/_checked.jsp";
                }else{
                    request.setAttribute("_checked_","2");
                    path="vgr/security/vgrPanel/_checked.jsp";
                }
            }
            else if(action.equalsIgnoreCase(ActionChecked.UPDATE_AXOR)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();

                String productCod=(String)map.get("axorCodName_update");
                String productName=(String)map.get("axorProductNameName_update");
                String url=(String)map.get("axorProductUrlName_update");


                long id=Long.parseLong((String)map.get("axorIdName_up"));
                long topUrun=Long.parseLong((String)map.get("topIdAxor_update"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Axor_update"));
                long sub2Table=Long.parseLong((String)map.get("sub2Axor_update"));
                long sub3Table=Long.parseLong((String)map.get("sub3axor_update"));//SUB3
                int active=Integer.parseInt((String)map.get("activeHName_update"));

                model.setProduct_id(id);
                model.setActive(active);
                model.setSub3Table(sub3Table);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("_picNameName"));
                    model.setProductPicPath((String)map.get("_picPathNameName"));
                }
                String success=service.updateAxor(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi vəya kod bazada movcuddur. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }

            //  E N D  A X O R    M A R K A S I

            //    F R A N K E   M A R K A S I


            else if(action.equalsIgnoreCase(ActionChecked.LOAD_FRANKESUB1_SELECTBOX)){
                List<Model> list=service.loadFrankeSub1SelectBox();
                request.setAttribute("loadFrankeSub1SelectBox",list);
                path="vgr/security/view/loadSelectBox_FrankeSub1.jsp";
            }
            else if (action.equalsIgnoreCase(ActionChecked.INSERT_FRANKE)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        System.out.println("Karahat vitra  ----  > "+flitem.getFieldName());
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("frankeCodName_insert");
                String productName=(String)map.get("frankeProductNameName_insert");
                String url=(String)map.get("frankeProductUrlName_insert");

                long topUrun=Long.parseLong((String)map.get("topIdFranke_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Franke_insert"));
                long sub2Table=Long.parseLong((String)map.get("sub2Franke_insert"));

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertFranke(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }
            else if(action.equalsIgnoreCase(ActionChecked.SELECT_FRANKE)){
                List<Model> list=service.selectFranke();
                request.setAttribute("selectFrankeProduct",list);
                path="vgr/security/tables/franke_T.jsp";
            }

            else if(action.equalsIgnoreCase(ActionChecked.EDIT_FRANKE)){
                String kod=request.getParameter("update");
                Model model=service.editFranke(kod);
                request.setAttribute("editFrankeProduct",model);
                path="vgr/security/modal/editFranke.jsp";
            }
            else if(action.equalsIgnoreCase(ActionChecked.UPDATE_FRANKE)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                long id=Long.parseLong((String)map.get("_id_franke"));//
                String productCod=(String)map.get("frankeCodName_edit");
                String productName=(String)map.get("frankeProductNameName_edit");
                String url=(String)map.get("frankeProductUrlName_edit");

                long topUrun=Long.parseLong((String)map.get("topIdFranke_update"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Franke_edit"));
                long sub2Table=Long.parseLong((String)map.get("sub2Franke_update"));
                int active=Integer.parseInt((String)map.get("activeFrankeName_update"));

                model.setActive(active);
                model.setProduct_id(id);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("franke_picNameName"));
                    model.setProductPicPath((String)map.get("franke_picPathNameName"));
                }
                String success=service.updateFranke(model);
                if(success!=null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }

            //    T E U C O   M A R K A S I


            else if (action.equalsIgnoreCase(ActionChecked.INSERT_TEUCO)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("teucoCodName_insert");
                String productName=(String)map.get("teucoProductNameName_insert");
                String url=(String)map.get("teucoProductUrlName_insert");

                long topUrun=Long.parseLong((String)map.get("topIdTeuco_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Teuco"));
                long sub2Table=Long.parseLong((String)map.get("sub2Teuco"));
                long sub3Table=Long.parseLong((String)map.get("sub3Teuco"));

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setSub3Table(sub3Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertTop10(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }

            else if (action.equalsIgnoreCase(ActionChecked.UPDATE_TEUCO)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("teucoCodName_edit");
                String productName=(String)map.get("teucoProductNameName_edit");
                String url=(String)map.get("teucoProductUrlName_edit");

                long topUrun=Long.parseLong((String)map.get("topIdTeuco_edit"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Teuco_edit"));
                long sub2Table=Long.parseLong((String)map.get("sub2Teuco_edit"));
                long sub3Table=Long.parseLong((String)map.get("sub3Teuco_edit"));
                long id=Long.parseLong((String)map.get("_idteucoNmae"));
                int active=Integer.parseInt((String)map.get("active_TeucoName_update"));

                model.setActive(active);
                model.setProduct_id(id);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setSub3Table(sub3Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("teuco_picNameName_up"));
                    model.setProductPicPath((String)map.get("teuco_picPathNameName_up"));
                }
                String success=service.updateTop10(model);
                if(success!=null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }



//          T O P 10        P R O D U C T


            else if(action.equalsIgnoreCase(ActionChecked.SELECT_TOP10_PRODUCT)){
                int id =Integer.parseInt(request.getParameter("topId"));
                List<Model> list=service.selectTop10(id);
                if(id==6){
                    request.setAttribute("selectTeucoProduct",list);
                    path="vgr/security/tables/teuco_T.jsp";
                }
                 else if(id==7){
                    request.setAttribute("selectTeucoProduct",list);
                    path="vgr/security/tables/fap_T.jsp";
                }
                if (id>7){
                    request.setAttribute("selectTeucoProduct",list);
                    path="vgr/security/tables/other_T.jsp";
                }
            }

            else if(action.equalsIgnoreCase(ActionChecked.EDIT_TOP10PRODUCT)){
                String kod=request.getParameter("update");
                int topId=Integer.parseInt(request.getParameter("topId"));
                Model model=service.editTop10Product(kod,topId);
                if (topId==6){
                    request.setAttribute("editTeucoProduct",model);
                    path="vgr/security/modal/editTeuco.jsp";
                }
                 else if (topId==7){
                    request.setAttribute("editFapProduct",model);
                    path="vgr/security/modal/editFap.jsp";
                }
                else if (topId>7){
                    request.setAttribute("editOtherProduct",model);
                    path="vgr/security/modal/editOtherProduct.jsp";
                }
            }
            else if(action.equalsIgnoreCase(ActionChecked.LOADTOP10_SUB2_SELECTBOX)){
                int sub2=Integer.parseInt(request.getParameter("sub2"));
                List<Model> list=service.loadTopSub2SelectBox(sub2);
                if(sub2==61){
                    request.setAttribute("loadFapSub2SelectBox",list);
                    path="vgr/security/view/loadSelectBox_FapSub2.jsp";
                }
                if(sub2==62){
                    request.setAttribute("loadFapSub2SelectBox",list);
                    path="vgr/security/view/loadSelectBox_FapSub2.jsp";
                }
                if(sub2==63){
                    request.setAttribute("loadFapSub2SelectBox",list);
                    path="vgr/security/view/loadSelectBox_FapSub2.jsp";
                }

            }

//    F A P   M A R K A S I

            else if (action.equalsIgnoreCase(ActionChecked.INSERT_FAP)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        System.out.println("Karahat vitra  ----  > "+flitem.getFieldName());
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("fapCodName_insert");
                String productName=(String)map.get("fapProductNameName_insert");
                String url=(String)map.get("fapProductUrlName_insert");

                long topUrun=Long.parseLong((String)map.get("topIdFap_insert"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Fap_insert"));
                long sub2Table=Long.parseLong((String)map.get("sub2Fap_insert"));

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertTop10(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }

            else if(action.equalsIgnoreCase(ActionChecked.UPDATE_FAP)){
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("fapCodName_update");
                String productName=(String)map.get("fapProductNameName_updte");
                String url=(String)map.get("fapProductUrlName_update");


                long id=Long.parseLong((String)map.get("fapIdName_up"));
                long topUrun=Long.parseLong((String)map.get("topIdFap_update"));//top Id
                long sub1Table=Long.parseLong((String)map.get("sub1Fap_update"));
                long sub2Table=Long.parseLong((String)map.get("sub2Fap_update"));
                long sub3Table=0;//SUB3
                int active=Integer.parseInt((String)map.get("activeFapName_update"));

                model.setProduct_id(id);
                model.setActive(active);
                model.setSub3Table(sub3Table);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("fap_picNameName"));
                    model.setProductPicPath((String)map.get("fap_picPathNameName"));
                }
                String success=service.updateTop10(model);
                if(success!=null){
                    request.setAttribute("already","Serverde Prablem yarandi vəya kod bazada movcuddur. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }
            }

            else if (action.equalsIgnoreCase(ActionChecked.INSERT_OTHERPRODUCT)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        System.out.println("Karahat vitra  ----  > "+flitem.getFieldName());
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("otherCodCodName_insert");
                String productName=(String)map.get("otherCodProductNameName_insert");
                String url=(String)map.get("otherCodProductUrlName_insert");

                long topUrun=Long.parseLong((String)map.get("topIdOtherProduct_insert"));//top Id
                long sub1Table=0;
                long sub2Table=0;

                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName("empty");
                    model.setProductPicPath("empty");
                }
                String success=service.insertTop10(model);
                if(success==null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }
            else if (action.equalsIgnoreCase(ActionChecked.UPDATE_OTHERPRODUCT)) {
                String profilPictureName="";
                String profilPicturePath="";
                String filePath="";
                String fileName="";
                Map map=new HashMap();

                if (!ServletFileUpload.isMultipartContent(request)){
                    response.getWriter().println("Doesn't support");
                    return;
                }

                factory=new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File("java.io.tmpdir"));

                upload=new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);
                System.out.println(getServletContext().getRealPath(""));

                uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;

                File uploaddir=new File(uploadPath);
                if (!uploaddir.exists()){
                    uploaddir.mkdir();
                } List formItems=upload.parseRequest(request);
                System.out.println("------------"+formItems.size());
                Iterator itr=formItems.iterator();
                FileItem flitem = null;
                while(itr.hasNext()){
                    flitem= (FileItem) itr.next();
                    if (!flitem.isFormField()){
                        fileName=new File(flitem.getName()).getName();
                        System.out.println(fileName);
                        filePath=uploadPath+File.separator+fileName;
                        System.out.println("FIle path =  "+filePath);
                        File storeFile=new File(filePath);
                        if(flitem.getFieldName().equals("filename")){
                            profilPictureName=fileName;
                            profilPicturePath =filePath;
                        }
                        else{
                            profilPictureName=null;
                            profilPicturePath =null;
                        }

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }

                Model model=new Model();
                String productCod=(String)map.get("otherCodCodName_update");
                String productName=(String)map.get("otherCodProductNameName_update");
                String url=(String)map.get("otherCodProductUrlName_update");

                long topUrun=Long.parseLong((String)map.get("topIdOtherProduct_update"));//top Id
                long sub1Table=0;
                long sub2Table=0;
                long sub3Table=0;
                long id=Long.parseLong((String)map.get("otherProductIdName_up"));
                int active=Integer.parseInt((String)map.get("activeOtherPName_update"));

                model.setActive(active);
                model.setProduct_id(id);
                model.setTopUrun(topUrun);
                model.setSub1Table(sub1Table);
                model.setSub2Table(sub2Table);
                model.setSub3Table(sub3Table);
                model.setProductCod(productCod);
                model.setProductName(productName);
                model.setUrl(url);
                if(profilPictureName!=null&&profilPictureName!=""&&profilPictureName.trim().length()!=0){
                    model.setProductProfilPicName(profilPictureName);
                    model.setProductPicPath(profilPicturePath);
                }else{
                    model.setProductProfilPicName((String)map.get("otherProduct_picNameName"));
                    model.setProductPicPath((String)map.get("otherProduct_picPathNameName"));
                }
                String success=service.updateTop10(model);
                if(success!=null){
                    request.setAttribute("already","Serverde Prablem yarandi. Zəhmət olmasa yenidən cəhd edin");
                    path="vgr/security/vgrPanel/checked.jsp";
                }else{
                    request.setAttribute("admin","admin");
                    path="vgr/security/vgrPanel/admin.jsp";
                }

            }

        }catch (Exception ex){
            ex.printStackTrace();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }
}
