

## RAPPEL Charte de Confidentialité, Discrétion et Secret Professionnel ##

    Informations Confidentielles : Toute information relative à l'entreprise, à ses clients, partenaires, fournisseurs, ou à tout projet en cours ou futur, y compris, mais sans s'y limiter, les données techniques, commerciales, financières, marketing, ainsi que tout document, support, code source ou information non publique, notamment les mots de passe et accès aux bases de données, des clés de paiement, clés et/ou méthode de chiffrement, méthodes de cryptage, requêtes SQL spécifiques dédiées au projet dont il n’est pas à l’origine.

    Secret Professionnel : L'obligation de maintenir la confidentialité des informations auxquelles le stagiaire a accès dans le cadre de ses fonctions, même après la fin du stage, et de ne pas divulguer ces informations à des tiers non autorisés.

    Pas de communication avec les autres apprenants présents sur le canal Teams, ni avec quiconque sur la nature du projet, le code et les sécurités mises en place, ... ( même avec un membre de votre famille ).
    Vous êtes toutefois autorisés à présenter le projet sur lequel vous avez travaillé aux membres du jury lors de votre passage à la soutenance au titre RNCP.

## PRESENTATION DU PROJET ##

La plate-forme PRO_Permut est un projet novateur qui a pour but de faciliter la recherche de permutant entre agents de même grade (fonction), de même secteur sur une plate-forme qui centralise toutes les comptes et qui recherche via un algorithme très pointu toutes les combinaisons possibles à 2, 3 ou 4.

	Il n'existe aucune réelle plate-forme centralisée permettant de faciliter la recherche de permutant, c'est pourquoi la réalisation de ce projet est primordiale au bon fonctionnement de notre force de police, de gendarmerie, de médecine, ... Cette plate-forme réduira le risque de fuite de données dues à l'utilisation de plate-formes externes et non réglementées par le gouvernement français telles que les réseaux sociaux classiques comme Facebook, ou encore les plate-formes de messagerie instantanées comme Facebook Messenger, Whatsapp (appartenant aussi à Facebook) ou encore Telegram qui malgré son cryptage, ne propose aucune vérification de statut.

	Ainsi, cette plate-forme va permettre de regrouper tous les fonctionnaires désireux de trouver un permutant et ainsi de proposer toutes les possibilités de permutations à chacun.

	Cette plate-forme aura donc pour but de faciliter la recherche de permutant entre agents.

## LE PUBLIC CIBLE ##

	Dans un premier temps, le public cible est les policiers sur le territoire français (France métropolitaine et DOM TOM) qui souhaitent rechercher une permutation afin de rentrer chez eux. Par la suite, il sera étendu à la Gendarmerie, les médecins/infirmiers, professeurs, ...

	La permutation doit, bien évidemment se faire entre deux policiers ayant le même grade, et avoir une corrélation entre le choix de départ de l’un et le choix d’arrivée de l’autre.

## LES BESOINS ET OBJECTIFS A ATTEINDRE ##

    Besoin :    Centraliser les données afin de permettre aux policiers de faciliter leurs transferts.
    Objectif :  Réduire les risque de sécurité dues aux applications tierces étrangères telles que Facebook/Whatsapp.

    Besoin :    Crypter toutes les données possibles. (nom/prénom, ...)
    Objectif :  Réduire les risque de fuite.

    Besoin :    S'assurer de l'authenticité des membres inscrits.
    Objectif :  Vérification accrue par l'administrateur.

