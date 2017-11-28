package az.pro.shopping.util;

import java.sql.*;

/**
 * Created by TALEH on 17.06.2016.
 */
public class DbClose {
    public static void dbClose(Connection conn, PreparedStatement pre, ResultSet rs){
        try {
            if (conn!=null){
                conn.close();
            }
            if (pre!=null){
                pre.close();
            }
            if (rs!=null){
                rs.close();
            }
        } catch (Exception e) {
            System.out.println("DbClose class area");
            e.printStackTrace();
        }
    }
    public static void dbPlClose(Connection conn, CallableStatement cs, ResultSet rs){
        try {
            if (conn!=null){
                conn.close();
            }
            if (cs!=null){
                cs.close();
            }
            if (rs!=null){
                rs.close();
            }
        } catch (Exception e) {
            System.out.println("DbClose class area");
            e.printStackTrace();
        }
    }
}
