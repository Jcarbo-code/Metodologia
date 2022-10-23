<?php
require_once('app/view/turnoFacilView.php');


//controlador de turno facil
class turnoFacilController
{
    private $peliculasView;
    

    //llamo al pelis model, al view y al generos model para obtener sus funciones
    public function __construct()
    {
        $this->turnoFacilView = new PelisView();
    }

    //muestro el home
    public function showHome($mensaje = '')
    {
        $this->turnoFacilView->mostrarHome();
    }

    //va al mostrar error cuando hay un problema en la URL
    public function showError()
    {
        $this->peliculasView->mostrarError();
    }

   
}
