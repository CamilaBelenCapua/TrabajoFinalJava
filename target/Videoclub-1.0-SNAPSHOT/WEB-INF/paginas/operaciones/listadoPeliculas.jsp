<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  </head>
  
   <body>
        <fmt:setLocale value="es_AR"/>
        <section id="peliculas">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div>
                            <div class="card-header">
                                <h4>Listado de peliculas</h4>
                            </div>
                            <table class = "table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Director</th>
                                        <th>Precio</th>
                                        <th>Alquiler</th>
                                        <th>Accion</th>
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

                                                <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idPelicula=${pelicula.idPelicula}" class="btn btn-secondary">
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
                    <div class="col-md-4">
                        <div class="card text-center bg-danger text-white mb-3">
                            <div class="card-body">
                                <h3>Cantidad de peliculas</h3>
                                <h4 class="display-4">${cantidadPeliculas}</h4>
                            </div>
                        </div>

                        <div class="card text-center bg-danger text-white mb-3">
                            <div class="card-body">
                                <h3>Cantidad de peliculas alquiladas</h3>
                                <h4 class="display-4"><fmt:formatNumber value="${cantidadPeliculasAlquiladas}" type="number"/></h4>
                            </div>
                        </div>    

                        <div class="card text-center bg-success text-white mb-3">
                            <div class="card-body">
                                <h3>Precio Total de peliculas</h3>
                                <h4 class="display-4"><fmt:formatNumber value="${precioTotal}" type="currency"/></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </body>
   
</html>