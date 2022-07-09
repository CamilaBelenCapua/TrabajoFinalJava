<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="es_AR"/>
<section id="peliculas">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de peliculas</h4>
                    </div>
                    <table class="table table-striped table-dark">
                        <thead class="thead-dark">
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
                                    <td>${pelicula.idPelicula}</td>
                                    <td>${pelicula.nombre}</td>
                                    <td>${pelicula.director}</td>
                                    <td><fmt:formatNumber value="${pelicula.precio}" type="currency"/></td>
                                    <td>${pelicula.alquiler}</td>
                                    <td>
                                        <!-- NO OLVIDAR COMPLETAR HREF -->
                                        <a href="" class="btn btn-secondary">
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
<jsp:include page="/WEB-INF/paginas/operaciones/agregarPelicula.jsp"/>