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
<div class="container">
  <div class="menu">
    <button class="menu__avatar" id="menuInicio">
        <g:img dir="images" file="mas.png" width="40" height="40"/>
    </button>
    <div class="menu__form">
        <g:form class="simpleform" style="50%;" action="alta" controller="usuario">
      <div class="menu__fields">

          <div class="field">
         <label for="alarma">Pastilla</label>
          <input type="text" id="pastilla" name="pastilla" class="input" required pattern=.*\S.* />
        </div>
          <div class="field">
              <label for="alarma">Hora</label>
              <input type="text" id="hora" name="hora" class="input" required pattern=.*\S.* />
          </div>
          <div class="field">
              <label for="alarma">Minutos</label>
              <input type="text" id="minutos" name="minutos" class="input" required pattern=.*\S.* />
          </div>
          <div class="field">
              <label for="alarma">Dias de la semana</label>
              <input type="text" id="dias" name="dias" class="input" required pattern=.*\S.* />
          </div>
        <div class="menu__footer">
          <button class="btn">Agregar</button>
        </div>
      </div>
        </g:form>
     </div>
  </div>
  
  <h2>Pacientes</h2>
  <table class="table table-hover">
    <thead>

    </thead>
    <tbody>
    <g:each in="${pacientes}" var="pacienteVar">
        <tr>
            <a id="menuInicio">Paciente: ${pacienteVar.paciente}</a>
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
<asset:javascript src="menu.js"/>
<asset:javascript src="muestravalor.js"/>

</body>
</html>