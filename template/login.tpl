{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="login">
    <div class="container">
        <h1>iniciar sesión</h1>
        <form action="verificar" method="post">
            <div class="mb-3">
                <label class="form-label">ingrese el email</label>
                <input type="text" class="form-control" name="email" placeholder="ejemplo@gmail.com" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese la contraseña</label>
                <input type="password" class="form-control" name="contraseña" placeholder="contraseña" required>
            </div>
            <button type="submit" class="btn btn-info">ingresar</button>
        </form>
    </div>
</div>
<div class="login">
    <div class="container">
        <h1>iniciar sesión paciente</h1>
        <form action="verificarPaciente" method="post">
            <div class="mb-3">
                <label class="form-label">ingrese el documento</label>
                <input type="number" class="form-control" name="dni" required>
            </div>
            <div class="mb-3">
                <label>no tiene usuario ingrese <a href="crearUsuarioVista">aqui</a></label>
            </div>
            <button type="submit" class="btn btn-info">ingresar</button>
        </form>
    </div>
</div>
{if $mensaje}
    <br>
    <div class="container">
        <div class="alert alert-danger" role="alert">
            {$mensaje}
        </div>
    </div>
{/if}

{include file="template/footer.tpl"}