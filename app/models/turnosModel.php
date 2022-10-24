<?php
require_once('model.php');

class turnosModel extends Model
{

    public function getTurnos($usuario){
        $sql = "SELECT * FROM `turnos` WHERE medica_personal_user = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$usuario]);
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }

    public function getAllTurnos(){
        $sql = "SELECT * FROM `turnos`";
        $stm = $this->PDO->prepare($sql);
        $stm->execute();
        $turno = $stm->fetchAll(PDO::FETCH_OBJ);
        return $turno;
    }

    public function borrarTurno($id){
        $sql = "DELETE FROM `turnos` WHERE id_turno = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$id]);
    }
   
}
