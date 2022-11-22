{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="container">
    <br />
    <h3>lista de medicos a cargo</h3>
    <table class="table table-dark table-striped">
        <tr>
            <th>medico</th>
            <th>obra social</th>
            <th>especialidad</th>
            <th>hora inicio</th>
            <th>hora fin</th>
        </tr>
        {if $medicos==null }
            <td colspan="6">no hay medicos asiganados</td>
        {/if}
        {foreach from=$medicos  item=$medico}
            <tr>
                <td>{$medico->personal_user}</td>
                <td>{$medico->obra_social}</td>
                <td>{$medico->especialidad}</td>
                <td>{$medico->hora_inicio}</td>
                <td>{$medico->hora_fin}</td>
            </tr>
        {/foreach}
    </table>
    {if $medicos!=null }
        <div class="container">
            <h1>cambiar turno</h1>
            <form action="cambiarHorario" method="post">
                <label class="form-label">seleccione el medico a cambiar el horario</label>
                <select name="medico">
                    <label class="form-label">seleccione al medico</label>
                    {foreach from=$medicos  item=$medico}
                        <option value="{$medico->personal_user}">{$medico->personal_user}</option>
                    {/foreach}
                </select>
                <br>
                <label class="form-label">seleccione hora de inicio del turno</label>
                <input type="time" name="horaInicio" min="8:00" max="20:00" step="1800" required>
                <br>
                <label class="form-label">seleccione hora de fin del turno</label>
                <input type="time" name="horaFin" min="8:00" max="20:00" step="1800" required>
                <br>
                <button type="submit" class="btn btn-info">cambiar horario</button>
            </form>
        </div>
    {/if}
    {if $mensaje}
        <br>
        <div class="container">
            <div class="alert alert-danger" role="alert">
                {$mensaje}
            </div>
        </div>
    {/if}
    <div>
{include file="template/footer.tpl"}