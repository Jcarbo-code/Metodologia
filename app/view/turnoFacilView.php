<?php
require_once('./libs/smarty-3.1.39/libs/Smarty.class.php');
//vistas de ultra pelis
class TurnoFacilView
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
    
    public function mostrarMedicosACARGO($medicos,$mensaje = '')
    {
        $this->smarty->assign('medicos', $medicos);
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('template/medicosACargo.tpl');
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

    function turnos($turnos, $medicos)
    {
        $smarty = new Smarty();
        $smarty->assign('titulo', 'Administracion de Turnos');
        $smarty->assign('turnos', $turnos);
        $smarty->assign('medicos', $medicos);
        $smarty->display('Template/secretaria.tpl');
    }
    function renderError($error)
    {
        $smarty = new Smarty();
        $smarty->assign('error', $error);
        $smarty->display('Template/error.tpl');
    }
}
