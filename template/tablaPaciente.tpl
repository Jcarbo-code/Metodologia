<div class="container">
    <br/>
    <h3>Turnos disponibles</h3>
    <form action="filtrarMedico" method="post">
        <div class="container">
            <label class="form-label">Filtrar medico</label>
            <input type="text" class="form-control" name="medico">
        </div>
        <button type="submit" class="btn btn-info">Filtrar</button>
    </form>
</div>
    <!--<a href="eliminarTurno/{$turno->id_turno}" class="card-link btn btn-danger btn-sm">Eliminar</a>-->
    <table class="table table-dark table-striped">
        <tr>
            <th>Nombre del medico</th>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Reserva</th>
        </tr>
        {if $turnos==null }
            <td colspan="6">no hay turnos asiganados</td>
        {/if}
        {foreach from=$turnos  item=$turno}
            <tr>
                <td>{$turno->medica_personal_user}</td>
                <td>{$turno->fecha}</td>
                <td>{$turno->hora}</td>
                <td><a class="card-link btn btn-primary btn-sm">Reservar</a></td>
            </tr>
        {/foreach}
    </table>
<div>