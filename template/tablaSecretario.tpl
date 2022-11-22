<div class="container">
    <br />

    <h3>lista de turnos</h3>
    <table class="table table-dark table-striped">
        <tr>
            <th>paciente dni</th>
            <th>fecha</th>
            <th>hora</th>
            <th>turno</th>
            <th>medico</th>
            <th>Cancelar</th>
        </tr>
        {if $turnos==null }
            <td colspan="6">no hay turnos asiganados</td>
        {/if}
        {foreach from=$turnos  item=$turno}
            <tr>
                <td>{$turno->paciente_dni}</td>
                <td>{$turno->fecha}</td>
                <td>{$turno->hora}</td>
                <td>{$turno->turno}</td>
                <td>{$turno->medica_personal_user}</td>
                <td><a href="eliminarTurno/{$turno->id_turno}" class="card-link btn btn-danger btn-sm">Eliminar</a></td>
            </tr>
        {/foreach}
    </table>

    <form action="filtroTurnoPaciente" method="post">
        <div class="container">
            <label class="form-label">buscar turnos de paciente</label>
            <input type="text" class="form-control" name="paciente">
        </div>
        <button type="submit" class="btn btn-info">buscar</button>
    </form>

    <form action="filtroTurnoMedico" method="post">
        <div class="container">
            <label class="form-label">buscar turnos de medica</label>
            <input type="text" class="form-control" name="medica">
        </div>
        <button type="submit" class="btn btn-info">buscar</button>
    </form>
<div>