## PERFORMANCE ##

        Le site doit être conçu pour gérer efficacement un volume potentiellement élevé de demandes de mutation (2000 à 3000 policiers), tout en maintenant des performances optimales. Cela implique une architecture robuste et évolutive, ainsi qu'une gestion efficace des bases de données pour garantir que le système puisse traiter les requêtes rapidement et de manière fiable, même en cas de pic d'activité. De nouvelles conditions peuvent être mises en place et donc le projet devra avoir une architecture facilement maintenable.

        En ce qui concerne le temps de réponse, il est essentiel que le site offre une expérience utilisateur fluide en garantissant des délais de réponse minimaux pour les demandes de mutation.
        Lorsque qu'un rapprochement est détecté, il est soumis à la validation de l'administrateur du site. S'il est validé, les agents reçoivent sur leur profil une alerte qu'ils peuvent valider ou refuser. Attention, une procédure très pointue devra être mise au point pour éviter les abus de refus ou de non réponse. Ainsi, un agent qui refuserait ou ne répondrait pas à une alerte serait automatiquement suspendu pendant une période de 6 à 8 mois même si son abonnement est valide.
        Une alerte validée ou refusée ne devra évidement plus ressortir.
        La ou les requêtes SQL peuvent être réalisée en asynchrone.

## REQUETES SQL COMPLEXES ##
    Les 3 principales requêtes SQL complexes permettant la recherche de combinaisons vous sont fournies. Les autres, plus simples, seront à réaliser.

## MAQUETTAGE FIGMA ##
    Le maquettage devra être réalisé avec FIGMA sur tous les supports.
    - Vous proposerez ainsi les pages suivantes :
        1 - Page d'accueil : Elle présentera le site et ses fonctionnalités. Les conditions générales d'utilisation / CGV (abonnement) / nombre d'inscrits, un historique des combinaisons détectées ( un peu comme au loto ), ...
        2 - Page d'inscription : Formulaire d'inscription.
        3 - Page connexion : Formulaire de connexion
        4 - Page profil : Page récapitulant le profil de l'utilisateur, et la possibilité de modifier ses données comme son mot de passe, ses choix de poste, ... ( sauf email ). Sous forme d'une carte d'identité par exemple
        5 - Page "Mes alertes" : Page récapitulant toutes les alertes reçues par l'agent.
        6 - Page "Contact" : Formulaire de contacte administrateur.
        7 - Page "Bien Choisir !" : Page fixe listant les astuces pour le choix des postes pour optimiser ses chances de trouver un permutant.
    - Le tout responsive avec menu burger en mobile.
    - Mobil-first

    - Coté administrateur, il se connectera de la même manière que l'utilisateur mais aura un accès dashboard admin.
        1 - Page "Combinaisons détectées" : Liste toutes les combinaisons trouvées. Chaque combinaison pourra être gérée ( valider, refuser par l'administrateur ). Sous forme de cards les unes à coté des autres.
        2 - Page "Gestion des utilisateurs" : Liste de tous les comptes, des comptes a vérifier, barre de recherche pour retrouver un compte via email pour gérer ce compte ( suspendre, bannir, ... )
        3 - Page "Messagerie" : Permet de lister et gérer les messages des utilisateurs.

##  DESIGN ##
    Un design simple et épuré. Le site privilégiera l'efficacité au design. Un site performant, pratique à utiliser tant pour les utilisateurs que pour l'administrateur.
    L'accent sera donc porté sur le fonctionnement du site plus que sur le design sans pour autant le négliger.

##  H1. ##
    Le titre h1 est déja utilisé dans le header pour le titre du site, vous devrez donc utiliser à partir du h2 dans les templates avec le render.

## LES FONTS : ##
    * Arsenal SC : Pour les titres (h1) y compris
    * Raleway : Pour les sous-titres
    * Playwrite Deutschland Grundschrift : Pour les contenus (paragraphes, ...)

    * Ces fonts sont présentes dans un dossier fonts dédié à cet effet. Aucun lien accepté, le programme doit pouvoir être autonome. Elles sont chargées dans "_fonts.scss".

## LES MEDIAS SCREENS "_vars.scss" ## *** Ce fichier ne doit pas être modifié sans autorisation ***

    // Styles par défaut pour les mobiles
    $mobile: "only screen and (max-width: 575px)";

    // Petits appareils (téléphones en mode paysage, 576px et plus)
    $small: "only screen and (min-width: 576px)";

    // Appareils moyens (tablettes, 768px et plus)
    $medium: "only screen and (min-width: 768px)";

    // Grands appareils (ordinateurs de bureau, 992px et plus)
    $large: "only screen and (min-width: 992px)";

    // Très grands appareils (grands écrans d'ordinateurs, 1200px et plus)
    $extra: "only screen and (min-width: 1200px)";

    Voici un exemple d'utlisation :

            // Styles par défaut pour les petits écrans (mobile)
            body {
                font-size: 14px;
                background-color: #f0f0f0;
            }

            // Pour les écrans de 575px ou moins (mobiles)
            @media #{$mobile} {
                body {
                    font-size: 12px;
                    background-color: #e0e0e0;
                }
            }

            // Pour les écrans de 576px ou plus (petits appareils)
            @media #{$small} {
                body {
                    font-size: 15px;
                    background-color: #d0d0d0;
                }
            }

            // Pour les appareils moyens (768px et plus)
            @media #{$medium} {
                body {
                    font-size: 16px;
                }
            }

            // Pour les grands appareils (992px et plus)
            @media #{$large} {
                body {
                    font-size: 18px;
                }
            }

            // Pour les très grands appareils (1200px et plus)
            @media #{$extra} {
                body {
                    font-size: 20px;
                }
            }
    Contrairement au design, le responsive devra être performant, bien codé et pérénisable.

