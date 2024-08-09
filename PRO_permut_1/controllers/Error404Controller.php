<?php

namespace Controllers;

class Error404Controller {

    public function error() {
        $template = "404.phtml";
        include_once 'views/layout404.phtml';
    }
}