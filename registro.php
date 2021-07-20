
<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>




<link href="css/style.css" rel="stylesheet" id="bootstrap-css">
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
                        <p>Por favor llene el siguiente formulario!</p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Empresa</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Usuario </a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Datos de la empresa</h3>
                                <div class="row register-form">
                                   
                                    <div class="col-md-6">

                 <form name="form" action="controlador/registrarempresa.php" method="POST" onsubmit="return validaCampos();" > 
                                        <div class="form-group">
                                                   <input type="hidden" name="grabar" value="si">
                                            <input type="text" class="form-control" id="empresa" name="empresa" placeholder="Nombre Empresa *" value="" />
                                            <span class="error"</span>
                                        </div>

                                        <div class="form-group">
                                        
                                              <select id="tipo_rif" name="tipo_rif" class="form-control" id="exampleFormControlSelect1">
                                                    <option value="">Selecione rif</option>
                                                     <option value="J">J</option>
                                                     <option value="G">G</option>
                                                     <option value="E">E</option>
                                                    
                                                </select>
                                             </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control"  id="rif" name="rif" placeholder="Rif *" value="" />
                                        </div>
                                        <div class="form-group">
                                    <input type="number" class="form-control" id="telefono" name="telefono" placeholder="Telefono *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="correo" name="correo" placeholder="correo" value="" />
                                        </div>
                                        <!--div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div-->
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text"   id="direccion" name="direccion" class="form-control" placeholder="Direccion*" value="" />
                                        </div>
                                        <div class="form-group">
                                    <input type="text" id="ciudad" name="ciudad" class="form-control" placeholder="Ciudad*" value="" />
                                        </div>
                                 
                                        <div class="form-group">
                                            <input id="codigo" type="number" name="codigo" class="form-control" placeholder="codigo Postal *" value="" />
                                        </div>
                                        <!--input type="submit" class="btnRegister"  value="Registrar"/-->
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Datos de usuario</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text"  name="nom_persona" class="form-control" placeholder="Nombre*" value=""  required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ape_persona" class="form-control" placeholder="Apellido *" value="" required/>
                                        </div>
                                         <div class="form-group">
                                        <input type="number" name="ced_persona" class="form-control" placeholder="Cedula *" value="" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" name="corre_persona" class="form-control" placeholder="Correo *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="tel_persona" class="form-control" placeholder="Telefono *" value=""   />
                                        </div>


                                    </div>
                                    <div class="col-md-6">
                                         <div class="form-group">
                                            <input type="text" name="usuario" class="form-control" placeholder="Usuario*" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="clave" class="form-control" placeholder="Clave *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Confirmar Clave *" value="" />
                                        </div>
                                    </div>
                                    <input type="submit" class="btnRegister"  value="Registrar"/></form>

                                </div>
                            </div>
                            

                                        
                        </div>
                    </div>
                </div>

            </div>

            <script type="text/javascript">
                


window.onload = function () {

//document.formularioContacto.nombre.focus();

document.form.addEventListener('submit', validarFormulario);

}

 

function validarFormulario(evObject) {

evObject.preventDefault();

var todoCorrecto = true;

var formulario = document.form;

for (var i=0; i<formulario.length; i++) {

                if(formulario[i].type =='text') {

                               if (formulario[i].value == null || formulario[i].value.length == 0 || /^\s*$/.test(formulario[i].value)){

                               alert (formulario[i].name+ ' No puede estar vacío ');

                               todoCorrecto=false;

                               }

                }

                }

if (todoCorrecto ==true) {formulario.submit();}

}
</script>





        

</body>
</html>>