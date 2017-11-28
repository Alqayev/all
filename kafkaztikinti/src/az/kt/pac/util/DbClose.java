package az.kt.pac.util;
import org.apache.log4j.Logger;

import java.sql.*;

/**
 * Created by TALEH on 12.10.2016.
 */
public class DbClose {
    public static Logger logger=Logger.getLogger(DbClose.class);
    public static void dbClose(Connection conn, CallableStatement cs, ResultSet rs, PreparedStatement pre){
        try {
        if (conn!=null){
                conn.close();
        }
            if (cs!=null){
                cs.close();
            }
            if (pre!=null){
                cs.close();
            }
            if (rs!=null){
                rs.close();
            }
        } catch (SQLException e) {
            SendException.sendException("KAFKAZ   TIKINTI -->  package az.kt.pac.util; Dbclose Class --> dbClose(Connection conn, CallableStatement cs, ResultSet rs, PreparedStatement pre) : Setr --> 25,26,27");
        }
    }
}
