<?php

session_start();

class Persona {     
    public $nom_persona;    
	public $ape_persona;
	public $ced_persona;
	public $tel_persona;
	public $corre_persona;



public function agregar_persona($nom_persona,$ape_persona,$ced_persona,$tel_persona,$corre_persona)
	{
 

 
		$sql= "INSERT INTO persona(nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa)
	    VALUES ('$nom_persona','$ape_persona', $ced_persona, $tel_persona, '$corre_persona',(select MAX(id_empresa) from empresa));";
		//echo $sql;
		$res=pg_query($sql);
	   
		if(!$res){
		echo "error" .pg_result_error();
		}
	
	}
	


	public function agregar_login($usuario,$clave)
	{
 

		$sql="insert into usuario (usuario,clave,estatus,id_persona) values('$usuario','$clave', true,(select MAX(id_persona) from persona));";
		$res=pg_query($sql);
		if(!$res){
		echo "error" .pg_error();
		}
		echo"<script type='text/javascript'>
		alert('El registro se realizó correctamente');
		window.location='../index.php';
		</script>";
		
		
    
	}


public function consultar_persona()
	{
	   $sql="select p.cod_producto, p.descripcion, p.precio , i.cantidad_total,  m.name, c.categoria from producto p ,inventario i, imagen m, categoria c where p.id_img=m.id and p.id_cat=c.id_cat and p.cod_producto=i.cod_producto ";
	   if ($_POST["cod_producto"] != '')
	    {
	   $sql.=" AND p.cod_producto='".$_POST["cod_producto"]."'";
	    } 
	   if ($_POST["categoria"] != '')
	   {
	   $sql.=" AND p.id_cat='".$_POST["categoria"]."'";
	   }
	   $resul=pg_query($sql);
	   //echo $sql;
	    echo"<table>";
	   if($resul){
	       while ($fila = pg_fetch_object($resul))
	       {

	       echo	$fila->name;

        
           }}else{
		   echo "No hay Productos Registrado";
		   }
	     echo "</table>";
    }

}	

?>
