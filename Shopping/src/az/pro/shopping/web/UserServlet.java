package az.pro.shopping.web;

import az.pro.shopping.dao.DaShopImpl;
import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.dao.user.UserDao;
import az.pro.shopping.dao.user.UserDaoImpl;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.model.user.UserModel;
import az.pro.shopping.service.ServiceShop;
import az.pro.shopping.service.ServiceShopImpl;
import az.pro.shopping.service.user.UserService;
import az.pro.shopping.service.user.UserServiceImpl;
import az.pro.shopping.util.ActionConstant;
import az.pro.shopping.util.user.Security;
import az.pro.shopping.util.user.UserAction;

import javax.el.ELProcessor;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by TALEH on 05.07.2016.
 */
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }

    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ELProcessor processor = new ELProcessor();
//
//        processor.setValue("liste", liste);
//
//        List<String> sonuc = (List<String>) processor.eval("liste.stream().filter(e -> e != null).filter(e -> e.length() > 3).sorted().toList()");
        String action = "";
        String path = "";

        UserDao dao = new UserDaoImpl();
        UserService service = new UserServiceImpl(dao);

        DateFormat differentParseDate = new SimpleDateFormat("MM/dd/yyyy");
        if (request.getParameter("action") != null) {
            action = request.getParameter("action");

        }
        try {
            if (action.equalsIgnoreCase(UserAction.REGISTRUSER)) {

                String name = request.getParameter("name");
                String surname = request.getParameter("surname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String status = request.getParameter("dontHaveUser");
                String checkEmail = service.checkEmail(email);
                if (checkEmail==null){
                    if (status.equals("haveUser")) {
                        String passB = Security.cor(password);
                        UserModel user = new UserModel();
                        user.setUserName(name);
                        user.setUserSurname(surname);
                        user.setUserEmail(email);
                        user.setUserPass(passB);
                        service.registrUser(user);
                        String of=null;
                        request.setAttribute("checkEmail",of);
                        path="views/checkEmail.jsp";
                    } else {
                        System.out.println("dont have user");
                    }
                }
                else{
                    String of=checkEmail+"  Already exist";
                    request.setAttribute("checkEmail",of);
                    path="views/checkEmail.jsp";
                }
            }
            else if (action.equalsIgnoreCase(UserAction.BONUCEREGISTR)){
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                String name=request.getParameter("name");
                String pass=request.getParameter("pass");

                if (email!=null&&password!=null&&pass!=null&&name!=null){
                    long id=service.byId(email,Security.cor(password));
                    if(id!=0){
                        UserModel user=new UserModel();
                        user.setBonuceName(name);
                        user.setBonucePass(Security.cor(pass));
                        user.setPrimaryId(id);
                        String chid =service.chBonId(id);
                        if (chid==null){
                            service.registrBonuce(user);
                            request.setAttribute("checkEmail","Success registr !!!");
                            path="views/checkEmail.jsp";
                        }else{
                            request.setAttribute("checkEmail",chid+"  Already registered !!!");
                            path="views/checkEmail.jsp";
                        }


                    }else {
                        request.setAttribute("checkEmail",null);
                        path="views/checkEmail.jsp";
                    }
                }
            }
            else if (action.equalsIgnoreCase(UserAction.FORGOTPASS)){
                String email=request.getParameter("email");
                if (email!=null &&email!=""){
                    if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")){
                        long id=service.byIdForEmail(email);
                        if (id!=0){
                            String newPassword=Security.UUID();
                            String updatePass=Security.cor(newPassword);
                            service.changePassword(id,updatePass,email,newPassword);
                            request.setAttribute("checkEmailData","Send new password to you mail !");
                            path="views/checkEmail.jsp";
                        }else {
                            request.setAttribute("checkEmailData","Gmail not found.Please create account !");
                            path="views/checkEmail.jsp";
                        }
                    }else {
                        request.setAttribute("checkEmailReg","Please insert correctly email !");
                        path="views/checkEmail.jsp";
                    }
                }
                else{
                    request.setAttribute("checkEmailReg","Please insert correctly email");
                    path="views/checkEmail.jsp";
                }

            }
            else if (action.equalsIgnoreCase(UserAction.PRODUCT)){
                String id=request.getParameter("id");
                List<UserModel>list=service.getProductInfo();
                if (Integer.parseInt(id)==1){
                    request.setAttribute("showProduct",list);
                    path="views/indexJspFeatured.jsp";
                }else{
                    request.setAttribute("showProduct",list);
                    path="WEB-INF/fontsParseJsp/showproduct.jsp";
                }

            }
            else if (action.equalsIgnoreCase(UserAction.ADDORDERD)){
                String prId=request.getParameter("prId");
                String price=request.getParameter("price");
                String bonVal=request.getParameter("BonVal");
                String usId=request.getParameter("usId");
                String usEmail=request.getParameter("usEmail");
                String mobile=request.getParameter("mobile");
                String additionalMobile=request.getParameter("additionalMobile");
                String lastDateOfDelivery=request.getParameter("lastDateOfDelivery");
                String address=request.getParameter("address");
                String count=request.getParameter("orderCount");

                long productId=Long.parseLong(prId);
                long userId=Long.parseLong(usId);
                int bazaCount=0;
                if(count.matches("^[0-9]{1,10}")){
                    bazaCount=Integer.parseInt(count);
                }
                double bazPrice=Double.parseDouble(price);
                double bazaBonVal=Double.parseDouble(bonVal);
                Date bazaDate=null;
                if (lastDateOfDelivery.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                    bazaDate=differentParseDate.parse(lastDateOfDelivery);
                }
                UserModel user=new UserModel();
                user.setProducId(productId);
                user.setProuctPrice(bazPrice);
                user.setProductBonuceValue(bazaBonVal);
                user.setPrimaryId(userId);
                user.setUserEmail(usEmail);
                user.setUserMobil(mobile);
                user.setUserAdditionalMob(additionalMobile);
                user.setUserAddress(address);
                user.setOdrCount(bazaCount);
                user.setLastDateOfDelivery(bazaDate);
                UserModel backUser= service.orderedInsert(user);
                if (backUser==null){
                    request.setAttribute("showProduct",user);
                    path="WEB-INF/fontsParseJsp/editOrderedModal.jsp";
                }
                else{
                    request.setAttribute("odrd",null);
                    path="WEB-INF/fontsParseJsp/orderedCheckLog.jsp";
                }
            }
            else if (action.equalsIgnoreCase(UserAction.checkedOdrHave)){
                String id=request.getParameter("id");
                long b=0;
                if (id!=null){
                    b=Long.parseLong(id);
                }
                UserModel backUser= service.orderedAddress(b);
                if (backUser!=null){
                    request.setAttribute("odrd",backUser);
                    path="WEB-INF/fontsParseJsp/editOrderedModal.jsp";
                }else {
                    request.setAttribute("odrd",null);
                    path="WEB-INF/fontsParseJsp/orderedCheckLog.jsp";
                }
            }
            else if (action.equalsIgnoreCase(UserAction.showPictureModal)){
                long id=Long.parseLong(request.getParameter("prid"));
                UserModel user=service.getPicture(id);
                request.setAttribute("picture",user);
                path="WEB-INF/fontsParseJsp/showPicture.jsp";
            }
            else if (action.equalsIgnoreCase(UserAction.contactUs)){
                String name=request.getParameter("name");
                String email=request.getParameter("email");
                String subject=request.getParameter("subject");
                String text=request.getParameter("text");
                String []mas=new String[4];
                if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")){


                    service.contactUs(name,email,subject,text);
                }else{
                    request.setAttribute("odrd",null);
                    path="WEB-INF/fontsParseJsp/orderedCheckLog.jsp";
                }

            }
            else if (action.equalsIgnoreCase(UserAction.productLibrary)){
                List<ModelShop> list=service.productLibrary();
                request.setAttribute("getProductLibrary",list);
                path="views/productLibrary.jsp";
            }
            else if (action.equalsIgnoreCase(UserAction.advUserProductSearch)){
                String name =request.getParameter("name");
                String minPrice=request.getParameter("minPrice");
                String maxPrice=request.getParameter("maxPrice");
                String minBon=request.getParameter("minBon");
                String maxBon=request.getParameter("maxBon");
                String category=request.getParameter("category");
                double bazaMinPrice=0;
                if (minPrice!=null&&minPrice!=""&&minPrice.trim().length()!=0){
                    bazaMinPrice=Double.parseDouble(minPrice);
                }
                double bazaMaxPrice=0;
                if (maxPrice!=null&&maxPrice!=""&&maxPrice.trim().length()!=0){
                    bazaMaxPrice=Double.parseDouble(maxPrice);
                }
                double bazaMinBonVal=0;
                if (minBon!=null&&minBon!=""&&minBon.trim().length()!=0){
                    bazaMinBonVal=Double.parseDouble(minBon);
                }
                double bazaMaxBonVal=0;
                if (maxBon!=null&&maxBon!=""&&maxBon.trim().length()!=0){
                    bazaMaxBonVal=Double.parseDouble(maxBon);
                }
                int bazaCategory=Integer.parseInt(category);
                UserModel user=new UserModel();
                user.setProductName(name);
                user.setMinPrice(bazaMinPrice);
                user.setMaxPrice(bazaMaxPrice);
                user.setMinBonVal(bazaMinBonVal);
                user.setMaxBonPrice(bazaMaxBonVal);
                user.setCategory(bazaCategory);
                List<UserModel> list=service.advSearchUserProduct(user);
                request.setAttribute("getProductLibrary",list);
                path="views/productLibrary.jsp";
            }
            else if(action.equalsIgnoreCase(ActionConstant.insertCheckBox)) {
                List<ModelShop> list=service.insertCheckBox();
                request.setAttribute("getinsertCheckBox",list);
                path="WEB-INF/fontsParseJsp/insertcheckbox.jsp";
            }
        } catch (Exception ex) {
        ex.printStackTrace();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);

    }
}
