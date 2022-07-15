<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <a href="index.jsp" class="btn btn-light btn-block">
                    <i class="fas fa-arrow-left"></i>
                    Regresar al inicio
                </a>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i>
                    Guardar Modificación
                </button>
            </div>
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/servletControlador?accion=eliminar&idPelicula=${pelicula.idPelicula}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i>
                    Eliminar
                </a>
            </div>
        </div>
    </div>
</section>