## LES COULEURS "_vars.scss" ## *** Ce fichier ne doit pas être modifié sans autorisation ***

    // Couleurs autorisées et imposées

    $light_greenish_blue    : #55EFC4; // A utiliser pour les messages de validation
    $mint_feaf              : #00B894; // A utiliser pour les messages de validation
    $sour_lemon             : #FFEAA7;
    $bright_yarrow          : #FDCB6e;

    $faded_poster           : #81ECEC;
    $robins_egg_blue        : #00CEC9;
    $first_date             : #FAB1A0;
    $orangeville            : #E17055;

    $green_derner_tail      : #74B9FF;
    $electron_Blue          : #0984E3;
    $pink_Glamour           : #FF7675; // A utiliser pour les messages d'alerte ( erreur de remplissage de formulaire par exemple )
    $chi_Gong               : #D63031; // A utiliser pour les messages d'alerte ( erreur de remplissage de formulaire par exemple )

    $shy_moment             : #A29BFE;
    $exodus_Fruit           : #6C5CE7;
    $pico_Pink              : #FD79A8;
    $prunus_Avium           : #E84393;

    $white                  : #f9FAFA;
    $city_Lights            : #DFE6E9;
    $soothing_Breeze        : #B2BEC3;
    $american_River         : #636E72;
    $dracula_Orchid         : #2D3436;
    $black                  : #111314;

## UTILISATION DE SASS OBLIGATOIRE. Utilisez la même methode ! ##

    Observez comment j'ai utilisé SASS et essayez de reproduire la même chose pour les autres pages.
    Attention toutefois, je n'ai pas débuté en mobile-first. Mon code sera donc à reprendre. Il n'est la que pour vous montrer ma méthode.

## LES METHODES UTILISABLES COTE PHP ##

    ### router : ###

        * Public method to redirect to a specified route.
            $this->redirectTo($redirect);

        * Public method to checks if the user is authenticated.
            $this->isAuthenticated();

        * Public method to checks if the user has a specified role.
            $this->hasRole($role);

        * Public method to create sessions after successful login.
            $this->createSessions($data);

        * Public method to perform disconnection tasks.
            $this->disconnected();

        * Public method to render function to display a view within a layout.
            $this->render($viewName, $layoutName, $data = []);

    ### Functionality ( class Router extends Functionality ): ###

        * Public method to check if all keys are present in $_POST.
            $this->checkPostKeys($keys);

        * Public method to validate an email format using filter_var.
            $this->validateEmail($email);

        * Public method to validate an email format using filter_var and check if the email ends with "@interieur.gouv.fr".
            $this->specialValidateEmail($email);

        * Public method to validate a password against a given regex pattern.
            $this->validatePassword($password);

        * Public method to generate a new CSRF token and store it in the session.
            $this->generateToken();

        * Public method to generate a random string of a specified length.
            $this->generateRandomChain($longueur = 12);

        * Public method to compare if a plain text password matches a hashed password from the database.
            $this->comparePassword($password, $hashedPassword)

        * Public method to generate a random password of a specified length.
            $this->generateRandomPassword($length);

        * Public method to sanitizes input data by trimming whitespace and removing backslashes.
            $this->clearDatas($data);

        * Public method to verify the input text based on the specified size and format.
            $this->verifInputText($value, $size = false, $format = 'string');

        * Public method to formats a date string to a long French date format.
            $this->formatDate($date)

        * Public method to formats a date-time string to a specified format.
            $this->formatDateTime($dateTime, $format = 'd/m/Y H:i:s')
        
        * Public method to encrypts the plaintext using AES-256-CBC
            $this->encrypt($plaintext, $key = INTEGRAL_CONFIG['infos']['secretKeyEncrypt'])

        * Public method to decrypts the plaintext using AES-256-CBC
            $this->decrypt($plaintext, $key = INTEGRAL_CONFIG['infos']['secretKeyEncrypt'])        

        * Verifies if the provided captcha matches the one stored in the session.
            $this->public function verifCaptcha($captcha) 

        * Determines the navigation information based on the user's connection and admin status. ( DO NOT USE, RESERVED FOR NAV DISPLAY )
            public function infosNav() 

