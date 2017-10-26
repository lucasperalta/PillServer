  <!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>PastillApp</title>


    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:stylesheet src="styleprincipal.css"/>


	<meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.js"/>


</head>
<body>




    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="modalHeader">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <g:form class="simpleform" style="50%;" action="alta" controller="usuario">
                        <div class="menu__fields">
                            <input type="hidden" id="paciente" name="paciente" value="" />

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
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>





  <h2>Pacientes</h2>
  <table class="table table-striped">
    <thead>

    </thead>
    <tbody>
    <g:each in="${pacientes}" var="pacienteVar">
        <tr>
            <a id="pacienteNombreId"      onclick="loadPaciente('${pacienteVar.paciente}')" >Paciente: ${pacienteVar.paciente}</a>
            <table class="table table-hover">
        <thead>

            <th>Alarma</th>
            <th>Hora</th>
            <th>Minutos</th>
            <th>Dia De Semana</th>

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




<script>


    function loadPaciente(nombre){
        $("#paciente").val(nombre);
        $("#modalHeader").text(nombre);

        $("#myModal").modal();
    }

</script>

</body>
</html>