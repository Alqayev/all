package az.pro.shopping.web;

import az.pro.shopping.dao.user.UserDao;
import az.pro.shopping.dao.user.UserDaoImpl;
import az.pro.shopping.service.user.UserService;
import az.pro.shopping.service.user.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by TALEH on 21.07.2016.
 */
@WebServlet("/sdd")
public class Servletsd extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }
    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = "";
        if (request.getParameter("action") != null) {
            action = request.getParameter("action");
            System.out.println("Action : "+action);
//            System.out.println(request.);

        }
}
    @Override
    public void init(){
        System.out.println("tamamdir");
    }
}