### METHODES EN PHP DISPONIBLES DANS DES MODELS ###

    Dans : TimesModel.php

        * Function which allows you to retrieve either the complete url or just the end.
            function endUrl($response = "all")

        * Method that allows you to add or remove a duration from a datetime
            function addTimeToTime($dateTime, $years, $months, $days, $hours, $minutes, $seconds, $oper = "add", $formatEnd = 'Y-m-d H:i:s') 

        * Method to calculate the time between two dates
            function dateDiff(string $dateFirst, string $dateLast)

    Dans : uploads.php        

        * Method to upload file
            public function uploadFile(array $file, string $dossier = '', array &$errors, string $folder = UPLOADS_DIR, array $fileExtensions = FILE_EXT_IMG)


## LES METHODES UTILISABLES COTE JAVASCRIPT ##

        Validate an email address :
        * function validateEmail(email) 

        Validate a text field :
        * function validateText(text, minLength, maxLength)

        Validate a matricule :
        * function validateMatricule(matricule)

        Validate a password :
        * function validatePassword(password)

        Validate a captcha :
        * function validateCaptcha(captcha)

        Capitalize the first letter of each word in a string :
        * function capitalize(str)

        Trim whitespace from both ends of a string :
        * function trimString(str)

        Truncate a string to a specific length and add ellipses if needed :
        * function truncateString(str, length)

        Format a date to a specific format (e.g., YYYY-MM-DD) :
        * formatDate(date)

        Add a specified number of days to a date :
        * addDays(date, days)

        Check if a value is empty (null, undefined, or empty string) :
        * function isEmpty(value)

        Check if a value is numeric :
        * function isNumeric(value)

        Get the current date in a specified time zone in the format YYYY-MM-DD :
        * function getCurrentDate(timeZone)
        
        Get the current date and time in a specified time zone in the format YYYY-MM-DD HH:MM:SS :
        * function getCurrentDateTime(timeZone)
        
        Get the current time in a specified time zone :
        * getCurrentTime(timeZone)
        
        Get the current URL of the page :
        * getCurrentURL()
        
        Get the query string of the current URL :
        * getQueryString()
        
        Get the value of a specific query parameter from the current URL :
        * getQueryParam(key)
        
        Get the path of the current URL :
        * getPath()
    
    Ces fonctions sont présentes dans le fichier common.js
    Un fichier JS "formController.js" permet de vérifier automatiquement le bon remplissage de n'importe quel formulaire.

