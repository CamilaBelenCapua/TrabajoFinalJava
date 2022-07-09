package data;

import java.sql.*;
import javax.sql.*;

public class Conexion {
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/peliculas?useSSL=false";
    private static final String JDBC_USR ="root";
    private static final String JDBC_PASS ="password";
    
    public static Connection getConexion() throws SQLException{
        Connection con = null;
        try {
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.
           getConnection("jdbc:mysql://localhost:3306/peliculas?useSSL=false", "root", "password");
           System.out.println("Connection is successful !!!!!");
        } catch(Exception e) {
           e.printStackTrace();
        }
        
        return con;
    }
    
    public static void close(ResultSet rs) throws SQLException{
        rs.close();
    }
    
    public static void close(Statement st) throws SQLException{
        st.close();
    }
    
    public static void close(Connection cn) throws SQLException{
        cn.close();
    }
}
