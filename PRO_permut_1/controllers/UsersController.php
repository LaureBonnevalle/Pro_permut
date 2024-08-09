<?php

namespace Controllers;

use \Router;

class UsersController extends router {

    /**
     * Processes user registration.
     * 
     * This method handles both the display and processing of the user registration form.
     * - If the request method is not POST, it displays the registration form.
     * - If the form is submitted with valid POST data, it inserts the user into the database and displays a success message.
     * - If the form is submitted with invalid data, it redisplays the form with error messages and retains the entered data.
     *
     * @param  void
     * @return void
     */
    public function register() {

        // Check if the request method is not POST
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {

            $sectors = (new \Models\SectorsManager())->getAll(); // Retrieve all sectors

            // Render the registration form with a new CSRF token and initial data
            $this->render('register', 'layout', [
                'page'          => "Enregistrement",
                'captchaChosen' => "captchaLevel1",
                'token'         => $this->generateToken(),
                'errors'        => [],
                'valids'        => [],
                'sectors'       => $sectors,
                'firstname'     => null,
                'lastname'      => null,
                'email'         => null,
                'matricule'     => null,
                'sector'        => null,
            ]);

            return; // Exit the method as the form has been rendered
        }

        // Initialize error and success message arrays
        $errors = [];
        $valids = [];
        
        // Generate a random password for the user
        $passwordGenerated   = $this->generateRandomPassword(12);

        // Retrieve error and valid messages
        $errorMessages = (new \Models\ErrorMessages())->getMessages();
        $validMessages = (new \Models\ValidMessages())->getMessages();

        // Check if required POST keys are set
        if ($this->checkPostKeys(['lastname', 'firstname', 'email', 'matricule', 'sector', 'token', 'captcha'])) {

            $data = [
                'lastname'  => strtoupper(trim($_POST['lastname'])),    // Removing unnecessary spaces and capitalizing the lastname
                'firstname' => ucfirst(trim($_POST['firstname'])),      // Removing unnecessary spaces and lowercaseing the first letter of the firstname, the rest in lowercase.           
                'email'     => strtolower(trim($_POST['email'])),       // Removing unnecessary spaces and lowering the email
                'matricule' => trim($_POST['matricule']),               // Removing unnecessary spaces the matricule
                'sector'    => $_POST['sector'],
                'captcha'   => $_POST['captcha']
            ];

            // Verify the CSRF token
            if(!$this->verifTokenSession()) {
                $errors[] = $errorMessages[0];                      // An error occurred while sending the form !
                unset($_SESSION['tokenVerify']);                    // Clear the token verification session data
            }

            // Validate 'lastname' field
            if (!$this->verifInputText($data['lastname'], [2, 60], 'string')) 
                $errors[] = $errorMessages[5];                      // Please fill out the 'Lastname' field !

            // Validate 'firstname' field
            if (!$this->verifInputText($data['firstname'], [2, 60], 'string')) 
                $errors[] = $errorMessages[6];                      // Please fill in the 'Firstname' field !

            // Validate 'matricule' field
            if (!$this->verifInputText($data['matricule'], [6, 7], 'int'))
                $errors[] = $errorMessages[15];                     // Please enter your registration number !

            // Validate 'email' field
            if (!$this->specialValidateEmail($data['email']))
                $errors[] = $errorMessages[2];                      // Please provide a valid email !

            if(!$this->verifCaptcha($data['captcha']))
                $errors[] = $errorMessages[17];                     // You have not correctly confirmed the captcha code !

            // Retrieve all sectors and Extract sector iDs from the sectors array
            $sectors = (new \Models\SectorsManager())->getAll();
            $sectorIds = array_map(function($sector) {
                return (string)$sector->getId();                    // Assuming there's a getId() method to access the id
            }, $sectors);

            // Check if the selected sector ID is valid
            if (!(isset($data['sector']) && in_array($data['sector'], $sectorIds, true))) {
                $errors[] = $errorMessages[16];                     // Please select an area !
            }

            // If there are no errors, proceed to insert the user into the database
            if (empty($errors)) {
                $usersManager = new \Models\UsersManager();
                //$existingUser = $usersManager->getOneByEmail($data['email']);

                // Process to verif if email or matricule and sector_id exists in the database
                if ($usersManager->getByEmailOrMatricule($data['email'], $data['matricule'], $data['sector'])) {
                    // Email ou matricule for sector already exists in the database
                    $errors[] = $errorMessages[7];                  // An account already exists with this email address or with the same number for this sector of activity!
                } else {
                    $passwordView = $passwordGenerated; // Generate random password
                    var_dump($passwordView);

                    // Encrypt user details and prepare new user object
                    $newUser = new \Models\Users();
                    $newUser->setLastname($this->encrypt($data['lastname']));
                    $newUser->setFirstname($this->encrypt($data['firstname']));
                    $newUser->setEmail($data['email']);
                    $newUser->setMatricule($data['matricule']);
                    $newUser->setPassword(password_hash($passwordView, PASSWORD_DEFAULT));
                    $newUser->setSectors_id($data['sector']);

                    try {
                        // Insert the new user into the database
                        $usersManager->insert($newUser);

                        // Prepare success messages
                        $valids = [$validMessages[0], $validMessages[1], $validMessages[4]];
                            // Your account creation request has been successfully registered.
                            // You can now log in with your credentials.
                            // Un email vient de vous être envoyé avec vos identifiants temporaires 

                        // Send confirmation email to the user
                        $sendEmail = new \Models\SendEmail();
                        $sendEmail->sendEmailConfirme($data['lastname'], $data['firstname'], $data['email'], $passwordView);

                        // Retrieve all sectors again
                        $sectors = (new \Models\SectorsManager())->getAll();

                        // Render the success message and reset the form
                        $this->render('register', 'layout', [
                            'page'          => "Enregistrement",
                            'captchaChosen' => "captchaLevel1",
                            'sectors'       => $sectors,
                            'token'         => $this->generateToken(),
                            'valids'        => $valids,
                            'firstname'     => '',
                            'lastname'      => '',
                            'email'         => '',
                            'matricule'     => '',
                            'sector'        => '',
                        ]);
                        return; // Exit the method after rendering success message
                    } catch (\Exception $e) {
                        // Handle any errors that occur during user insertion
                        $errors[] = $errorMessages[0];              // An error occurred while sending the form !
                    }
                }
            }
        }

        // Render the form with error messages and retain entered data
        $sectors = (new \Models\SectorsManager())->getAll();

        $this->render('register', 'layout', [
            'page'          => "Enregistrement",
            'token'         => $this->generateToken(),
            'captchaChosen' => "captchaLevel1",
            'errors'        => $errors,
            'sectors'       => $sectors,
            'valids'        => $valids,
            'firstname'     => $data['firstname']  ?? null,
            'lastname'      => $data['lastname']   ?? null,
            'email'         => $data['email']      ?? null,
            'matricule'     => $data['matricule']  ?? null,
            'sector'        => $data['sector']     ?? null,
        ]);
    }


    /**
     * Fetches all users from the database and renders the users page.
     *
     * @param  void
     * @return void
     */
    public function allUsers() {

        $usersManager = new \Models\UsersManager();
        $users = $usersManager->getAll();        

        $this->render('users', 'layout', [
            'page'      => "Utilisateurs",
            'users'     => $users,              // Array of user objects fetched from the database
        ]);
    }
}