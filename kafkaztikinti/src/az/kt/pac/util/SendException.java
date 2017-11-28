package az.kt.pac.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * Created by TALEH on 11/8/2016.
 */
public class SendException {
    public static void sendException(String st){
        final String name = "fogotpass2@gmail.com";
        final String pss = "mzzxxklomeutxxpw"; // app password
        String checked=null;
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
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("tt@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("alqayevt@gmail.com"));
            message.setSubject("Exception KafkazTikinti !!!");
            message.setText(st);
            Transport.send(message);
            System.out.println("Message sent");
        } catch (Exception ex) {
            checked="Netvork error";
        }
    }
}
