<?php
require_once('model.php');

class turnosModel extends Model
{

    public function getTurnos($usuario)
    {
        $sql = "SELECT * FROM `turnos` WHERE medica_personal_user = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$usuario]);
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }

    public function getAllTurnos()
    {
        $sql = "SELECT * FROM `turnos`";
        $stm = $this->PDO->prepare($sql);
        $stm->execute();
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }

    public function getTurnosDisponibles()
    {
        $sql = "SELECT * FROM `turnos`"; // WHERE turno disponible no este en la tabla de turnos ya existente
        $stm = $this->PDO->prepare($sql);
        $stm->execute();
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }

    public function getTurnosDisponiblesPorMedico($medico)
    {
        $sql = "SELECT * FROM `turnos` WHERE medica_personal_user = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$medico]);
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno; 
    }

    public function borrarTurno($id)
    {
        $sql = "DELETE FROM `turnos` WHERE id_turno = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$id]);
    }

    public function getMedicos($secretario)
    {
        $sql = "SELECT * FROM `medica` where secretario_personal_user = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$secretario]);
        $medicos = $stm->fetchAll(PDO::FETCH_OBJ);
        return $medicos;
    }


    function getTurnsBySecretaryId($id)
    {
        $queryString = "SELECT m.Nombre,m.Imagen,m.Especialidad,t.fecha,t.id_turno,p.Nombre AS'nombrePaciente',p.ObraSocial,t.dni_paciente,m.urgencia FROM turno t INNER JOIN medico m ON m.id_medico = t.id_medico JOIN paciente p on p.DNI=t.dni_paciente  WHERE m.id_secretaria = ?";
        $query = $this->db->prepare($queryString);
        $query->execute(array($id));
        $turns = $query->fetchAll(PDO::FETCH_OBJ);
        return $turns;
    }

    function getTurnsByMedicalId($id)
    {
        $queryString = "SELECT * FROM turno WHERE medica_personal_user = ?";
        $query = $this->db->prepare($queryString);
        $query->execute(array($id));
        $turns = $query->fetchAll(PDO::FETCH_OBJ);
        return $turns;
    }

    function getAllMedicals()
    {
        $queryString = "SELECT * FROM medico";
        $query = $this->db->prepare($queryString);
        $query->execute();
        $medicals = $query->fetchAll(PDO::FETCH_OBJ);
        return $medicals;
    }

    public function getTurnosPaciente($usuario)
    {
        $sql = "SELECT * FROM `turnos` WHERE paciente_dni = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$usuario]);
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }
}
