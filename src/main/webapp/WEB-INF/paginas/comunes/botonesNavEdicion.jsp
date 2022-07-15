<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  
   <body>

    <section id="actions" class="py-4 mb-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <a href="index.jsp" class="link-info">>
                        <i class="fas fa-arrow-left"></i>
                        Regresar al inicio
                    </a>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <div>
                        <button type="submit" class="btn btn-outline-success">
                            <i class="fas fa-check"></i>
                            Guardar Modificación
                        </button>
                    </div>
                    <div>
                        <a href="${pageContext.request.contextPath}/servletControlador?accion=eliminar&idPelicula=${pelicula.idPelicula}"
                           type="button" class="btn btn-outline-danger">
                            <i class="fas fa-trash"></i>
                            Eliminar
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
