{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="container">
    <table class="table table-dark table-striped">
        <tr>
            <th>Nombre del medico</th>
            <th>Fecha</th>
            <th>Hora</th>
        </tr>
        {if $turnos==null }
            <td colspan="6">no pidio ningun turno</td>
        {/if}
        {foreach from=$turnos  item=$turno}
            <tr>
                <td>{$turno->medica_personal_user}</td>
                <td>{$turno->fecha}</td>
                <td>{$turno->hora}</td>
            </tr>
        {/foreach}
    </table>
</div>
{include file="template/footer.tpl"}