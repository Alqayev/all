package net.org.pack.web;

import net.org.pack.dao.Dao;
import net.org.pack.dao.DaoImpl;
import net.org.pack.model.Model;
import net.org.pack.service.Service;
import net.org.pack.service.ServiceImpl;
import net.org.pack.utilty.Security;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by TALEH on 12.10.2016.
 */
public class chServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "";
        HttpSession session;
        Dao dao = new DaoImpl();
        Service service = new ServiceImpl(dao);
        String name = request.getParameter("checkedName");
        String pass = request.getParameter("checkedPass");
        session = request.getSession(true);
        if (name.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}") && pass != null && pass != "" && !pass.contains("`") && !pass.contains("'")
                &&!pass.contains("*") && !pass.contains("+") &&!pass.contains("?") && !pass.contains("|")&&!pass.contains("^") && !pass.contains("\'")
                &&!pass.contains("\"") && !pass.contains("[") &&!pass.contains("]") && !pass.contains("~")&&!pass.contains("%") && !pass.contains(":")) {
            Model user = service.checkLogin(name, Security.cor(pass));
            if (user == null) {
                session.setAttribute("adnCh",user);
                path = "fonts/security/LoGiNaDmIn_.jsp";
            } else {

                if (user.getAdName().equals("AdmiN")) {
                    session.setAttribute("adnch",user);
                    path = "index.jsp";
                }
            }
        }else{
            path = "fonts/security/LoGiNaDmIn_.jsp";
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }

//        String passs=Security.cor("_LqayeV_Z_T");
}
