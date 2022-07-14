package web;
import data.Peliculas;
import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.*;

@WebServlet("/servletControlador")
public class ServletControlador extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
        String accion = req.getParameter("accion");
        
        if(accion!=null){
            switch(accion){
                case "eliminar":
                    eliminarPelicula(req,res);
                    break;
                case "editar":
                    editarPelicula(req, res);
                    break;
                default:
                    accionDefault(req, res);
                    break;
            }
        }else{
            accionDefault(req, res);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest req , HttpServletResponse res)throws ServletException, IOException{
        String queryParam = req.getParameter("accion");
        if(queryParam!=null){
            switch(queryParam){
                case "insertar":
                    insertarPelicula(req,res);
                    break;
                case "modificar":
                    modificarPelicula(req,res);
                    break;
                default:
                    accionDefault(req,res);
                    break;
            }
        }
    }
    
    private double calcularPrecio(List<Videoclub> peliculas){
        double precio = 0;
        for (int i = 0; i < peliculas.size(); i++) {
            precio += (peliculas.get(i).getPrecio());
        }
        return precio;
    }
    
      private int calcularPeliculas(List<Videoclub> peliculas){
        return peliculas.size();
    }
      
          
    private void editarPelicula(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
        int idPelicula = Integer.parseInt(req.getParameter("idPelicula"));
        Videoclub pelicula = new Peliculas().findById(idPelicula);
        req.setAttribute("pelicula", pelicula);
        String jspEditar = "/WEB-INF/paginas/operaciones/editar.jsp";
        req.getRequestDispatcher(jspEditar).forward(req, res);
    }
    
        private void accionDefault(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
        List <Videoclub> peliculas = new Peliculas().findAll();
        peliculas.forEach(System.out::println);
        HttpSession sesion = req.getSession();
        sesion.setAttribute("peliculas", peliculas);
        sesion.setAttribute("precioTotal", calcularPrecio(peliculas));
        res.sendRedirect("peliculas.jsp");
    }
    
    private void insertarPelicula(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
        String nombre = req.getParameter("nombre");
        String director = req.getParameter("director");
        double precio = Double.parseDouble(req.getParameter("precio"));
        
        Videoclub pelicula = new Videoclub(nombre, director, precio);
        
        int registrosMod = new Peliculas().insertPelicula(pelicula);
        
        System.out.println("insertados = " + registrosMod);
        
        accionDefault(req, res);
       }
    
     private void modificarPelicula(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
        String nombre = req.getParameter("nombre");
        String director = req.getParameter("director");
        double precio = Double.parseDouble(req.getParameter("precio"));
        boolean alquiler = Boolean.parseBoolean(req.getParameter("alquiler"));
        
        int idPelicula = Integer.parseInt(req.getParameter("idPelicula"));
        
        Videoclub pelicula = new Videoclub(idPelicula,nombre,director,precio);
        pelicula.setAlquiler(alquiler);
        
        int regMod = new Peliculas().update(pelicula);
        
        System.out.println("SE ACTUALIZARON: "+ regMod +" REGISTROS");
        
        accionDefault(req, res);
       }
     
      private void eliminarPelicula(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{

        int idPelicula = Integer.parseInt(req.getParameter("idPelicula"));
        int regMod = new Peliculas().deletePelicula(idPelicula);
        
        System.out.println("SE ELIMINARON: "+ regMod +" REGISTROS");
        
        accionDefault(req, res);
    }
}
