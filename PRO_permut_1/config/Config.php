<?php

/**
 * Class Config
 *
 * A configuration class that provides constants and autoloading for the application.
 */
class Config {

    /**
     * Register an autoloader function.
     * The autoloader function attempts to load a class file based on the namespace and class name.
     * It converts the namespace separator '\' to a directory separator '/' and includes the file.
     * @param string $class The fully-qualified class name.
    */
    public static function registerAutoloader() {

        spl_autoload_register(function($class) {
            require_once lcfirst(str_replace('\\', '/', $class)) . '.php'; // require_once controllers/HomeController.php
        });
    }


    /**
     * Retrieves the configuration settings.
     *
     * This method fetches the configuration settings based on the specified element.
     * If no element is specified, it returns the entire configuration.
     *
     * @param   string $elem    - The specific configuration element to retrieve. Defaults to "all".
     * @return  mixed           - The configuration settings for the specified element, or all settings if "all" is specified.
     */
    public static function getConfig($elem = "all") {

        $configurations = [
            'db' => [
                "local" => [
                    'host'      => 'localhost',
                    'dbname'    => '....',
                    'user'      => '....',
                    'password'  => '....',
                ],
                "micke" => [
                    'host'      => 'db.3wa.io',
                    'dbname'    => 'argon71hotmailfr_permut',
                    'user'      => 'argon71hotmailfr',
                    'password'  => '1b6d9c41e962f51b032b2fbc3a06cba1',
                ],
                "kilian" => [
                    'host'      => 'db.3wa.io',
                    'dbname'    => 'kilianjanus_permut',
                    'user'      => 'kilianjanus',
                    'password'  => '65c31ce01e7314f2e27acf9451035f58',
                ],
                "laure" => [
                    'host'      => 'db.3wa.io',
                    'dbname'    => 'laurebonnevalle_Permut',
                    'user'      => 'laurebonnevalle',
                    'password'  => '0143d153a0a995dd144dbabddf0210fe',
                ]
            ],

            'infos' => [
                'db_connection'     => 'kilian',
                'title'             => 'PRO_Permut',
                'catchSentence'     => 'Plateforme de recherche automatisée de permutations',
                'icon'              => 'assets/img/Logo.png', // type="image/png
                'logo'              => 'assets/img/Logo.png',
                'altLogo'           => 'Logo du site représenté par ...',
                'createdBy'         => 'Gaël FELIX, Kilian JANUS et Laure BONNEVALLE',
                'secretKeyEncrypt'  => 'ByzUunzBm9gNbchKJlR62SiKMDjoyBRz',
                'contactUs' => [
                    'address' => '12 Rue de la Paix, Lyon, France, 69000',
                    'phone' => '(+33) 6 00 00 00 00'
                ],
                'connection'    => [
                    'email' => ['customers' => 'email'],
                    'pwd'   => ['customers' => 'password'],
                ],
                'expeditorEmail'    => 'admin_pro-permut@gmail.com',
                'css'               => 'assets/css/style.css',
                'fonts' => [
                    'https://fonts.googleapis.com/css2?family=Arsenal+SC:ital,wght@0,400;0,700;1,400;1,700&family=Playwrite+DE+Grund:wght@100..400&display=swap',
                    'https://fonts.googleapis.com/css2?family=Arsenal+SC:ital,wght@0,400;0,700;1,400;1,700&family=Playwrite+DE+Grund:wght@100..400&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap',
                    'https://fonts.googleapis.com/css2?family=Playwrite+DE+Grund:wght@100..400&display=swap',
                ],
                'js' => [
                    'Accueil' => [ 
                        'assets/js/home.js',
                        'assets/js/htmlVerifications.js',
                    ],
                    'Enregistrement' => [
                        'assets/js/formController.js',
                        'assets/js/htmlVerifications.js',
                    ],
                    'Connexion' => [
                        'assets/js/home.js',
                        'assets/js/formController.js',
                        'assets/js/htmlVerifications.js',
                    ],
                    'Contactez-nous' => [
                        'assets/js/formController.js',
                        'assets/js/htmlVerifications.js',
                    ],
                    'Combinaisons' => [
                        'assets/js/ajax.js',
                        'assets/js/htmlVerifications.js',
                    ],
                    'Utilisateurs' => [

                    ],
                ],
            ],

            'sessionName'   => 'user',              // Nom de la session.
            'tokenName'     => 'tokenVerify',       // Name of token.
            'searchIsAdmin' => 'role',              // La clé du tableau de session permettant de déterminer le role de l'utilisateur.

            'nav' => [
                'all'=>[                                    // Regardless of whether the user is logged in or not
                    'Accueil'                   => 'home',
                    'allUsers'                  => 'allUsers',
                    'Combinaisons détectées'    => 'permut',
                    'Contact'                   => 'contactUs',
                ],
                'notConnected' => [                         // if the user is not logged in
                    'Connexion'         => 'connect',
                    'S\'inscrire'       => 'register'
                ],
                'connected' => [                            // if the user is logged in
                    'Déconnexion'       => 'disconnect',
                    'Profil'            => 'profile'
                ],
                'connectedAndAdmin' => [                    // if the user is logged in AND admin
                    'DashBoard'         => 'dash'
                ],
            ],

             'routes' =>[
                'default'       => 'home',          // Route "home" par défaut ( la page d'accueil )
                'error404'      => 'error404',      // Route de redirection vers la page 404
                'createAccount' => 'register',      // Route vers le formulaire de création de compte
                'connection'    => 'connect',       // Route pour la connexion
                'changePassword' => 'modifyPassword', // Route vers le formulaire de modification de mot de passe
                'profile'       => 'profile',       // Route vers la page Profil
                'usersDetails'  => 'usersDetails',  // Route vers le formulaire de complément d'informations
                'disconnection' => 'disconnect',    // Route pour la déconnexion
                'dashboard'     => 'dash',          // Route vers le dashboard
                'contact'       => 'contactUs',     // Route vers le formulaire de contact
                'ajax'          => 'permut',        // Route vers la recherche ajax
                'authorizations' => [
                    'table'         => 'customers',
                    'column'        => 'id_roles',
                    'valueIsAdmin'  => 'ADMIN'
                ],
                [
                    'home'          => ['HomeController',       'display',          false,  false],
                    'register'      => ['UsersController',      'register',         false,  false],
                    'logout'        => ['UsersController',      'disconnect',       true,   false],
                    'allUsers'      => ['UsersController',      'allUsers',         false,  false],
                    'permut'        => ['PermutController',     'getAllPermut',     false,  false],
                    'contactUs'     => ['ContactController',    'contactUs',        false,  false],
                    'ajax'          => ['PermutController',     'getCombinations',  false,  false],
                    'connect'       => ['ConnectController',    'login',            false,  false],
                    'modifyPassword'=> ['ConnectController',    'modifyPassword',   false,  false],
                    'disconnect'    => ['ConnectController',    'disconnection',    true,   false],
                    'profile'       => ['UserController',       'displayProfile',   true,   false],
                    'usersDetails'  => ['UserController',       'modifyDetails',    true,   false]
                ]
            ],
        ];

        if($elem != "all")
            return $configurations[$elem];
        return $configurations;
    }
}
