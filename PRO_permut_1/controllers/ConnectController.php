<?php

namespace Controllers;

use \Router;

class ConnectController extends Router {

    /**
     * Method to display the login form or manage form submission for user login.
     *
     * @param   void
     *
     * @return  void
     */
    public function login() {

        // Check if the request method is not POST
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            
            $sectors = (new \Models\SectorsManager())->getAll(); // Retrieve all sectors

            // Render the registration form with a new CSRF token and initial data
            $this->render('connect', 'layout', [
                'page'      => 'Connexion',
                'token'     => $this->generateToken(),
                'errors'    => [],
                'valids'    => [],
                'email'     => null,
                'password'  => null,
                'matricule' => null,
            ]);

            return; // Exit the method as the form has been rendered
        }
        
        // Array to store validation errors
        $errors = [];
        $valids = [];

        if ($this->checkPostKeys(['email', 'password', 'matricule', 'token'])) {

            $data = [
                'email'     => strtolower(trim($_POST['email'])),       // Removing unnecessary spaces and lowering the email
                'password'  => $_POST['password'],                   
                'matricule' => trim($_POST['matricule']),               // Removing unnecessary spaces the lastname
            ];

            // Instance of ErrorMessages model to get error messages
            //$model = new \Models\ErrorMessages();
            //$errorMessages = $model->getMessages();
            
            $errorMessages = (new \Models\ErrorMessages())->getMessages();

            // Verify the CSRF token
            if(!$this->verifTokenSession()) {
                $errors[] = $errorMessages[0];                      // An error occurred while sending the form !
                unset($_SESSION['tokenVerify']);                    // Clear the token verification session data
            }

            // Validate 'email' field
            if (!$this->specialValidateEmail($data['email']))
                $errors[] = $errorMessages[2];                      // Please provide a valid email !

            // Validate 'matricule' field
            if (!$this->verifInputText($data['matricule'], [6, 7], 'int'))
                $errors[] = $errorMessages[15];                     // Please enter your registration number !

            // Validate 'password' field
            if (!$this->validatePassword($data['password']))
                $errors[] = $errorMessages[1];                      // The password must contain at least 8 characters, an uppercase letter, a lowercase letter, a number and a special character.

            // If no errors in input validation
            if (empty($errors)) {

                
                // Retrieve user data from database based on email and matricule
                $search = (new \Models\UsersManager())->getByEmailAndMatricule($data['email'], $data['matricule']);
                
                //var_dump($search);
                //die;
                

                // Check if user exists and password is correct
                if ($search && $this->comparePassword($_POST['password'], $search['password'])) {
                    // Check if user account is validated
                    if ($search['statuts_id'] === 11) {
                        $errors[] = $errorMessages[3];   // Sorry, your account has been banned!
                    }
                        
                    else {
                        
                        if ($search['statuts_id'] === 1) {
                        
                        //var_dump($search);
                        //die;
                        $this->redirectTo(INTEGRAL_CONFIG['routes']['changePassword']);
                        
                        }
                        else {
                            try {
                            // If all checks pass, create sessions for the user and redirect to home page
                            $this->createSessions($search);     
                            } catch (\Exception $e) {
                            // Handle any errors that occur during user session creation
                            $errors[] = $errorMessages[0];          // An error occurred while sending the form !
                            }
                        }
                    } 
                }
                else {
                    $errors[] = $errorMessages[4];                  // Identification error!
                }
            }
        }
        
