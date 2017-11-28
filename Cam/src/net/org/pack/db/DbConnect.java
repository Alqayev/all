package net.org.pack.db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

/**
 * Created by TALEH on 11.10.2016.
 */
public class DbConnect {
    private static Connection conn;
    public static Connection dbConnect(){
        try {
            Context cnt=new InitialContext();
            DataSource data=(DataSource)cnt.lookup("java:/comp/env/jdbc/Cam");
            conn=data.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
