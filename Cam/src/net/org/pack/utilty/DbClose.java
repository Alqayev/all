package net.org.pack.utilty;

import java.sql.*;

/**
 * Created by TALEH on 12.10.2016.
 */
public class DbClose {
    public static void dbClose(Connection conn,CallableStatement cs,ResultSet rs){
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
