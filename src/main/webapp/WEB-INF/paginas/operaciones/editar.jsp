<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar Pelicula</title>
        
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      
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
                                    <h4>Editar Pelicula</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Título</label>
                                        <input type="text" class="form-control" name="nombre" required="" value="${pelicula.nombre}">
                                    </div>
                                    <div class="form-group">
                                        <label for="director">Director</label>
                                        <input type="text" class="form-control" name="director" value="${pelicula.director}">
                                    </div>
                                    <div class="form-group">
                                        <label for="precio">Valor de la pelicula</label>
                                        <input type="currency" class="form-control" name="precio" required="" value="${pelicula.precio}">
                                    </div>
                                    
                                    <select class="form-select" aria-label="Default select example" name="alquiler">
                                          <option value= "false">false</option>
                                          <option value= "true">true</option>
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
