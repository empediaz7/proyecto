<?php

class Empresa {     
    public $nomb_empresa;    
	public $rif_empresa;
	public $tip_rif;
	public $correo_empresa;
	public $dir_empresa;
	public $ciudad_empresa;
	public $cod_postal;


public function agregar_empresa($nomb_empresa,$rif_empresa,$tip_rif,$correo_empresa,$ciudad_empresa,$cod_postal,$telefono,$dir_empresa)
	{
 
		$sql="insert into empresa (nom_empresa,rif_empresa,tip_rif,correo_empresa,ciudad_empresa,cod_postal,telefono,dir_empresa) 
		values('$nomb_empresa','$rif_empresa','$tip_rif','$correo_empresa','$ciudad_empresa',$cod_postal,$telefono,'$dir_empresa');";
		//echo $sql;
		$res=pg_query($sql);
	
		if(!$res){
		echo "error" .pg_result_error();
		}
	}
	


public function consultar_empresa()
	{


$sql="SELECT nom_empresa, nom_persona, ape_persona from empresa, persona ,usuario where empresa.id_empresa=persona.id_empresa and persona.id_persona=usuario.id_persona and usuario='".$_SESSION['usu']."'";
	   

	   $resul=pg_query($sql);
	   //echo $sql;
	   
	   if($resul){
	       while ($fila = pg_fetch_object($resul))
	       {
          echo $fila->nom_empresa; 

          echo "<p>".$fila->nom_persona. "</p>";
	    
           }}else{
		   echo "No hay Productos Registrado";
		   }
	   
    }
	  

	
	}

?>
