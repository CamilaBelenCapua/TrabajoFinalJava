<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  
   <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <form action="${pageContext.request.contextPath}/servletControlador?accion=modificar&idPelicula=${pelicula.idPelicula}" method="POST" class="was-validated">
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavEdicion.jsp"/>

            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4><em>Editar Pelicula</em></h4>
                                </div>
                                <div class="card-body">
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="nombre">Título</label>
                                        <input type="text" class="form-control" name="nombre" required="" value="${pelicula.nombre}">
                                    </div>
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="director">Director</label>
                                        <input type="text" class="form-control" name="director" value="${pelicula.director}">
                                    </div>
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="precio">Valor de la pelicula</label>
                                        <input type="currency" class="form-control" name="precio" required="" value="${pelicula.precio}">
                                    </div>
                                    
                                    <br>
                                    
                                    <label for="alquiler">Estado</label>
                                    <select class="form-select" id="alquiler">
                                          <option value= "false">No alquilado</option>
                                          <option value= "true">Alquilado</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>

        <jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
