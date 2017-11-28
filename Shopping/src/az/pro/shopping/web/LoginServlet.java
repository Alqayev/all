package az.pro.shopping.web;

import az.pro.shopping.dao.user.UserDao;
import az.pro.shopping.dao.user.UserDaoImpl;
import az.pro.shopping.model.user.UserModel;
import az.pro.shopping.service.user.UserService;
import az.pro.shopping.service.user.UserServiceImpl;
import az.pro.shopping.util.user.Security;
import az.pro.shopping.util.user.UserAction;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/**
 * Created by TALEH on 05.07.2016.
 */
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = "";
        String path = "";
        HttpSession session;
        UserDao dao = new UserDaoImpl();
        UserService service = new UserServiceImpl(dao);
        String email=request.getParameter("checkEmailLoggin");
        String password=request.getParameter("checkPassLogin");
        String check=null;
        session=request.getSession(true);
        if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")&& password!=null&&password!=""&&!password.contains("`")&&!password.contains("'")){
//            session=request.getSession(true);
            UserModel user=service.checkLogin(email, Security.cor(password));
            if (user==null){
                check="Email or password wrong !";
                session.setAttribute("checkLogg",check);
                path="login.jsp";
//                request.setAttribute("checkEmailReg","Acount not found !");
//                path="views/checkEmail.jsp";
            }else {
                if (user.getUserTask().equals("ADMIN")){
                    session.setAttribute("checkLogg",null);
                    session.setAttribute("checkLoggUser",user);
                    path="admin.jsp";
                }else {
                    session.setAttribute("checkLogg",null);
                    session.setAttribute("checkLoggUser",user);
                    path="news.jsp";
                }

            }
        }else {
            check="Incorrect email or password";
            session.setAttribute("checkLogg",check);
            path="login.jsp";
//            request.setAttribute("checkEmailReg","Please insert correctly email !");
//            path="views/checkEmail.jsp";
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }
}
