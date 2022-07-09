package model;

public class Videoclub {
    private int idPelicula;
    private String nombre;
    private String director;
    private double precio;
    private boolean alquiler;

    public Videoclub(int idPelicula, String nombre, String director, double precio) {
        this.idPelicula = idPelicula;
        this.nombre = nombre;
        this.director = director;
        this.precio = precio;
        this.alquiler = false;
    }

    public Videoclub(String nombre, String director, double precio) {
        this.nombre = nombre;
        this.director = director;
        this.precio = precio;
        this.alquiler = false;
    }

    public int getIdPelicula() {
        System.out.println("getIdPelicula");
        return idPelicula;
    }

    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String autor) {
        this.director = autor;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    public boolean getAlquiler() {
        return alquiler;
    }

    public void setAlquiler(boolean alquiler) {
        this.alquiler = alquiler;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "nombre=" + nombre + ", director=" + director + ", precio=" + precio + ", alquiler=" + alquiler + '}';
    }
}