        // Render the login form with errors (if any)
        $this->render('connect', 'layout', [
            'page'      => 'Connexion',
            'token'     => $this->generateToken(),
            'errors'    => $errors,
            'email'     => $data['email']      ?? null,
            'matricule' => $data['matricule']  ?? null,
            'password'  => $data['password']   ?? null,
             ]
        );
    }
    
    /* use to modify password for a user in case of register when asked to change the password received by mail and in case of a simple change of password*/    
        public function modifyPassword() {
            //var_dump("ok");
            //die;
            
             // Array to store validation errors
                 $errors = [];
                 $valids = [];
        
                // Check if the request method is not POST
                if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
                    
        
                    // Render the registration form with a new CSRF token and initial data
                    $this->render('passForm', 'layout', [
                        'page'      => 'modification mot de passe',
                        'token'     => $this->generateToken(),
                        'errors'    => [],
                        'valids'    => [],
                        'old_password'  => null,
                        'new_password' => null,
                        'confirm_new_password' => null,
                        'matricule' => null,
                    ]);
        
                    return; // Exit the method as the form has been rendered
                }
        
        $errorMessages = (new \Models\ErrorMessages())->getMessages();
        
        /* check the post key*/
        if (!$this->checkPostKeys(['matricule','old_password', 'new_password', 'confirm_new_password', 'token'])) {
            $errors[] = $errorMessages[0];   //an error : An error occurred while sending the form !
        }
        else {
            
            
            $data = [
                'matricule'     => $_POST['matricule'],
                'old_password'  => $_POST['old_password'],       // Removing unnecessary spaces and lowering the email
                'new_password'  => $_POST['new_password'],                   
                'confirm_new_password' => $_POST['confirm_new_password'],
                'token' => $_POST['token']
            ];

            // Instance of ErrorMessages model to get error messages
            //$model = new \Models\ErrorMessages();
            //$errorMessages = $model->getMessages();
            
            $search = (new \Models\UsersManager())->getByMatricule($data['matricule']);
            
            // Define the Session token using the one from the form
            $_SESSION['token'] = $data['token'];

            // Verify the CSRF token
            if(!$this->verifTokenSession()) {
                $errors[] = $errorMessages[0];                      // An error occurred while sending the form !
                unset($_SESSION['token']);                    // Clear the token verification session data
            }
            else {
                
                //compare new password and old_password : Check that the old and new passwords are not the same.
                if ($data['new_password'] === $data['old_password']){
                    $errors[] = $errorMessages[24];
                }
                
                else {
                
                //compare password bdd et old_password of passform
                if (!$search && $this->comparePassword($data['old_password'], $search['password'])) {
                    $errors[] = $errorMessages[4];   //an error : Erreur d'identification !
                }
                else {
                
                
                    //compare new_pasword et confirm_new_password
                    if ($data['new_password'] !== $data['confirm_new_password']) {
                        $errors[] = $errorMessages[23];   //an error : Les mots de passe ne correspondent pas !
                    // Validate 'new_password' field
                    }
                    else {
                        
                        // The password must contain at least 8 characters, an uppercase letter, a lowercase letter, a number and a special character.
                        if (!$this->validatePassword($data['new_password'])) {
                            $errors[] = $errorMessages[1];     //an error : Le mot de passe doit contenir au moins 8 caractères, une majuscule, une minuscule, un chiffre et un caractère spécial.
                        }
                        // on rentre le nouveau mot de passe dans la bdd
                        else {
                            
                            $hashPassword = password_hash($data['new_password'], PASSWORD_DEFAULT);
                            
                           // Creating the User in order to change its data
                           
                           $user = (new \Models\Users());
                           
                           $user->setMatricule($data['matricule']);
                           $password = $data['new_password'];
                           
                          // Creating the User Manager
                           $um = (new \Models\UsersManager());
                           
                           $um->changePassword($user, $password);  //$newUser->setPassword(password_hash($passwordView, PASSWORD_DEFAULT));
                           // obn passe le statuts_id  à === 2  comment faire
                           $um->changeStatus($user, 2);
                           $this->createSessions($search);
                        }
                    }
                }
            }
          }
        }
          // Render the login form with errors (if any)
        $this->render('passForm', 'layout', [
            'page'      => 'modification mot de passe',
            'token'     => $this->generateToken(),
            'errors'    => $errors,
            'matricule' => $data['matricule']  ?? null,
            'password'  => $data['password']   ?? null,
             ]
        );   
            
    }   


    /**
     * Method to disconnect the user.
     *
     * @param   void
     *
     * @return  void
     */
    public function disconnection() {
        // Perform necessary disconnection tasks
        $this->disconnected();
    }

}

