<?php
require_once('model.php');

class UsuariosModel extends Model
{

    //sirve para controlar el usuario y contraseña
    public function getUsuario($email)
    {
        $sql = "SELECT * FROM `personal` WHERE user=?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$email]);
        $usuario = $stm->fetchAll(PDO::FETCH_OBJ);

        if (count($usuario) > 0) {
            return  $usuario[0];
        }
        return null;
    }

    public function controlarNombreUsuario($nombreUsuario)
    {
        $sql = "SELECT * FROM `personal` WHERE user=? limit 1";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$nombreUsuario]);
        $resultado = $stm->fetch(PDO::FETCH_OBJ);
        if ($resultado == false) {
            return true;
        } else {
            return false;
        }
    }

    //sirve para controlar el usuario y contraseña
    public function getPaciente($dni)
    {
        $sql = "SELECT * FROM `paciente` WHERE dni=?";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$dni]);
        $usuario = $stm->fetchAll(PDO::FETCH_OBJ);

        if (count($usuario) > 0) {
            return  $usuario[0];
        }
        return null;
    }

    public function crearPaciente($dni,$nombre,$apellido,$direccion,$telefono,$email,$obraSocial){
        $sql = "INSERT INTO `paciente` (`dni`, `nombre`, `apellido`, `direccion`, `telefono`, `email`, `obra_social`, `nro_afiliado`) VALUES (?,?,?,?,?,?,?,?)";
        $stm = $this->PDO->prepare($sql);
        $stm->execute([$dni,$nombre,$apellido,$direccion,$telefono,$email,$obraSocial,NULL]);
    }

}
