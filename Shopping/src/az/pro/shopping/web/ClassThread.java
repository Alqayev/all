package az.pro.shopping.web;
import az.pro.shopping.dao.DaShopImpl;
import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.service.ServiceShop;
import az.pro.shopping.service.ServiceShopImpl;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
/**
 * Created by TALEH on 23.06.2016.
 */
//    S E N D    M A I L    N E W    U S E R S
public class ClassThread extends Thread {
    @Override
    public void run() {
        try {

            final String name = "fogotpass2@gmail.com";
            final String pss = "rkeoidwkegcbaxlw"; // app password
            String subject = "Test1 Subject";
            String text = "Test1 Text";
            String email = null;
            Properties pro = new Properties();
            pro.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            pro.put("mail.smtp.auth", "true");
            pro.put("mail.smtp.starttls.enable", "true");
            pro.put("mail.smtp.host", "smtp.gmail.com");
            pro.put("mail.smtp.port", "587");

            Session session = Session.getInstance(pro, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(name, pss);
                }

            });
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("tt@gmail.com"));
            while (true) {
                Thread.sleep(600000);
                System.out.println("Thread 1");
//                this.setPriority(Thread.MAX_PRIORITY);

                System.out.println("thread");

                long id = 0;
                DaoShop dao = new DaShopImpl();
                ServiceShop service = new ServiceShopImpl(dao);
                List<ModelShop> list = service.trSendMail();
                Update.shop=list;
                for (ModelShop email1 : list) {

                    id = email1.getPrimaryId();
//                    Update.ID=id;
                    email = email1.getEmail();
//                  bigId=email1.getPrimaryId();
                    if (id != 0 && email != null) {
//                        service.trSendMailUpdateActive(id);
                        System.out.println("kicik id=" + id);
                        if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")) {
                            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                            message.setSubject(subject);
                            message.setText(text);
                            Transport.send(message);

                            System.out.println("Message sent");
                            System.out.println("email : " + email);

                        }
                    }
                }


                System.out.println("birinci  =" + System.currentTimeMillis());

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

// E N D   S E N D    M A I L    N E W    U S E R S


class Update extends Thread {
//    public static long ID ;
    public static List<ModelShop> shop;
    @Override
    public void run() {
     long id=0;
        while (true) {
            try {
                Thread.sleep(600000);
                System.out.println("Information ------");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("thread 2 ");
            DaoShop dao = new DaShopImpl();
            ServiceShop service = new ServiceShopImpl(dao);
            if (shop!=null){
                for (ModelShop modelShop:shop){
                    id=modelShop.getPrimaryId();
                    if (id!=0){
                        service.trSendMailUpdateActive(id);
                    }
                    System.out.println("Ikinci treadin Idisi = "+id);
                }
            }
            System.out.println("ikinci =" + System.currentTimeMillis());

        }
    }
}


//    S E N D    M A I L    O L D    U S E R S
class SendMailOldUsers extends Thread {

    public String filePath;
    private static final String FIELD_NAME = "SendTextUsers.txt";
    BufferedReader buf = null;
    String text = null;
    @Override
    public void run() {

        File path = new File(filePath + File.separator + FIELD_NAME);
        try {
            if (!path.exists()) {
                path.createNewFile();
            }
            FileReader reader = new FileReader(path);
            buf = new BufferedReader(reader);
            StringBuilder sb = new StringBuilder();
            String line = buf.readLine();
            while (line != null) {
                sb.append(line);
                sb.append(System.lineSeparator());
                line = buf.readLine();
            }
            String everything = sb.toString();
            buf.close();
            if (everything != null || everything.trim().length() != 0) {
                text = everything;
            } else {
                text = "We're with you all the time";
            }
            int count = 0;

            final String name = "fogotpass2@gmail.com";
            final String pss = "rkeoidwkegcbaxlw"; // app password
            String subject = "Subject";
            String email = null;
            long id = 0;
            Properties pro = new Properties();
            pro.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            pro.put("mail.smtp.auth", "true");
            pro.put("mail.smtp.starttls.enable", "true");
            pro.put("mail.smtp.host", "smtp.gmail.com");
            pro.put("mail.smtp.port", "587");
            Session session = Session.getInstance(pro, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(name, pss);
                }

            });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("tt@gmail.com"));

            while (true) {
                count++;
                if (count>2){
                    count=1;
                }
//                  Thread.sleep(3000);
                TimeUnit.DAYS.sleep(21);


                if (count == 1) {
                    System.out.println("count if1 area = "+count);

                    DaoShop dao = new DaShopImpl();
                    ServiceShop service = new ServiceShopImpl(dao);

                    List<ModelShop> list = service.trOldUsersSendMail();


                    for (ModelShop email1 : list) {
                        id = email1.getPrimaryId();
                        email = email1.getEmail();
                        if (id != 0 && email != null) {
                            System.out.println("kicik id=" + id);
                            service.trOldMailUpdateActive(id);

                            if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")) {
                                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                                message.setSubject(subject);
                                message.setText(text);
                                sleep(300000);
                                Transport.send(message);
                                System.out.println("Message sent");
                                System.out.println("email : " + email);
                            }
                        }
                    }
                }


                else if (count == 2) {
                    System.out.println("ic count else if"+count);
                    DaoShop dao = new DaShopImpl();
                    ServiceShop service = new ServiceShopImpl(dao);

                    List<ModelShop> list = service.trOldTwoMonthUsersSendMail();

                    for (ModelShop email1 : list) {
                        id = email1.getPrimaryId();
                        email = email1.getEmail();
                        if (id != 0 && email != null) {
                            service.trOldTwoMonthMailUpdateActive(id);
                            System.out.println("( Active id=0 update id= 1 ) - area : " + id);
                            if (email.matches("^[_.a-zA-Z0-9-]{1,30}@[_a-zA-Z0-9-]{1,15}.[a-zA-Z]{1,6}")) {
                                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                                message.setSubject(subject);
                                message.setText(text);
                                sleep(300000);
                                Transport.send(message);
                                System.out.println("Message sent");
                                System.out.println("email : " + email);
                            }
                        }
                    }
                    count=0;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(filePath);
    }
}

//  E N D    S E N D    M A I L    O L D    U S E R S