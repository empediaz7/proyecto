<?php
session_start();
include("../modelo/conexion.php");
      $conexion = new ConexionPGSQL();
        $conexion->conectar();
include ("../modelo/claseempresa.php");
$nuevo = new Empresa;
?>
<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>




<link href="../css/style.css" rel="stylesheet" id="bootstrap-css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Bienvenido</h3>
                        <p> <?php $nuevo->consultar_empresa();?></p>
                    </div>
                    
                                        
                        </div>
                    </div>
                </div>

            </div>

            <script type="text/javascript">
                
function validaCampos(){

//var nombre = $("#nombre").val();
//var edad = $("#edad").val();
var direccion = $("#direccion").val();
var nom_empresa = $("#empresa").val();
var tipo_rif = $("#tipo_rif").val();
var rif = $("#rif").val();
var tipo_rif = $("#tipo_rif").val();
//validamos campos
/*if($.trim(nombre) == ""){
toastr.error("No ha ingresado Nombre","Aviso!");
    return false;
}
                   if($.trim(edad) == ""){
toastr.error("No ha ingresado Edad","Aviso!");
    return false;
}

            if(edad < 0){
toastr.error("Mínimo permitido 0","Aviso!");
    return false;
}*/
if($.trim(direccion) == ""){
alert("No ha ingresado direccion");
    return false;
}

if($.trim(empresa) == ""){
alert("No ha ingresado el nombre de la empresa");
    return false;
}
if($.trim(tipo_rif) == ""){
alert("No ha ingresado el rif");
    return false;
}
if($.trim(direccion) == ""){
alert("No ha ingresado direccion");
    return false;
}
if($.trim(direccion) == ""){
alert("No ha ingresado direccion");
    return false;
}


}






        

</body>
</html>>