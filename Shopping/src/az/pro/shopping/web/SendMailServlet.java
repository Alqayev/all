package az.pro.shopping.web;

import az.pro.shopping.dao.DaShopImpl;
import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.service.ServiceShop;
import az.pro.shopping.service.ServiceShopImpl;
import az.pro.shopping.util.ActionConstant;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by TALEH on 23.06.2016.
 */
public class SendMailServlet extends HttpServlet {
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
            action=request.getParameter("action");
            System.out.println("action = "+action);
        }

        try {
            if (action.equalsIgnoreCase(ActionConstant.SENDMAILUSER)){
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

                        if (flitem.getSize()!=0 && fileName!=null&&!fileName.contains("?")&&!fileName.contains("\\")&&!fileName.contains("/")&&!fileName.contains("*")&&!fileName.contains("\"")&&!fileName.contains("<")&&!fileName.contains(">")&&!fileName.contains("|")){
                            flitem.write(storeFile);
                        }
                        else{

                        }


                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                String subject= (String) map.get("senMailTextSubject");
                String text= (String) map.get("senMailTextArea");
                long id=Integer.parseInt((String) map.get("inputScreetName"));
                ModelShop shop=new ModelShop();
                if (flitem.getSize()==0){
                   shop.setSubject(subject);
                    shop.setTextAre(text);
                    shop.setPrimaryId(id);
                    service.sendCustomerMail(shop);

                }else{
                    shop.setSubject(subject);
                    shop.setTextAre(text);
                    shop.setPrimaryId(id);
                    shop.setFilePath(filePath);
                    shop.setFileName(fileName);
                    service.sendCustomerMail(shop);
                }
                path="admin.jsp";
            }

            else if (action.equalsIgnoreCase(ActionConstant.SENDMAILALLUSERS)){
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

                        if (flitem.getSize()!=0 && fileName!=null&&!fileName.contains("?")&&!fileName.contains("\\")&&!fileName.contains("/")&&!fileName.contains("*")&&!fileName.contains("\"")&&!fileName.contains("<")&&!fileName.contains(">")&&!fileName.contains("|")){
                            flitem.write(storeFile);
                        }
                        else{

                        }


                    }  else {
                        map.put(flitem.getFieldName(), flitem.getString());
                    }
                }
                String subject= (String) map.get("senMailTextSubject");
                String text= (String) map.get("senMailTextArea");
                ModelShop shop=new ModelShop();
                if (flitem.getSize()==0){
                    shop.setSubject(subject);
                    shop.setTextAre(text);
                    service.sendAllCustomerMail(shop);
                }else{
                    shop.setSubject(subject);
                    shop.setTextAre(text);
                    shop.setFilePath(filePath);
                    shop.setFileName(fileName);
                    service.sendAllCustomerMail(shop);
                }
//                request.setAttribute("mail","<h1>sendmail<h1/>");
                path="admin.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        RequestDispatcher requestDispatcher=request.getRequestDispatcher(path);
        requestDispatcher.forward(request,response);

    }
}
