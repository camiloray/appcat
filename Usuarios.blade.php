<!DOCTYPE html>
<html lang="es">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>Registro de Usuddddddrios</title>
	
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<script src="js/bootstrap.min.js"></script>
	    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/basic-template.css" rel="stylesheet" />
    	<!-- BootstrapValidator CSS -->
    <link href="css/bootstrapValidator.min.css" rel="stylesheet"/>
    	<!-- jQuery y Bootstrap JS -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- BootstrapValidator -->
	<script src="js/bootstrapValidator.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="validator.js"></script>
    <link rel="stylesheet" href="css/style.css">



</head>
<body>

 <h1>Prueba Formulario</h1>
    <div class="container">
        
        <div class="col-md-4 col-sm-5 col-xs-10 col-md-offset-3 col-sm-offset-2 col-xs-1">
            <form action="user/usuario" id="userForm" method="POST">
                <h2>Registro de Usuarios</h2>
                <div class="form-group">
                    <label for="name" class="sr-only">Nombres:</label>
                    <input name="txNombre" type="text" class="form-control" placeholder="Nombres" id="name">
                </div>
                <div class="form-group">
                    <label for="apes" class="sr-only">Apellidos:</label>
                    <input name="txApellido" type="text" class="form-control" placeholder="Apellidos" id="apes">
                </div>
                <div class="form-group">
                    <label for="doc" class="sr-only">Documento:</label>
                    <input type="text" class="form-control" placeholder="Documento" id="doc"name="txDoc" >
                </div>
                <div class="form-group">
                    <label for="dir" class="sr-only">Dirección:</label>
                    <input  type="text" class="form-control" placeholder="Direccion" id="dir"name="txDir">
                </div>
                <div class="form-group">
                    <label for="tel" class="sr-only">Teléfono:</label>
                    <input  type="text" class="form-control" placeholder="Nombres" id="tel" name="txTelefono">
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">Correo:</label>
                    <input type="text" class="form-control" placeholder="Correo" id="email"name="txMail" >
                </div>
                <div class="form-group">
                    <label for="edad" class="sr-only">Edad:</label>
                    <input type="text" class="form-control" placeholder="Edad" id="edad" name="txEdad" >
                </div>


                <button id="btRegistrar" class"btn btn-success" type="submit">Registrarse</button>

                



            </form>
        </div>

    </div>

    @if(Session::has('message'))
            <div class="alert alert-{{ Session::get('class') }}">{{ Session::get('message')}}</div>
    @endif





</body>
</html>