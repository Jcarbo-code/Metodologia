<?php
require_once('./libs/smarty-3.1.39/libs/Smarty.class.php');
//vistas del usuario
class UsuariosView
{
    private $smarty;
    function __construct()
    {
        $this->smarty = new smarty();
        $this->smarty->assign('baseUrl', BASE_URL);
    }

    public function mostrarLogin($mensaje = '')
    {
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('template/login.tpl');
    }
    
    public function crearUsuarioVista($mensaje = '')
    {
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('template/crearUsuario.tpl');
    }
}
