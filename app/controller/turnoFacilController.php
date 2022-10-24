<?php
require_once('app/view/turnoFacilView.php');
require_once('app/models/turnosModel.php');
require_once('helpers/auth.helper.php');

//controlador de turno facil
class turnoFacilController
{
    private $peliculasView;
    private $helper;

    //llamo al pelis model, al view y al generos model para obtener sus funciones
    public function __construct()
    {
        $this->turnoFacilView = new PelisView();
        $this->turnosModel = new turnosModel();
        $this->helper = new AuthHelper();
    }

    //muestro el home
    public function showHome($mensaje = '')
    {
        $this->turnoFacilView->mostrarHome();
    }

    //va al mostrar error cuando hay un problema en la URL
    public function showError()
    {
        $this->turnoFacilView->mostrarError();
    }

   //va al mostrar turnos que tiene el medico
   public function showTurnos()
   {
       $this->helper->controlarMedico();
       $turnos = $this->turnosModel->getTurnos($_SESSION['email']);
       $this->turnoFacilView->mostrarTurnos($turnos);
   }
   //mostrar todos los turnos
   public function showAllTurnos()
   {
       $this->helper->controlarSecretario();
       $turnos = $this->turnosModel->getAllTurnos();
       $this->turnoFacilView->mostrarTodosTurnos($turnos);
   }

   public function eliminarTurno($id)
    {
        $this->turnosModel->borrarTurno($id);
        $this->showAllTurnos();
    }
}