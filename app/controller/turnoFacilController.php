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
    public function showMedicosACargo($mensaje = '')
    {
        $this->helper->controlarSecretario();
        $medicos = $this->turnosModel->getMedicos($_SESSION['email']);
        $this->turnoFacilView->mostrarMedicosACARGO($medicos, $mensaje);
    }

    public function cambiarHorario()
    {
        $medico = $_POST['medico'];
        $horaInicio = $_POST['horaInicio'];
        $horaFin = $_POST['horaFin'];
        if ($horaInicio >= $horaFin) {
            //no actualizar horario
            $this->showMedicosACargo("error! el horario de inicio es menor que el horario de fin");
        } else {
            //actualizar el horario
            $this->turnosModel->cambiarHorario($medico, $horaInicio, $horaFin);
            $this->showMedicosACargo();
        }
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

    public function showTurnosFiltradosM()
    {
        $this->helper->controlarSecretario();
        $Medico = $_POST['medica'];
        if (isset($Medico)) {
            $Turno = $this->turnosModel->getTurnos($Medico);
            $this->turnoFacilView->mostrarTodosTurnos($Turno);
        }
    }

    public function showTurnosFiltradosP()
    {
        $this->helper->controlarSecretario();
        $paciente = $_POST['paciente'];
        if (isset($paciente)) {
            $Turno = $this->turnosModel->getTurnosPaciente($paciente);
        }
        $this->turnoFacilView->mostrarTodosTurnos($Turno);
    }
}
