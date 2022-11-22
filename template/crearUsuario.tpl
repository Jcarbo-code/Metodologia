{include file="template/head.tpl"}
{include file="template/navbar.tpl"}
<div class="login">
    <div class="container">
        <h1>crea usuario</h1>
        <form action="crearUsuario" method="post">
            <div class="mb-3">
                <label class="form-label">ingrese el dni</label>
                <input type="int" class="form-control" name="dni" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su nombre</label>
                <input type="text" class="form-control" name="nombre" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su apellido</label>
                <input type="text" class="form-control" name="apellido" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su direccion</label>
                <input type="text" class="form-control" name="direccion" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su telefono</label>
                <input type="int" class="form-control" name="telefono" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su email</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="mb-3">
                <label class="form-label">ingrese su obra social</label>
                <input type="text" class="form-control" name="obraSocial" required>
            </div>
            <button type="submit" class="btn btn-info">ingresar</button>
        </form>
        {if $mensaje}
            <br>
            <div class="container">
                <div class="alert alert-danger" role="alert">
                    {$mensaje}
                </div>
            </div>
        {/if}
    </div>
</div>
{include file="template/footer.tpl"}