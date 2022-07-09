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
        List <Videoclub> peliculas = new Peliculas().findAll();
        peliculas.forEach(System.out::println);
        req.setAttribute("peliculas", peliculas);
        req.setAttribute("cantidadPeliculas",calcularPeliculas(peliculas));
        req.setAttribute("precioTotal", calcularPrecio(peliculas));
        req.getRequestDispatcher("peliculas.jsp").forward(req, res);
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
}
