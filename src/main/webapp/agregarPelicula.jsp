<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Agregar Pelicula</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/servletControlador?accion=insertar" method="POST" class="was-validated">
            <div class="modal-body">
                <div class="form-group">
                    <label for="nombre">Título</label>
                    <input type="text" class="form-control" name="nombre" required="">
                </div>
                <div class="form-group">
                    <label for="autor">Director</label>
                    <input type="text" class="form-control" name="director">
                </div>
                <div class="form-group">
                    <label for="precio">Valor de la pelicula</label>
                    <input type="currency" class="form-control" name="precio" required="">
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="submit">
                    Guardar
                </button>
            </div>
        </form>
    </body>
</html>       