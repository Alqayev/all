package az.pro.shopping.web;

import az.pro.shopping.dao.DaShopImpl;
import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.service.ServiceShop;
import az.pro.shopping.service.ServiceShopImpl;
import az.pro.shopping.util.ActionConstant;
import az.pro.shopping.util.Query;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by TALEH on 23.06.2016.
 */
public class AlwaysServlet extends HttpServlet {
    private static final String UPLOAD_DIRECTORY="OldUserSendMail";
    private static final String FIELD_NAME="SendTextUsers.txt";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request,response);
    }
    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = "";
        String path = "";

        DaoShop dao = new DaShopImpl();
        ServiceShop service = new ServiceShopImpl(dao);

        DateFormat differentParseDate = new SimpleDateFormat("MM/dd/yyyy");
        if (request.getParameter("action") != null) {
            action = request.getParameter("action");
//            Part filePart = request.getPart("file");
        }
        if (action.equalsIgnoreCase(ActionConstant.SENDMAILNEWUSERS)){
//            System.out.println( "dfsdfsfsd");
            ClassThread s=new ClassThread();

            s.start();

            Update up=new Update();
//            up.setPriority(Thread.MAX_PRIORITY);

            up.start();

        }
        else if (action.equalsIgnoreCase(ActionConstant.SENDMAILOLDUSERS)){
            String uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY;
            File uploaddir=new File(uploadPath);
            if (!uploaddir.exists()){
                uploaddir.mkdir();
            }
            SendMailOldUsers oldUsers=new SendMailOldUsers();
            oldUsers.filePath=uploadPath;
            oldUsers.start();
        }
        RequestDispatcher requestDispatcher=request.getRequestDispatcher(path);
        requestDispatcher.forward(request,response);
    }
}
