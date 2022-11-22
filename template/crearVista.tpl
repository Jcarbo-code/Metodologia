{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="container">
    <h1>reservar turno</h1>
    <form action="reservarTurno" method="post">
        {if isset($medicos)}
            <label>seleccione el medico</label>
            <select name="medico">
                {foreach from=$medicos item=medico}
                    <option value="{$medico->personal_user}">{$medico->nombre}</option>
                {/foreach}
            </select>
            <label>seleccione el dia</label>
            <input type="date"  name="dia">
            <label>seleccione la hora</label>
            <input type="time" name="hora" min="08:00" max="20:00" step="1800" required>
            <button type="submit" class="btn btn-info">sacar turno</button>
        {else}
            <p>no hay medicos disponibles</p>
        {/if}
    </form>
    {if isset($mensaje)}
        <br>
        <div class="container">
            <div class="alert alert-danger" role="alert">
                {$mensaje}
            </div>
        </div>
    {/if}
</div>

{include file="template/footer.tpl"}