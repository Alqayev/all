package net.org.pack.web;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import net.org.pack.dao.Dao;
import net.org.pack.dao.DaoImpl;
import net.org.pack.db.DbConnect;
import net.org.pack.model.Model;
import net.org.pack.service.Service;
import net.org.pack.service.ServiceImpl;
import net.org.pack.utilty.ActionChecked;
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
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by TALEH on 11.10.2016.
 */
public class ControllerServlet extends HttpServlet implements Serializable {
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
      String action="";
      String path="";
        Dao dao=new DaoImpl();
        Service service=new ServiceImpl(dao);
      if (request.getParameter("action")!=null){
          action=request.getParameter("action");
          path="index.jsp";
      }
      try {
          if (action.equalsIgnoreCase(ActionChecked.CHECKEDCONTACT)){
              String name=request.getParameter("name");
              String email=request.getParameter("email");
              StringBuilder text=new StringBuilder();
              text.append(request.getParameter("text"));
              Model model=new Model();
              model.setEmail(email);
              model.setUserName(name);
              model.setText(text);
              String checked=service.contactMet(model);
              if (checked!=null){
                  request.setAttribute("checkMail","error");
                  path="views/checked.jsp";
              }
              else {
                  service.insertUserInfo(name,email);
                  request.setAttribute("checkMail",null);
                  path="views/checked.jsp";
              }
//

          }

          else if (action.equalsIgnoreCase(ActionChecked.INSERTPICFORM)){
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
              int superId=Integer.parseInt((String)map.get("supername"));
              int subId=Integer.parseInt((String)map.get("subname"));
              int subsubId=Integer.parseInt((String)map.get("subsubname"));
              Model model=new Model();
              model.setSuperId(superId);
              model.setSubId(subId);
              model.setSubsubId(subsubId);
              model.setPicPass(filePath);
              model.setPicName(fileName);
              service.insertCategoryPic(model);
              }
          }

          else if (action.equalsIgnoreCase(ActionChecked.INSERTOURWORK)){
              String UPLOAD_DIRECTORY2="ourwork";
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

              uploadPath=getServletContext().getRealPath("")+ File.separator+UPLOAD_DIRECTORY2;

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
                  int superId=Integer.parseInt((String)map.get("supername"));
                  Model model=new Model();
                  model.setSuperId(superId);
                  model.setPicPass(filePath);
                  model.setPicName(fileName);
                  service.insertOurWorkPic(model);
              }
          }
          else if (action.equalsIgnoreCase(ActionChecked.SHOWOURPRODUCTS)){
              int id=Integer.parseInt(request.getParameter("id"));
              if (id==2){
                  List<Model> list=service.showSurmali();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              } else if (id==3){
                  List<Model> list=service.showpardali();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==4){
                  List<Model> list=service.shushelenmeSabit();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==5){
                  List<Model> list=service.daxiliarakesme();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==6){
                  List<Model> list=service.silikoncebhe();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==7){
                  List<Model> list=service.qapaqlicebhe();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==8){
                  List<Model> list=service.monetsistem();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==9){
                  List<Model> list=service.izosistem();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==10){
                  List<Model> list=service.aluwood();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==11){
                  List<Model> list=service.ytavan();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==12){
                  List<Model> list=service.camtavan();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==13){
                  List<Model> list=service.tent();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==14){
                  List<Model> list=service.skylight();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==15){
                  List<Model> list=service.polikarbonant();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==16){
                  List<Model> list=service.membran();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==17){
                  List<Model> list=service.hovuzlar();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==18){
                  List<Model> list=service.alakmahaccar();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==19){
                  List<Model> list=service.pasakmahaccar();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              } else if (id==20){
                  List<Model> list=service.asqili();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              } else if (id==21){
                  List<Model> list=service.pompali();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==22){
                  List<Model> list=service.fotoselli();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }
              else if (id==23){
                  List<Model> list=service.petleliqapilar();
                  request.setAttribute("showListPic",list);
                  path="views/ourworklist.jsp";
              }

          }
          else if (action.equalsIgnoreCase(ActionChecked.PORTFOLIOLIST)){
              int id=Integer.parseInt(request.getParameter("id"));
              if (id == 1 || id == 2 || id == 3 || id == 4 || id == 5) {
                  List<Model> list = service.bizimportfolio(id);
                  request.setAttribute("showListPic",list);
                  path="views/portfoliolist.jsp";
              }

              }
          RequestDispatcher dispatcher = request.getRequestDispatcher(path);
          dispatcher.forward(request, response);
      }catch (Exception ex){
         ex.printStackTrace();
      }

    }
}

