<?php
require_once('app/view/turnoFacilView.php');
require_once('app/models/turnosModel.php');
require_once('helpers/auth.helper.php');

//controlador de turno facil
class turnoFacilController
{
    private $turnoFacilView;
    private $helper;

    //llamo al model, al view y al helper para obtener sus funciones
    public function __construct()
    {
        $this->turnoFacilView = new TurnoFacilView();
        $this->turnosModel = new turnosModel();
        $this->helper = new AuthHelper();
    }

    //muestro el home
    public function showHome($mensaje = '')
    {
        $this->turnoFacilView->mostrarHome();
    }

    //muestro el home
    public function showMedicosACargo()
    {
        $this->helper->controlarSecretario();
        $medicos = $this->turnosModel->getMedicos($_SESSION['email']);
        $this->turnoFacilView->mostrarMedicosACARGO($medicos);
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

    public function showTurnosDisponibles()
    {
        $turnos = $this->turnosModel->getTurnosDisponibles();
        $this->turnoFacilView->mostrarTurnosDisponibles($turnos);
    }

    public function showTurnosDisponiblesPorMedico()
    {
        $medico = $_POST['medico'];
        if (isset($medico)){
            $turno = $this->turnosModel->getTurnosDisponiblesPorMedico($medico);
        }
        $this->turnoFacilView->mostrarTurnosDisponibles($turno);
    }

    public function eliminarTurno($id)
    {
        $this->turnosModel->borrarTurno($id);
        $this->showAllTurnos();
    }

    // Trae los turnos del medico elegido en el select
    function getTurnsOfMedicalOfSecretary()
    {
        $idMedical = $_POST['medico'];
        if (!isset($idMedical) || empty($idMedical)) {
            $this->turnoFacilView->renderError("Error! medico no especificado");
            return;
        }
        $Turno = $this->turnosModel->getTurnsByMedicalId($idMedical);
        $Medico = $this->turnosModel->getAllMedicals();
        $this->turnoFacilView->turnos($Turno, $Medico);
    }

    function getTurnsOfMedicalsOfSecretary()
    {
        $Turno = $this->turnosModel->getTurnsBySecretaryId("eleanor");
        $Medicos = $this->turnosModel->getAllMedicals();
        $this->turnoFacilView->turnos($Turno, $Medicos);
    }

    public function showTurnosFiltrados()
    {
        $medica = $_POST['medica'];
        $paciente = $_POST['paciente'];
        /*if (isset($medica)) {
            $turnos = $this->turnosModel->getTurnsByMedicalId($medica);
        } else {
            if (isset($paciente)) {
                $turnos = $this->turnosModel->getTurnosPaciente($paciente);
            } else {
                $turnos = $this->turnosModel->getAllTurnos();
            }
        }
        $this->helper->controlarSecretario();
        $this->turnoFacilView->mostrarTodosTurnos($turnos);*/
        $this->turnoFacilView->mostrarError();
    }
}
