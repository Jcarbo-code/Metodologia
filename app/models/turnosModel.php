<?php
require_once('model.php');

class turnosModel extends Model
{

    public function getTurnos($usuario){
        $sql = "SELECT * FROM `turnos` WHERE medica_personal_user = ?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$usuario]);
        $pelicula = $stm->fetchAll(PDO::FETCH_OBJ);
        return $pelicula;
    }
   
}
