<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  
   <body>
        <fmt:setLocale value="es_AR"/>
        <section id="peliculas">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-8">
                        <div>
                            <div class="card-header">
                                <h4><em>Listado de peliculas</em></h4>
                            </div>
                            <table class = "table text-center">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Director</th>
                                        <th>Precio</th>
                                        <th>Alquiler</th>
                                        <th >Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="pelicula" items="${peliculas}">
                                        <tr>
                                            <th scope="row">${pelicula.idPelicula}</th>
                                            <td>${pelicula.nombre}</td>
                                            <td>${pelicula.director}</td>
                                            <td><fmt:formatNumber value="${pelicula.precio}" type="currency"/></td>
                                            <td>${pelicula.alquiler}</td>
                                            <td>

                                                <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idPelicula=${pelicula.idPelicula}" class="btn btn-warning">
                                                    <i class="fas fa-angle-double-right"></i>
                                                    Editar
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="text-center">
                        <div>
                            <div>
                                <p class="fs-5">Cantidad de peliculas: ${cantidadPeliculas}</p>
                            </div>
                        </div>

                        <div>
                            <div>
                                <p class="fs-5">Cantidad de peliculas alquiladas: <fmt:formatNumber value="${cantidadPeliculasAlquiladas}" type="number"/></p>
                            </div>
                        </div>    

                        <div>
                            <div>
                                <p class="fs-5">Precio total de peliculas: <fmt:formatNumber value="${precioTotal}" type="currency"/></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
   
</html>