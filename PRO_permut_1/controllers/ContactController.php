<?php

namespace Controllers;

use \Router;

class ContactController extends router {

    /**
     * Process contact registration.
     * If the request method is not POST, displays the contact form.
     * If POSTed data is valid, inserts the contact into the database and displays success message.
     * If POSTed data is invalid, redisplays the form with error messages and retains entered data.
     */
    public function contactUs() {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $token = bin2hex(random_bytes(20));
            $_SESSION["tokenVerify"] = $token;

            $this->render('contact', 'layout', [
                'page'      => "Contactez-nous",
                'token'     => $token,
                'errors'    => [],
                'valids'    => [],
                'identity'  => null,
                'email'     => null,
                'story'     => null,
            ]);
            return;
        }

        $errors = [];
        $valids = [];
        
        var_dump($_POST); die;
        
        // Suite de la vérification et envoi bdd
        // INSERT INTO `contact`(`identity`, `email`, `story`) VALUES (?, ?, ?)
    }
}