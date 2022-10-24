<h1 class="titulo">{$titulo}</h1>
<form action="{BASE_URL}verTurnosMedico" method="post">
</form>
<div class="secretaria">
  <p class="nombre">Secretaria</p>
</div>
<!--form con select para elegir un medico por nombre y filtrar vista a turnos de este---->
<form action="{BASE_URL}viewTurnsMedicoOfSecretaria" method="post">
  <label>Seleccionar turnos de medico: </label>
  <select name="medico">
    {foreach from=$medicos item=medico}
      <option value="{$medico->id_medico}">{$medico->Nombre}</option>
    {/foreach}
  </select>
  <button type="submit">Buscar</button>
</form>

<div class="div_cont_verTurno_crearTurno">
  <!--Div contenedor de lista de los turnos-->
  <div class="table-admin">
    <table class="table">
      <thead class="table-success">
        <tr>
          <th scope="col">Médico</th>
          <th scope="col">Turnos</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$turnos item=turno}
          <tr id="{$turno->id_turno}">
          
            <td class="table-success">
              <p>{$turno->Nombre}</p>
              <p>{$turno->Especialidad}</p>
              <p id="turn_date">{$turno->fecha}</p>
              <p class="dato_paciente">Datos Paciente :</p>
              <p>{$turno->nombrePaciente}</p>
              <p>{$turno->dni_paciente}</p>
              <p>{$turno->ObraSocial}</p>
              {if $turno->urgencia == 1}
                <label class="table-success"><button type="button" id="{$turno->id_turno}"><a
                      href="eliminarTurno/{$turno->id_turno}">eliminar</a></button></label>
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  
  <footer>

  </footer>
  </body>

</html>