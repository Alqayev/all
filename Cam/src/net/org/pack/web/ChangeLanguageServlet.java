package net.org.pack.web;

import net.org.pack.dao.Dao;
import net.org.pack.dao.DaoImpl;
import net.org.pack.service.Service;
import net.org.pack.service.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Created by TALEH on 14.10.2016.
 */
public class ChangeLanguageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesReq(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesReq(request,response);
    }
    private void proccesReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session;
        Dao dao = new DaoImpl();
        session = request.getSession(true);
        Locale locale = Locale.getDefault();
        String lng = locale.getCountry();

        session.setAttribute( "language", lng);

        if (lng.equals( "UA"))
            locale = new Locale( "uk", "UA");
        else if (lng.equals( "RU"))
            locale = new Locale( "ru", "RU");
        else
            locale = Locale.US;

        ResourceBundle boundle = ResourceBundle.getBundle( "messages", locale);

        for (Enumeration e = boundle.getKeys(); e.hasMoreElements(); ) {
            String key = (String) e.nextElement();
            String s = boundle.getString(key);
            session.setAttribute( key, s);
        }
    }
}
