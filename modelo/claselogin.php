<?php 
include("conexion.php");
 $conexion = new ConexionPGSQL();
 $conexion->conectar();
 
class Iniciar{

public function nueva_sesion()
	{
	 
		$nombre = $_POST['usuario'];
		$password = $_POST['clave'];
		echo $nombre;
		echo $password;
		//realizamos la consulta sql 
	    $query = "SELECT usuario, clave FROM usuario WHERE usuario='$nombre' AND clave='$password' and estatus=true;";
		$resultado = pg_query($query);
//echo $query;
		if ($reg=pg_num_rows($resultado) == 0)
		{   
			//echo "error". pg_last_error();;
			header("Location:index.php?usuario=no_existe");
			
		}else{
			
		}
			if($reg=pg_fetch_array($resultado))
				{

  session_start();  
					$_SESSION['usu'] = $nombre;	
                                         // $_SESSION['usu'] = $reg['nombre'];																	
					echo $_SESSION['usu'] ;
					header("Location:vista/inicio.php");
				}
	}
		
   
}
	


?>
