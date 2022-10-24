<?php
require_once('./libs/smarty-3.1.39/libs/Smarty.class.php');
//vistas de ultra pelis
class PelisView
{

    private $smarty;
    function __construct()
    {
        $this->smarty = new smarty();
        $this->smarty->assign('baseUrl', BASE_URL);
    }

    public function mostrarHome()
    {
        $this->smarty->display('template/menu.tpl');
    }

    public function mostrarError()
    {
        $this->smarty->display('template/error404.tpl');
    }

    public function mostrarTurnos($turnos)
    {
        $this->smarty->assign('turnos', $turnos);
        $this->smarty->display('template/turnosMedico.tpl');
    }

    public function mostrarTodosTurnos($turnos)
    {
        $this->smarty->assign('turnos', $turnos);
        $this->smarty->display('template/turnosSecretario.tpl');
    }
}
