{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="container">
    <h1>bienvenido a turno facil</h1>
</div>
<form action="filtroTurno" method="post">
    <div class="container">
        <label class="form-label">buscar turnos de paciente</label>
        <input type="text" class="form-control" name="paciente">
    </div>
    <div class="container">
        <label class="form-label">buscar turnos de medica</label>
        <input type="text" class="form-control" name="medica">
    </div>
    <button type="submit" class="btn btn-info">buscar</button>
</form>
{include file="template/footer.tpl"}