## LES FICHIERS "htmlFunctions.js" ET "htmlVerifications.js" ##

    Ces fichiers sont des fichiers de contrôle afin de vérifier certains éléments des pages ou fichier contenant du html.
    Au chargerment de chaque page, le fichier de vérification doit être exécuter et vous devez vérifier si des messages d'erreur apparaîssent dans la console.

    Dans le fichier config.php
        'js' => [
            'home' => [ 
                'assets/js/home.js',
                'assets/js/htmlVerifications.js',   <----
            ],
            'register' => [
                'assets/js/formController.js',
                'assets/js/htmlVerifications.js',   <----
            ],
            'connect' => [
                'assets/js/formController.js',
                'assets/js/htmlVerifications.js',   <----
            ],
            'contact' => [
                'assets/js/formController.js',
                'assets/js/htmlVerifications.js',   <----
            ],
            'combinaisons' => [
                'assets/js/ajax.js',
                'assets/js/htmlVerifications.js',   <----
            ],
            'users' => [

            ],            
        ],

    A chaque création d'une page, modifier le fichier "htmlVerifications.js" en y ajoutant countHtmlTagsInFile("../../views/..... .phtml"); pour contrôler la nouvelle vue créée.

    A la fin du projet, les appels dans le fichier config.php seront retirés et les deux fichiers supprimés

    Evidement, cela n'empêche pas la vérification avec W3C Validator.

## VERIFICATION FORMULAIRES ##
    Tous les formulaires feront l'objet de 3 vérifications
        1 - En HTML (required, type email) quand c'est possible.
        2 - En JS pour l'expérience utilisateur et pour renforcer l'éco-conception.
        3 - Ultime vérification en PHP au moment de l'envoi dans le cas où l'utilisateur modifie le HTML et désactive l'exécution du JS par le navigateur.
        4 - La faille CSRF est mise en place dans tous les formulaires, peu importe le formulaire !

## INSCRIPTION D'UN UTILISATEUR ##
### PHASE 1 : ###

    Un utilisateur va s'inscrire via le formulaire d'inscription.

    * Il renseigne "nom", "prénom", "email", "matricule" et "secteur d'activité" (Police, Gendarmerie, ... )" et recopie le captcha généré.
    * L'email doit obligatoirement terminer par @interieur.gouv.fr ( vous avez une méthode pour vérifer cela : $this->specialValidateEmail($email);).
    * Le compte de l'utilisateur est à l'état : "1" dans la colonne "statuts_id" de la table "users" soit 'EN ATTENTE CONFIRMATION EMAIL"
    * L'utilisateur reçoit automatiquement un email avec ses identifiants ( email et MDP aléatoire généré par l'application : $this->generateRandomPassword($length);). Comme l'envoi d'email ne fonctionne pas en local, on génère un fichier "email.html" représentant ce que recevra l'utilisateur ( voir à la racine du projet )

