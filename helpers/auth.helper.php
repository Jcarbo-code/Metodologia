<?php

class AuthHelper
{

    public function __construct()
    {
        $this->startSession();
    }

    public function startSession()
    {
        if (session_status() != PHP_SESSION_ACTIVE)
            session_start();
    }


    public function logear($usuario)
    {
        $this->startSession();
        $_SESSION['email'] = $usuario->user;
        $_SESSION['rol'] = $usuario->tipo;
    }

    public function logearPaciente($paciente)
    {
        $this->startSession();
        $_SESSION['dni'] = $paciente->dni;
        $_SESSION['rol'] = "paciente";
    }

    public function logout()
    {
        $this->startSession();
        session_destroy();
        header('location:' . LOGIN);
    }

    public function controlarSesion()
    {
        $this->startSession();
        if (empty($_SESSION['email'])) {
            header('location:' . LOGIN);
            die();
        }
    }

    public function controlarMedico()
    {
        $this->startSession();
        $this->controlarSesion();
        if ($_SESSION['rol'] != "0") {
            header('location:' . HOME);
        }
    }

    public function controlarSecretario()
    {
        $this->startSession();
        $this->controlarSesion();
        if ($_SESSION['rol'] != "1") {
            header('location:' . HOME);
        }
    }

}
