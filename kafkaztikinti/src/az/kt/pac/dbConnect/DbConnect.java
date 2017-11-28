package az.kt.pac.dbConnect;

import az.kt.pac.service.Service;
import az.kt.pac.util.Security;
import az.kt.pac.util.SendException;
import org.apache.log4j.Logger;
import org.apache.log4j.SimpleLayout;
import org.apache.log4j.WriterAppender;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.StringWriter;
import java.sql.Connection;

/**
 * Created by TALEH on 11.10.2016.
 */
public class DbConnect {
    public static Logger logger=Logger.getLogger(DbConnect.class);
    static StringBuilder st=new StringBuilder();
    private static Connection conn;
    public static Connection dbConnect(){
        try {
            Context cnt=new InitialContext();
            DataSource data=(DataSource)cnt.lookup("java:/comp/env/jdbc/kafkaztikinti");
            conn=data.getConnection();
        } catch (Exception e) {
            logger.error("Error Kafkaztikinti : DBConnect method --> package az.kt.pac.dbConnect;");
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.dbConnect; DBconnect Class --> dbConnect() : Setr --> 28,29,30");
        }
        return conn;
    }
}