### PHASE 2 : ###

    Une fois l'inscription réalisée de la phase 1.

    * Il doit alors se connecter avec ses identifiants reçus par email ( email, matricule et password ). ( C'est ici que votre travaille commence ! lol )
    * L'application demande alors à l'utilisateur désormais connecté de modifier son mot de passe. 3 inputs ( ancien MDP reçu par email, nouveau MDP et confirmation MDP ). 
        Cette procédure est obligatoire sans quoi l'utilisateur ne pourra pas poursuivre et passer à l'étape suivante.
    * Une fois la modification du MDP réalisée, le compte de l'utilisateur passe à l'état : "2" dans la colonne "statuts_id" de la table "users" soit 'EN ATTENTE DE FINALISATION D'INSCRIPTION"

### PHASE 3 : ###

    Une fois l'inscription réalisée de la phase 2.
    * L'utilisateur va pouvoir accéder au formulaire pour ajouter les différentes informations complémentaires ( grade, qualité, département, poste, choix, ... ) pour la table "usersDetails"
    * Une fois qu'il a ajouté les informations complémentaires, le compte de l'utilisateur passe à l'état : "3" dans la colonne "statuts_id" de la table "users" soit 'EN ATTENTE DE VALIDATION"
    * L'administrateur devra donc valider l'inscription complète pour terminer définitivement l'inscription et permettre à l'utilisateur d'être dans la liste des recherches.
    * Tant que l'administrateur n'a pas validé le compte, aucune alerte ne sera possible avec ce compte.

NOTA : A chaque fois que l'utilisateur modifiera ces informations complémentaires de la phase 3 ( table : "usersDetails" ), son compte repassera automatiquement à l'état "3" dans la colonne "statuts_id" de la table "users" soit 'EN ATTENTE DE VALIDATION". En revalidant le compte, l'abonnement initial n'est évidement pas reconduit.

### PHASE 4 : ###

    L'administrateur a validé le compte. Le compte de l'utilisateur passe à l'état : "4" dans la colonne "statuts_id" de la table "users" soit 'COMPTE ACTIF"
    * Des combinaisons peuvent être détectée avec ce nouveau compte et validées par l'administrateur.
    * En validant le compte de l'utilisateur, son abonnement offert de 3 mois est immédiatement activé si la date d'abonnement initiale dans la bdd est = NULL

NOTA : Seuls les comptes à l'état 4 et ayant une date de souscription supérieure à la date de la découverte peuvent recevoir des alertes .

### ETATS DES COMPTES : ###

    * COMPTE ACTIF                          - L'utilisateur peut recevoir des alertes si son abonnement est en cours.
    * COMPTE DANGEREUX                      - Dans tous les cas, ce compte ne changera plus d'état. Il est définitivement bloqué.
    * COMPTE SUSPICIEUX                     - Son compte pourra être débloqué par l'administrateur s'il prouve la légitimité de ses informations. 
    * EN ATTENTE SUITE A ALERTE             - L'utilisateur a reçu une alerte et l'administrateur attend son acceptation. L'utilisateur a 15 jours pour donner sa réponse.
    * SUSPENDU APRES REFUS ALERTE           - L'utilisateur a refusé la proposition, il est suspendu 6 mois même si son abonnement est valide.
    * SUSPENDU APRES NON REPONSE ALERTE     - L'utilisateur n'a pas répondu à une alerte. Il est suspendu 8 mois.
    * COMPTE INACTIF                        - L'utilisateur a lui même choisi de rendre son compte inactif.
    * COMPTE BANNI                          - Le compte est banni pour diverses raisons. L'utilisateur doit contacter l'administrateur s'il veut réactivé son compte.
    * PAS D'ABONNEMENT EN COURS             - Le compte peut être actif mais sans abonnement. Dans ce cas, il ne recevra pas d'alerte.

### PAGE D'ACCUEIL ###

    La page d'accueil sera fixe ( html pur ), elle ne sera jamais actualisée.
    Son contenu sera fourni ultérieurement par le client. En attendant, pour la réalisation du css, des articles "Lorem ipsum" ont été intégrés dans cette vue.

### PAGE ACTUALITES ###

    Une page d'actualités sera créée et accessible à tous.
    Elle mettra en avant les combinaisons détectées par le programme et les nouveautés.
    Une table dans la bdd sera créé pour cette fonctionnalité.

## SECURITE ##

1 - Adresse email au format : @interieur.gouv.fr
2 - Mot de passe choisi aléatoirement en envoyé à l'adresse email.
3 - Les noms et prénoms sont chiffrées.
4 - S'agissant de données très sensibles, aucune erreur concernant la sécurité ne peut être tolérée. Des tests poussés seront réalisés sur les formulaires.
5 - Au besoin, les requêtes SQL de recherche pourront être réalisée en asychrone ( AJAX )
6 - La lenteur des requêtes nous obligera à les réaliser "à l'unité" et non les 3 à la suite

### ROUTAGE ###

    Vous pouvez, si vous le souhaitez et savez faire, réaliser une réécriture d'url pour les routes.

### LES VIEWS ###

    Vous pouvez, si vous le souhaitez, classer les views par genre ou type dans des sous-dossiers

### LES MODELS ###

    Vous pouvez, si vous le souhaitez, classer les models dans des sous-dossiers ( un dossier pour models contenant les getters/Setters et un dossier pour les managers )

### DISPOSITIONS ### 

    Vous disposez d'une journée entière ( voire 2 si besoin ), pour lire le code et vous l'approprier. Le comprendre et le déchiffrer.
    Notez toutes les questions pour lesquelles vous avez besoin d'éclaicissement ou de précisions.

### SAUVEGARDES DU PROJET ###

    Les sauvegardes du projet seront réalisées par mes soins tous les soirs.