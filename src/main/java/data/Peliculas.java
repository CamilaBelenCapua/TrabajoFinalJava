package data;

import static data.Conexion.*;
import java.sql.*;
import java.util.*;
import model.Videoclub;

public class Peliculas {
    private static final String SQL_CREATE="INSERT INTO peliculas(nombre, director, alquiler, precio) VALUES(?, ?, ?, ?)";
    private static final String SQL_READ="SELECT * FROM peliculas";
    private static final String SQL_READ_BY_ID= "SELECT * FROM peliculas WHERE id = ?";
    private static final String SQL_UPDATE="UPDATE peliculas SET nombre = ?, director = ?, alquiler = ?, precio = ? WHERE id = ?";
    private static final String SQL_UPDATE_PRECIO="UPDATE peliculas SET precio = ? WHERE id = ?";
    private static final String SQL_UPDATE_ALQUILER="UPDATE peliculas SET alquiler = ? WHERE id = ?";
    private static final String SQL_DELETE="DELETE FROM peliculas WHERE id = ?";
    
    
    public List<Videoclub> findAll() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Videoclub pelicula;
        List<Videoclub> peliculas = new ArrayList();

        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_READ);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idPelicula = rs.getInt(1);
                String nombre = rs.getString(2);
                String director = rs.getString(3);
                double precio = rs.getDouble(5);
                
                pelicula = new Videoclub(idPelicula, nombre, director,precio);

                peliculas.add(pelicula);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return peliculas;
    }
    
    public Videoclub findById(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Videoclub pelicula = null;
        
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_READ_BY_ID);
            stmt.setInt(1,id);
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                
                int idPelicula = rs.getInt(1);
                String nombre = rs.getString(2);
                String director = rs.getString(3);
                double precio = rs.getDouble(5);
                
                pelicula = new Videoclub(idPelicula, nombre, director,precio);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return pelicula;
    }
    
    
    public int insertPelicula(Videoclub pelicula){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_CREATE);
            stmt.setString(1, pelicula.getNombre());
            stmt.setString(2, pelicula.getDirector());
            stmt.setDouble(4, pelicula.getPrecio());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
    
    public int update(Videoclub pelicula){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, pelicula.getNombre());
            stmt.setString(2, pelicula.getDirector());
            stmt.setDouble(3, pelicula.getPrecio());
            stmt.setBoolean(4, pelicula.getAlquiler());
            stmt.setInt(5, pelicula.getIdPelicula());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
    
    public int updatePrecio(Videoclub pelicula){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_PRECIO);
            stmt.setDouble(1, pelicula.getPrecio());
            stmt.setInt(2, pelicula.getIdPelicula());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
    
     public int updateAlquiler(Videoclub pelicula){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_ALQUILER);
            stmt.setBoolean(1, pelicula.getAlquiler());
            stmt.setInt(2, pelicula.getIdPelicula());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
    
    public int deletePelicula(int id){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, id);
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
}
