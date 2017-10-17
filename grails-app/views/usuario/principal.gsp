  <!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Elastic Login Form</title>


    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>


	<meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.js"/>


</head>
<body>
  <!--Google Font - Work Sans-->
<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'>
<div id='cssmenu'>
<ul>
   <li><a href='#'><span>Pacientes</span></a></li>
   <li class='active has-sub'><a href='#'><span>Products</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>Product 1</span></a>
            <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>
            <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
     <!--<li><a href='#'><span>About</span></a></li>
   <li class='last'><a href='#'><span>Contact</span></a></li>-->
   <p class='nombre'><span>PastillApp</span></p>
</ul>
 
</div>


<div class="container">

  
  <div class="menu">
    <button class="menu__avatar" id="menuInicio">
     <img src="https://pbs.twimg.com/profile_images/554631714970955776/uzPxPPtr.jpeg" alt="Agregar Pastilla" /> 
    </button>
    <div class="menu__form">
      <div class="menu__fields">
        <div class="field">
         <label for="pastilla">Pastilla</label>
          <input type="text" id="fieldUser" class="input" required pattern=.*\S.* />
        </div>
        <div class="field">
         <label for="alarma">Alarma</label>
          <input type="text" id="fieldPassword" class="input" required pattern=.*\S.* />
        </div>
        <div class="menu__footer">
          <button class="btn">Agregar</button>
        </div>
      </div>
     </div>
  </div>
  
  <h2>Pacientes</h2>
  <table class="table table-hover">
    <thead>




    </thead>
    <tbody>
    <g:each in="${pacientes}" var="pacienteVar">
        <tr>
        <td>Paciente: ${pacienteVar.paciente}</td>
         <table class="table table-hover">
        <thead>

            <th>Alarma</th>
            <th>hora</th>
            <th>minutos</th>
            <th>diaDeSemana</th>


        </thead>
        <tbody>
        <g:each in="${pacienteVar.alarmas}" var="alarmas">
            <tr>
                <td>${alarmas.nombre}</td>
                <td>${alarmas.hora}</td>
                <td>${alarmas.minutos}</td>
                <td>${alarmas.diaDeSemana}</td>
            </tr>
        </g:each>
        </tbody>
         </table>

            <tr>
    </g:each>

    </tbody>
  </table>
</div>

<asset:javascript src="index.js"/>

</body>
</html>