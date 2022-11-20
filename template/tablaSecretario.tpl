<div class="container">
    <br/>
    <h3>lista de turnos</h3>
    <table class="table table-dark table-striped">
        <tr>
            <th>paciente dni</th>
            <th>fecha</th>
            <th>hora</th>
            <th>turno</th>
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
                <td><a href="eliminarTurno/{$turno->id_turno}" class="card-link btn btn-danger btn-sm">Eliminar</a></td>
            </tr>
        {/foreach}
    </table>
<div>