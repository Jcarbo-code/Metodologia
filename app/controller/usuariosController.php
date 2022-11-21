<?php
require_once('app/controller/turnoFacilController.php');
require_once('app/view/usuariosView.php');
require_once('app/models/usuariosModel.php');
require_once('helpers/auth.helper.php');

class UsuariosController
{
    private $usuariosView;
    private $usuariosModel;
    private $helper;

    public function __construct()
    {
        $this->turnoFacilController = new turnoFacilController();
        $this->usuariosView = new UsuariosView();
        $this->usuariosModel = new UsuariosModel();
        $this->helper = new AuthHelper();
    }

    public function showLogin($mensaje = '')
    {
        $this->usuariosView->mostrarLogin($mensaje);
    }

    public function verificar()
    {
        $user = $_POST['email'];
        $contraseña = $_POST['contraseña'];
        //lo que hace getUsuario es que al email que le paso lo busca en la base de datos y trae todos los datos del usuario con ese mismo email
        $usuario = $this->usuariosModel->getUsuario($user);
        if (!empty($usuario) && password_verify($contraseña, $usuario->password)) {
            $this->helper->logear($usuario);
            header('location:' . HOME);
        } else {
            $this->showLogin('error de usuario o contraseña');
        }
    }

    public function desconectar()
    {
        $this->helper->logout();
    }

}
