<?php

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');
define('HOME', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/home');
define('LOGIN', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/login');
define('ERROR', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/error');
define('ADMINISTRACION', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/administracion');
define('ROLES', array("usuario", "administrador"));

require_once('app/controller/turnoFacilController.php');
require_once('app/controller/usuariosController.php');

$turnoFacilController = new turnoFacilController();
$usuariosController = new UsuariosController();

if (!empty($_GET['action'])) {
    $accion = $_GET['action'];
} else {
    $accion = 'home';
}

$params = explode('/', $accion);

switch ($params[0]) {
        //paginas bases por una forma de decirlo
    case 'home':
        $turnoFacilController->showHome();
        break;
    case 'login':
        $usuariosController->showLogin();
        break;
        //casos relacionados con usuarios
    case 'verificar':
        $usuariosController->verificar();
        break;
    case 'desconectar':
        $usuariosController->desconectar();
        break;
        //error URL
    default:
        $turnoFacilController->showError();
        break;
}
