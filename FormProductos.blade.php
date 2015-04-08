<!DOCTYPE html>
<html lang="es">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>Document</title>
	
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


</head>
<body>

<div class="col-md-4 col-md-offset-3">



		<form id="loginForm" action="Productos" method="POST" >
		<h1>Productos</h1>
			
			<div class="form-group  ">
			                 <label for="nombre" class="sr-only">Producto:</label>
			                 <input class="form-control" type="text" placeholder="Nombre" id="nombre" name="txtNombre">
			                
		            </div>

			<div class="form-group has-error has-feedback">
				<label for="Precio ">Precio:</label>
				<input class="form-control" type="tel" id="apellido" name="txtPrecio" >	
			</div>

		
                       		 <button id="btRegistrar"class="btn btn-info" type="submit">Registrarse</button>
		</form>

		<form id="BuscarForm" action="buscar" method="POST" >

			<button id="btBuscar"class="btn btn-success" type="submit">Buscar</button>
			
		</form>
		{{ $nombre = Session::get('name') }}
                        		<h2>{{ $nombre }}</h2> 

                       		

    </div>

    

 <script type="text/javascript">
    $(document).ready(function () {
        var validator = $("#loginForm").bootstrapValidator({
            feedbackIcons: {
                valid: "glyphicon glyphicon-ok",
                invalid: "glyphicon glyphicon-remove", 
                validating: "glyphicon glyphicon-refresh"
            }, 
            fields : {
                txtNombre :{
                    validators : {
                        notEmpty : {
                            message : "Ingrese el nombre del Producto"
                        },  
                    }
                }, 
                txtPrecio : {
                    validators: {
                        notEmpty : {
                            message : "Precio es requerido"
                        }  
                    }
                }
            }
        });
    
        
        
    });
</script>

 


</body>
</html>