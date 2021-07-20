<?php
include("../modelo/conexion.php");
      $conexion = new ConexionPGSQL();
        $conexion->conectar();

include("../modelo/claseempresa.php");	
     $nuevo=new Empresa();
     $nuevo->agregar_empresa($_POST["empresa"],$_POST["rif"],$_POST["tipo_rif"],$_POST["correo"],$_POST["ciudad"],$_POST["codigo"],$_POST["telefono"],$_POST["direccion"]);

include("../modelo/clasepersona.php");  
$nuevo=new Persona();
 $nuevo->agregar_persona($_POST["nom_persona"],$_POST["ape_persona"],$_POST["ced_persona"],$_POST["tel_persona"],$_POST["corre_persona"]);
 $nuevo->agregar_login($_POST["usuario"],$_POST["clave"]);

    /* echo"<script type='text/javascript'>
		window.location='../vista/registroexitoso.php';
		</script>";*/

?>

