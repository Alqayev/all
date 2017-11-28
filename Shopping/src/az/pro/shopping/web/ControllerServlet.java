package az.pro.shopping.web;

import az.pro.shopping.cnt.DbConnect;
import az.pro.shopping.dao.DaShopImpl;
import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.service.ServiceShop;
import az.pro.shopping.service.ServiceShopImpl;
import az.pro.shopping.util.ActionConstant;
import com.google.gson.Gson;
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
 * Created by TALEH on 17.06.2016.
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
        proccesRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request,response);
    }


    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String action="";
       String path="";

       DaoShop dao=new DaShopImpl();
       ServiceShop service=new ServiceShopImpl(dao);

        DateFormat differentParseDate=new SimpleDateFormat("MM/dd/yyyy");
        DateFormat defaultParseDate=new SimpleDateFormat("yyyy/MM/dd");
        if(request.getParameter("action")!=null){
            action = request.getParameter("action");
       }

        try {
            if (action.equalsIgnoreCase(ActionConstant.ADMINGETCUSTOMER)){
//                System.out.println("salam");
                List<ModelShop> list=service.getAdminShoppingList();
                request.setAttribute("getAdminShoppingList",list);
                path="WEB-INF/fontsParseJsp/CustomerList.jsp";

            }

            else if(action.equalsIgnoreCase(ActionConstant.ADMINGETORDERED)){
                List<ModelShop> list=service.getAdminOrderedList();
                request.setAttribute("getAdminOrderedList",list);
                path="WEB-INF/fontsParseJsp/allOrderedList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.ADMINGETPRODUCT)){
                List<ModelShop> list=service.getAdminProductList();
                request.setAttribute("getAdminProductList",list);
                path="WEB-INF/fontsParseJsp/allProductList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.ADMINGETPBONUCE)){
                List<ModelShop> list=service.getAdminBonuceList();
                request.setAttribute("getAdminBonuceList",list);
                path="WEB-INF/fontsParseJsp/allBonuceList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.EDITCUSTOMERLIST)){
                int id=Integer.parseInt(request.getParameter("data"));
                ModelShop customer=service.getAdminEditCustomerList(id);
                request.setAttribute("editCustomerList",customer);
                path="views/customerEdit.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.EDITProductLIST)){
                int id=Integer.parseInt(request.getParameter("data"));
                ModelShop product=service.getAdminEditProductList(id);
                request.setAttribute("editProductList",product);
                path="views/productEdit.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.EDITBONUCELIST)){
                int id=Integer.parseInt(request.getParameter("data"));
                ModelShop product=service.getAdminEditBonuceList(id);
                request.setAttribute("editBonuceList",product);
                path="views/bonuceEdit.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.UPDATECUSTOMERLIST)){
                Date sendDate=null;
                int realactive=0;
                String realTasks=null;
                int id=Integer.parseInt(request.getParameter("id"));
                int active=Integer.parseInt(request.getParameter("active"));
                int choosedActive=Integer.parseInt(request.getParameter("choosedActive"));
                String loginDate=request.getParameter("loginDate");
                String defaultDate=request.getParameter("defaultDate");
                String tasks=request.getParameter("tasks");
                String choosedTasks=request.getParameter("choosedTasks");

//
//                System.out.println(choosedActive);
//                System.out.println("loginDate"+loginDate);
//                System.out.println("defaultDate"+defaultDate);
//                System.out.println("tasks"+tasks);
//                System.out.println("choosedTasks"+choosedTasks);
                if (loginDate.equals(defaultDate)){
                    String b=defaultDate.replace("-","/");

                    sendDate=defaultParseDate.parse(b);
                }
                else{
                    sendDate=differentParseDate.parse(loginDate);
                }

                if (choosedActive==2){
                    realactive=active;
                }else{
                    realactive=choosedActive;
                }
                if (choosedTasks.equals("2")) {
                    realTasks=tasks;
                }else{
                    realTasks=choosedTasks;
                }
//                System.out.println("\n\n\n\n\n");
//
//                System.out.println(id);
//                System.out.println(sendDate);
//                System.out.println(realactive);
//                System.out.println(realTasks);


                ModelShop shop=new ModelShop();
                shop.setPrimaryId(id);
                shop.setLogginDate(sendDate);
                shop.setActive(realactive);
                shop.setTasks(realTasks);
                service.updateCustomerList(shop);
            }

            else if(action.equalsIgnoreCase(ActionConstant.UPDATEPRODUCTLIST)){
                Date sendDate=null;
                int realactive=0;

                int id=Integer.parseInt(request.getParameter("id"));
                int active=Integer.parseInt(request.getParameter("active"));
                int choosedActive=Integer.parseInt(request.getParameter("choosedActive"));
                double price=Double.parseDouble(request.getParameter("price"));
                String productName=request.getParameter("productName");
                double bonuceValue=Double.parseDouble(request.getParameter("bonuceValue"));
                String defaultDate=request.getParameter("defaultDate");
                String choosedDate=request.getParameter("choosedDate");
                String chooseCategory=request.getParameter("category");

                if (choosedDate.equals(defaultDate)){
                    String b=defaultDate.replace("-","/");

                    sendDate=defaultParseDate.parse(b);
                }
                else{
                    sendDate=differentParseDate.parse(choosedDate);
                }

                if (choosedActive==2){
                    realactive=active;
                }else{
                    realactive=choosedActive;
                }

                ModelShop shop=new ModelShop();
                shop.setProductName(productName);
                shop.setProductActive(realactive);
                shop.setProductBonusValue(bonuceValue);
                shop.setProductImportDate(sendDate);
                shop.setProductPrice(price);
                shop.setProductId(id);
                shop.setDictId(Integer.parseInt(chooseCategory));
                service.updateProductList(shop);

            }

            else if(action.equalsIgnoreCase(ActionConstant.UPDATEPRODUCTPICTURE)){

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

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{
                        }

                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                if (flitem.getSize()!=0){
                    long id= Integer.parseInt((String) map.get("picOwntexName"));
                    service.updateCustomerPicture(id,filePath);
                }
                path="admin.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.UPDATEBONUCELIST)){
                Date sendDate=null;
                int realactive=0;
                int id=Integer.parseInt(request.getParameter("id"));
                String bonuceNme=request.getParameter("bonuceNme");
                double bonuceQuontity=Double.parseDouble(request.getParameter("bonuceQuontity"));
                int bazaActive=Integer.parseInt(request.getParameter("bazaActive"));
                int defoultActive=Integer.parseInt(request.getParameter("defoultActive"));
                String defoultday=request.getParameter("defoultday");
                String editDay=request.getParameter("editDay");

                if (editDay.equals(defoultday)){
                    String b=defoultday.replace("-","/");

                    sendDate=defaultParseDate.parse(b);
                }
                else{
                    sendDate=differentParseDate.parse(editDay);
                }

                if (defoultActive==2){
                    realactive=bazaActive;
                }else{
                    realactive=defoultActive;
                }
                ModelShop shop=new ModelShop();
                shop.setBonuceName(bonuceNme);
                shop.setBonuceActive(realactive);
                shop.setBonuceQuontity(bonuceQuontity);
                shop.setBonuceOpenDate(sendDate);
                shop.setPrimaryId(id);
                service.updateBonuceList(shop);
            }

            else if (action.equalsIgnoreCase(ActionConstant.UPDATEORDERDACTIVE)){
                int active=Integer.parseInt(request.getParameter("active"));
                long id=Integer.parseInt(request.getParameter("id"));
                service.updateOrderedActive(active,id);

            }

            else if(action.equalsIgnoreCase(ActionConstant.INSERTPRODUCTLIST)){

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

                        if (flitem.getSize()!=0){
                            flitem.write(storeFile);
                        }
                        else{

                        }


                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                if (flitem.getSize()!=0){
                    double price=0;
                    double bonus=0;
                    String productName= (String) map.get("productInsertProductNameTextId");
                    String proPrice=(String)map.get("productInsertProductPriceTextId");
                    String proBonVal=(String)map.get("productInsrtProductBonValTextId");
                    String proCategory=(String)map.get("insertCheckBoxs");
                    if(proPrice.length()!=0){
                        price=Double.parseDouble(proPrice);
                    }
                    if(proBonVal.length()!=0){
                        bonus=Double.parseDouble(proBonVal);
                    }
                    ModelShop shop=new ModelShop();
                    shop.setProductName(productName);
                    shop.setProductPrice(price);
                    shop.setProductBonusValue(bonus);
                    shop.setProductPicture(filePath);
                    shop.setFileName(fileName);
                    shop.setDictId(Integer.parseInt(proCategory));
                    service.insertProductPicture(shop);
                }else {
                    double price=0;
                    double bonus=0;
                    String productName= (String) map.get("productInsertProductNameTextId");
                    String proPrice=(String)map.get("productInsertProductPriceTextId");
                    String proBonVal=(String)map.get("productInsrtProductBonValTextId");
                    String proCategory=(String)map.get("insertCheckBoxs");
                    if(proPrice.length()!=0){
                        price=Double.parseDouble(proPrice);
                    }
                    if(proBonVal.length()!=0){
                        bonus=Double.parseDouble(proBonVal);
                    }
                    ModelShop shop=new ModelShop();
                    shop.setProductName(productName);
                    shop.setProductPrice(price);
                    shop.setProductBonusValue(bonus);
                    shop.setProductPicture("NOT PICTURE");
                    shop.setDictId(Integer.parseInt(proCategory));
                    service.insertProductPicture(shop);
                }

                path="admin.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.ADVSEARCHCUSTOMERS)){
                String name=request.getParameter("name");
                String surname=request.getParameter("surname");
                String email=request.getParameter("email");
                String beginDate=request.getParameter("beginDate");
                String endDate=request.getParameter("endDate");


                String task=request.getParameter("task");
                int active=Integer.parseInt(request.getParameter("active"));
                Date bazaBeginDate=null;
                Date bazaEndDate=null;
//                System.out.println(beginDate);
//                System.out.println(endDate);

                if(beginDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazaBeginDate=differentParseDate.parse(beginDate);
                }
                if(endDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazaEndDate=differentParseDate.parse(endDate);
                }
                ModelShop shop=new ModelShop();
                shop.setName(name);
                shop.setSurname(surname);
                shop.setEmail(email);
                shop.setBeginLoginDate(bazaBeginDate);
                shop.setEndLoginDate(bazaEndDate);
                shop.setTasks(task);
                shop.setActive(active);
                shop.setBonuceName(beginDate);
                shop.setAddress(endDate);

                List<ModelShop>list=service.customerAdvSercah(shop);
                request.setAttribute("getAdminShoppingList",list);
                path="WEB-INF/fontsParseJsp/CustomerList.jsp";
//
            }

            else if(action.equalsIgnoreCase(ActionConstant.ADVSEARCHORDERS)){
                String name=request.getParameter("name");
                String surname=request.getParameter("surname");
                String email=request.getParameter("email");

                String orderbeginDate=request.getParameter("orderbeginDate");
                String orderendDate=request.getParameter("orderendDate");
                String deliverybeginDate=request.getParameter("deliverybeginDate");
                String deliveryendDate=request.getParameter("deliveryendDate");

                String mobile=request.getParameter("mobile");
                String mobile2=request.getParameter("mobile2");

                String productName=request.getParameter("productName");
                String countMin=request.getParameter("countMin");
                String countMax=request.getParameter("countMax");
                String address=request.getParameter("address");
                int active=Integer.parseInt(request.getParameter("active"));

                Date bazaorderbeginDate=null;
                Date bazaorderendDate=null;
                Date bazadeliverybeginDate=null;
                Date bazadeliveryendDate=null;

                if(orderbeginDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
//                    System.out.println("rrrrr"+orderbeginDate);
                    bazaorderbeginDate=differentParseDate.parse(orderbeginDate);
                }
                if(orderendDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazaorderendDate=differentParseDate.parse(orderendDate);
                }
                if(deliverybeginDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazadeliverybeginDate=differentParseDate.parse(deliverybeginDate);
                }
                if(deliveryendDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazadeliveryendDate=differentParseDate.parse(deliveryendDate);
                }

                int countBazaMin=0;
                int countBazaMax=0;

                if(countMin.matches("^[0-9]{1,10}")){
                    countBazaMin=Integer.parseInt(countMin);
                }
                if(countMax.matches("^[0-9]{1,10}")){
                    countBazaMax=Integer.parseInt(countMax);
                }

                ModelShop shop=new ModelShop();
                shop.setName(name);
                shop.setSurname(surname);
                shop.setEmail(email);

                shop.setOrderBeginDate(bazaorderbeginDate);
                shop.setOrderEndDate(bazaorderendDate);
                shop.setDeliveryBeginDate(bazadeliverybeginDate);
                shop.setDeliveryEndDate(bazadeliveryendDate);

                shop.setProductName(productName);
                shop.setMinCountOrdered(countBazaMin);
                shop.setMaxCountOrdered(countBazaMax);
                shop.setMobile(mobile);
                shop.setMobile2(mobile2);
                shop.setAddress(address);
                shop.setActive(active);
//                System.out.println("name "+name+"\nsurname "+surname+"\nemail "+email+"\nbazaorderbeginDate "+orderbeginDate+"\nbazaorderendDate "+bazaorderendDate+"\nbazadeliverybeginDate "+
//                        bazadeliverybeginDate+"\nbazadeliveryendDate "+bazadeliveryendDate+"\nbazaMinOne "+bazaMinOne+"\nbazaMaxOne "+bazaMaxOne+"\nbazaMinTwo "+ bazaMinTwo
//                +"\nbazaMaxTwo "+bazaMaxTwo+"\nbazaMinThree "+bazaMinThree+"\nbazaMaxThree "+bazaMaxThree+"\nbazaMinFour "+bazaMinFour+"\nbazaMaxFour "+bazaMaxFour
//                +"\nbazaMinFive "+bazaMinFive+"\nbazaMaxFive "+bazaMaxFive+"\nbazaMinSix "+bazaMinSix+"\nbazaMaxSix "+bazaMaxSix+"\nmobile "+mobile+"\nmobile2 "+mobile2
//                +"\nsetTasks "+task+"\nactive "+active);
                List<ModelShop>list=service.orderedAdvSercah(shop);
//                System.out.println(list);

                request.setAttribute("getAdminOrderedList",list);
                path="WEB-INF/fontsParseJsp/allOrderedList.jsp";
            }
            else if(action.equalsIgnoreCase(ActionConstant.ADVSEARCHPRODUCTS)) {
                String name = request.getParameter("name");
                String advProductActiveSearch = request.getParameter("advProductActiveSearch");

                String minPrice = request.getParameter("minPrice");
                double bazaMinPrice=0;
                if (minPrice.matches("^[0-9].{1,10}||[0-9]{1,10}")&&minPrice.length()!=0){
                    bazaMinPrice=Double.parseDouble(minPrice);
                }
                String advPriceMax = request.getParameter("advPriceMax");
                double bazaMaxPrice=0;
                if (advPriceMax.matches("^[0-9].{1,10}||[0-9]{1,10}")&&advPriceMax.length()!=0){
                    bazaMaxPrice=Double.parseDouble(advPriceMax);
                }
                String advBonucValueMin = request.getParameter("advBonucValueMin");
                double bonValueMin=0;
                if (advBonucValueMin.matches("^[0-9].{1,10}||[0-9]{1,10}")&&advBonucValueMin.length()!=0){
                    bonValueMin=Double.parseDouble(advBonucValueMin);
                }
                String advBonucValueMax = request.getParameter("advBonucValueMax");
                double bonValueMax=0;
                if (advBonucValueMax.matches("^[0-9].{1,10}||[0-9]{1,10}")&&advBonucValueMax.length()!=0){
                    bonValueMax=Double.parseDouble(advBonucValueMax);
                }
                String advPricebeginDate = request.getParameter("advPricebeginDate");
                String advPriceEndDate = request.getParameter("advPriceEndDate");

                Date beginBazaDate=null;
                Date endBazaDate=null;

                if(advPricebeginDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
//                    System.out.println("rrrrr"+orderbeginDate);
                    beginBazaDate=differentParseDate.parse(advPricebeginDate);
                }
                if(advPriceEndDate.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
//                    System.out.println("rrrrr"+orderbeginDate);
                    endBazaDate=differentParseDate.parse(advPriceEndDate);
                }
                ModelShop shop=new ModelShop();
                shop.setProductName(name);
                shop.setProductActive(Integer.parseInt(advProductActiveSearch));
                shop.setBeginBroductPrice(bazaMinPrice);
                shop.setEndProductPrice(bazaMaxPrice);
                shop.setBeginProductBonusValue(bonValueMin);
                shop.setEndProductBonusValue(bonValueMax);
                shop.setBeginProductImportDate(beginBazaDate);
                shop.setEndProductImportDate(endBazaDate);

                List<ModelShop> list=service.productAdvSercah(shop);
                request.setAttribute("getAdminProductList",list);
                path="WEB-INF/fontsParseJsp/allProductList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.ADVSEARCHBONUCES)) {
                String name = request.getParameter("name");
                String advBonuceActiveSearch= request.getParameter("advBonuceActiveSearch");
                String advCustomerBonuceSurnameId = request.getParameter("advCustomerBonuceSurnameId");
                String advCustomerBonuceEmailId=request.getParameter("advCustomerBonuceEmailId");
                String advBonucNameId=request.getParameter("advBonucNameId");


                String advBonucQuontityMin = request.getParameter("advBonucQuontityMin");
                double bazaMinQuontity = 0;
                if (advBonucQuontityMin.matches("^[0-9].{1,10}||[0-9]{1,10}") && advBonucQuontityMin.length() != 0) {
                    bazaMinQuontity = Double.parseDouble(advBonucQuontityMin);
                }
                String advBonucQuontityMax = request.getParameter("advBonucQuontityMax");
                double bazaMaxQuontity = 0;
                if (advBonucQuontityMax.matches("^[0-9].{1,10}||[0-9]{1,10}") && advBonucQuontityMax.length() != 0) {
                    bazaMaxQuontity = Double.parseDouble(advBonucQuontityMax);
                }

                String advOpenBonuceDatebegin = request.getParameter("advOpenBonuceDatebegin");
                String advOpenBonuceDateEnd = request.getParameter("advOpenBonuceDateEnd");

                Date beginBazaDate = null;
                Date endBazaDate = null;

                if (advOpenBonuceDatebegin.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")) {
//                    System.out.println("rrrrr"+orderbeginDate);
                    beginBazaDate = differentParseDate.parse(advOpenBonuceDatebegin);
                }
                if (advOpenBonuceDateEnd.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")) {
//                    System.out.println("rrrrr"+orderbeginDate);
                    endBazaDate = differentParseDate.parse(advOpenBonuceDateEnd);
                }
                ModelShop shop=new ModelShop();
                shop.setName(name);
                shop.setSurname(advCustomerBonuceSurnameId);
                shop.setEmail(advCustomerBonuceEmailId);
                shop.setBonuceName(advBonucNameId);
                shop.setBonuceActive(Integer.parseInt(advBonuceActiveSearch));
                shop.setBonucQuontityMin(bazaMinQuontity);
                shop.setBonucQuontityMax(bazaMaxQuontity);
                shop.setBonucBeginOpenDate(beginBazaDate);
                shop.setBonucEndOpenDate(endBazaDate);

                List<ModelShop> list=service.bonuceAdvSercah(shop);
                request.setAttribute("getAdminBonuceList",list);
                path="WEB-INF/fontsParseJsp/allBonuceList.jsp";
            }
            else if(action.equalsIgnoreCase(ActionConstant.CUSTOMERGROUPBY)) {
                List<ModelShop> list=service.customerGroupBy();
//                System.out.println(list);

                request.setAttribute("getAdminShoppingList",list);
                path="WEB-INF/fontsParseJsp/CustomerList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.ORDEREDGROUPBY)) {
                List<ModelShop> list=service.orderedGroupBy();
                request.setAttribute("getAdminOrderedList",list);
                path="WEB-INF/fontsParseJsp/allOrderedList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.PRODUCTGROUPBY)) {
                List<ModelShop> list=service.productGroupBy();
                request.setAttribute("getAdminProductList",list);
                path="WEB-INF/fontsParseJsp/allProductList.jsp";
            }
//
            else if(action.equalsIgnoreCase(ActionConstant.BONUCEGROUPBY)) {
                List<ModelShop> list=service.bonuceGroupBy();
                request.setAttribute("getAdminBonuceList",list);
                path="WEB-INF/fontsParseJsp/allBonuceList.jsp";
            }

            else if(action.equalsIgnoreCase(ActionConstant.DELIVERYDATEGROUPBY)) {
                List<ModelShop> list=service.orderedDeliveryDateGroupBy();
                request.setAttribute("getAdminOrderedList",list);
                path="WEB-INF/fontsParseJsp/allOrderedList.jsp";
            }
            else if(action.equalsIgnoreCase(ActionConstant.insertCheckBox)) {
                List<ModelShop> list=service.insertCheckBox();
                request.setAttribute("getinsertCheckBox",list);
                path="WEB-INF/fontsParseJsp/insertcheckbox.jsp";
            }
            else if(action.equalsIgnoreCase(ActionConstant.chartAction)) {
                List<ModelShop> lineList=service.chartAction();
                String convertGson=new Gson().toJson(lineList);
//                for(ModelShop mo:lineList){
//                    System.out.println("Count :  "+mo.getPrCount()+"  Month : "+mo.getChartMonth());
//                    System.out.println("Name : "+mo.getProductName());
//                }
                System.out.println(convertGson);

                request.setAttribute("convertGson",convertGson);
                path="WEB-INF/fontsParseJsp/showStatistic.jsp";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        RequestDispatcher requestDispatcher=request.getRequestDispatcher(path);
        requestDispatcher.forward(request,response);
    }
}
