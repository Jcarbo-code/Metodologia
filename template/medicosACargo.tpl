{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="container">
    <br/>
    <h3>lista de medicos a cargo</h3>
    <table class="table table-dark table-striped">
        <tr>
            <th>medico</th>
            <th>obra social</th>
            <th>especialidad</th>
        </tr>
        {if $medicos==null }
            <td colspan="6">no hay medicos asiganados</td>
        {/if}
        {foreach from=$medicos  item=$medico}
            <tr>
                <td>{$medico->personal_user}</td>
                <td>{$medico->obra_social}</td>
                <td>{$medico->especialidad}</td>
            </tr>
        {/foreach}
    </table>
<div>
{include file="template/footer.tpl"}