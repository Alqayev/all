package az.pro.shopping.cnt;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

/**
 * Created by TALEH on 17.06.2016.
 */
public class DbConnect {
    public static Connection dbConnect(){
        Connection conn=null;
        try {
            Context cntx=new InitialContext();
            DataSource dataSource= (DataSource) cntx.lookup("java:/comp/env/jdbc/Shopping");
            conn=dataSource.getConnection();
//            System.out.println("Connection success !!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
