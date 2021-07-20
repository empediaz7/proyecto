<?php 
include ("modelo/claselogin.php"); 
$iniciar = new Iniciar;
if (isset($_POST['grabar']) and $_POST['grabar']=='si')
{
    $iniciar->nueva_sesion();
}else{

}
?>
<link href="css/style_login.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="https://image.ibb.co/n7oTvU/logo_white.png" id="icon" alt="User Icon" />
      <h1></h1>
    </div>

    <!-- Login Form -->
    <form action="#" method="post">
     <input type="hidden" name="grabar" value="si">

      <input type="text"  class="fadeIn second" name="usuario" placeholder="Usuario">
      <input type="password"  class="fadeIn second" name="clave" placeholder="Clave">


       <?php
                if(isset($_GET['usuario']))
                {
                ?>
            <tr>
                <td colspan="2" style="background:#f00000; color:#f5f5f5; text-align:center">
                <?php
                    switch($_GET['usuario'])
                    {
                        case 'no_existe':
                        ?>
                                <p style="background:#f00000; color:#f5f5f5; text-align:center">Los datos introducidos no existen   </p>
                        <?php
                    }
                }
                ?>
      <input type="submit" class="fadeIn fourth" value="Iniciar">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="registro.php">Registrate</a>
    </div>

  </div>
</div>