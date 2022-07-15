<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  </head>
  
   <body>
        <form action="${pageContext.request.contextPath}/servletControlador?accion=insertar" method="POST" class="was-validated">
             <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
             <br>
            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="index.jsp" class="link-info">>
                                <i class="fas fa-arrow-left"></i>
                                   Regresar al inicio
                            </a>
                        </div>
                        
                        <br>
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4><em>Agregar Pelicula</em></h4>
                                </div>
                                <div class="card-body">
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="nombre">Título</label>
                                        <input type="text" class="form-control" name="nombre" required="">
                                    </div>
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="autor">Director</label>
                                        <input type="text" class="form-control" name="director">
                                    </div>
                                    
                                    <br>
                                    <div class="form-group">
                                        <label for="precio">Valor de la pelicula</label>
                                        <input type="currency" class="form-control" name="precio" required="">
                                    </div>
                                </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-outline-success">
                                    Guardar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </body>
</html>       