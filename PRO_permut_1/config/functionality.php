<?php

class Functionality {

    public function e($string) {
        return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
    }

    // Méthode pour échapper les données dans un tableau associatif
    public function escapeData(array $data) {
        foreach ($data as $key => $value) {
            if (is_string($value)) {
                $data[$key] = $this->e($value);
            } elseif (is_array($value)) {
                $data[$key] = $this->escapeData($value); // Appel récursif si le champ est un tableau
            }
        }
        return $data;
    }

    /**
     * Method to check if all keys are present in $_POST.
     *
     * @param   array   - $keys The array containing keys to be checked.
     * @return  bool    - Returns true if all keys are present in $_POST, otherwise false.
     */
    public function checkPostKeys($keys):bool {
        // Iterate over each key in the $keys array.
        foreach ($keys as $key) {
            // Check if the current key is not present in $_POST.
            if (!isset($_POST[$key])) {
                // If a key is missing, return false.
                return false;
            }
        }
        // If all keys are present, return true.
        return true;
    }


    /**
     * Method to validate an email format using filter_var.
     *
     * @param   string $email   - The email address to validate.
     * @return  bool            - Returns true if the email format is valid, otherwise false.
     */
    public function validateEmail($email): bool {
        // Returns true if the email is valid, otherwise false.
        return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
    }


    /**
     * Method to validate an email format using filter_var and check if the email ends with "@interieur.gouv.fr".
     *
     * @param   string $email   - The email address to validate.
     * @return  bool            - Returns true if the email format is valid, otherwise false.
     */
    public function specialValidateEmail($email) {
        // Check if the email is valid
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return false;
        }

        // Check if the email ends with "@interieur.gouv.fr"
        $domaine = '@interieur.gouv.fr';
        if (substr($email, -strlen($domaine)) === $domaine) {
            return true;
        }

        return false;
    }


    /**
     * Public method to validate a password against a given regex pattern.
     *
     * @param   string  - $password The password to validate.
     * @return  bool    - Returns true if the password matches the regex pattern, otherwise false.
     */
    public function validatePassword($password) {
        // The preg_match() function searches for a match between the regex pattern and the password.
        // The regex pattern is '/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/'
        // This pattern requires:
        // - At least one uppercase letter (?=.*?[A-Z])
        // - At least one lowercase letter (?=.*?[a-z])
        // - At least one digit (?=.*?[0-9])
        // - At least one special character among #?!@$%^&*- (?=.*?[#?!@$%^&*-])
        // - A minimum length of 8 characters .{8,}
        // The function returns 1 if a match is found, otherwise 0.
        return preg_match('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/', $password);
    }


    /**
     * Generate a new CSRF token and store it in the session.
     *
     * @param  void
     * @return string The generated token.
     */
    public function generateToken(): string {
        $token = bin2hex(random_bytes(20));
        $_SESSION[INTEGRAL_CONFIG['tokenName']] = $token;
        return $token;
    }

    /**
     * Verify the CSRF token from the session against the token received via POST.
     *
     * This method checks if the CSRF token sent in the POST request matches the token stored in the session.
     * It returns false if the tokens do not match or if the token is not set, indicating a potential CSRF attack.
     * It returns true if the tokens match, meaning the request is valid.
     *
     * @param  void
     * @return bool True if the token is valid, false otherwise.
     */
    public function verifTokenSession(): bool {
        if (!isset($_POST['token']) || $_POST['token'] !== $_SESSION[INTEGRAL_CONFIG['tokenName']]) {
            return false;
        } 
        return true;
    }


    /**
     * Generates a random string of a specified length.
     *
     * @param   int     $longueur   - The length of the random string to generate. Default is 12.
     * @return  string              - The generated random string.
     */
    public function generateRandomChain($longueur = 12):string {
        return substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($longueur/strlen($x)) )),1,$longueur);
    }


    /**
     * Public method to compare if a plain text password matches a hashed password from the database.
     *
     * @param   string $password        - The plain text password to verify.
     * @param   string $hashedPassword  - The hashed password retrieved from the database.
     * @return  bool                    - Returns true if the plain text password matches the hashed password, otherwise false.
     */
    public function comparePassword($password, $hashedPassword):bool {
        // It returns true if the match is found, otherwise false.
        return password_verify($password, $hashedPassword);
    }


    /**
     * Generates a random password of a specified length.
     * The password must contain at least one uppercase letter, one lowercase letter, one number, and one special character.
     *
     * @param   int     $length     - The length of the random password to generate. Must be between 8 and 23 characters. Default value 12.
     * @return  string              - The generated random password.
     * @throws  Exception if the length is not between 8 and 23 characters.
     */
    public function generateRandomPassword($length = 12) {
        if ($length < 8 || $length > 23) {
            throw new \Exception("La longueur du mot de passe doit être entre 8 et 23 caractères.");
        }

        $uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $lowercase = 'abcdefghijklmnopqrstuvwxyz';
        $numbers = '0123456789';
        $specialChars = '!@#$%^&*()-_=+[{]}|;:,<.>/?';

        $password = '';
        $password .= $uppercase[rand(0, strlen($uppercase) - 1)];
        $password .= $lowercase[rand(0, strlen($lowercase) - 1)];
        $password .= $numbers[rand(0, strlen($numbers) - 1)];
        $password .= $specialChars[rand(0, strlen($specialChars) - 1)];

        $allChars = $uppercase . $lowercase . $numbers . $specialChars;

        for ($i = 0; $i < $length - 4; $password .= $allChars[rand(0, strlen($allChars) - 1)], $i++);

        return str_shuffle($password);
    }


    /**
     * Sanitizes input data by trimming whitespace and removing backslashes.
     *
     * @param  string   - $data The input data to be sanitized.
     * @return string   - The sanitized input data.
     */
    public function clearDatas($data) {
		$data = trim($data);            // Remove whitespace from the beginning and end of the input
		$data = stripslashes($data);    // Remove backslashes from the input
		return $data;
	}


    /**
     * Verify the input text based on the specified size and format.
     *
     * @param   string  $value  - The input value to be verified.
     * @param   array   $size   - An array containing the minimum and maximum allowed length for the input value [2, 60]. Default is false.
     * @param   string  $format - The expected format of the input value. Can be 'string' for alphabetic or 'int' for numeric. Default is 'string'.
     *
     * @return  bool    - Returns true if the input value passes all checks, otherwise false.
     */
    public function verifInputText($value, $size = false, $format = 'string') {
        $cleanedValue = $this->clearDatas($value);

        if (empty($cleanedValue))
            return false;

        if ($size && (strlen($cleanedValue) < $size[0] || strlen($cleanedValue) > $size[1]))
            return false;

        if ($format == 'string' && !ctype_alpha($cleanedValue))
            return false;

        if ($format == 'int' && !ctype_digit($cleanedValue))
            return false;

        return true;
    }


    /**
     * Formats a date string to a long French date format.
     *
     * @param   string $date    - The date string to format.
     * @return  string          - The formatted date string. Example: 1 juillet 2025
     */
    public function formatDate($date) {
        $dateTime = new \DateTime($date);
        $formatter = new \IntlDateFormatter(
            'fr_FR',
            \IntlDateFormatter::LONG,
            \IntlDateFormatter::NONE,
            'Europe/Paris',
            \IntlDateFormatter::GREGORIAN
        );
        return $formatter->format($dateTime); // Exemple : 1 juillet 2025
    }


    /**
     * Formats a date-time string to a specified format.
     *
     * @param   string $dateTime    - The date-time string to format.
     * @param   string $format      - The format to apply. Default is 'd/m/Y H:i:s'.
     * @return  string              - The formatted date-time string.
     */
    public function formatDateTime($dateTime, $format = 'd/m/Y H:i:s') {
        $date = new \DateTime($dateTime);
        return $date->format($format);
    }        

    
    /**
     * Encrypts the plaintext using AES-256-CBC.
     *
     * @param   string $plaintext   - The plaintext to encrypt.
     * @param   string $key         - The encryption key (default is INTEGRAL_CONFIG['infos']['secretKeyEncrypt']).
     * @return  string              - The encrypted text encoded in base64 with the IV prefixed.
     */
    public function encrypt($plaintext, $key = INTEGRAL_CONFIG['infos']['secretKeyEncrypt']) {
        $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length('aes-256-cbc'));     // Generate a random initialization vector (IV) for AES-256-CBC
        $ciphertext = openssl_encrypt($plaintext, 'aes-256-cbc', $key, 0, $iv);         // Encrypt the plaintext using AES-256-CBC

        return base64_encode($iv . $ciphertext);                                        // Return the base64-encoded encrypted text with the IV prefixed
    }


    /**
     * Decrypts the plaintext using AES-256-CBC.
     *
     * @param   string $plaintext   - The base64-encoded encrypted text to decrypt.
     * @param   string $key         - The decryption key (default is INTEGRAL_CONFIG['infos']['secretKeyEncrypt']).
     * @return  string              - The decrypted plaintext.
     */
    public function decrypt($plaintext, $key = INTEGRAL_CONFIG['infos']['secretKeyEncrypt']) {
        $ciphertext2 = base64_decode($plaintext);                              // Decode the base64-encoded ciphertext
        $iv_length = openssl_cipher_iv_length('aes-256-cbc');                   // Determine the IV length for AES-256-CBC
        $iv = substr($ciphertext2, 0, $iv_length);                              // Extract the IV from the ciphertext
        $ciphertext3 = substr($ciphertext2, $iv_length);                        // Extract the encrypted text without the IV

        return openssl_decrypt($ciphertext3, 'aes-256-cbc', $key, 0, $iv);      // Decrypt the ciphertext using AES-256-CBC
    }    


    /**
     * Determines the navigation information based on the user's connection and admin status.
     *
     * @return array - Contains the connection status, basic navigation elements, specific navigation elements based on connection, and admin navigation elements.
     */
    public function infosNav() {
        // Determine if the user is connected
        $isConnected = isset($_SESSION['connected']) && $_SESSION['connected'] == true;

        // Check if the user is an admin
        $isAdmin = isset($_SESSION[INTEGRAL_CONFIG['sessionName']][INTEGRAL_CONFIG['searchIsAdmin']]) && $_SESSION[INTEGRAL_CONFIG['sessionName']][INTEGRAL_CONFIG['searchIsAdmin']] == INTEGRAL_CONFIG['routes']['authorizations']['valueIsAdmin'];

        // Basic navigation elements (common to all users)
        $navAll = INTEGRAL_CONFIG['nav']['all'];

        // Navigation elements specific to the connection state
        $navSpecific = $isConnected ? INTEGRAL_CONFIG['nav']['connected'] : INTEGRAL_CONFIG['nav']['notConnected'];

        // Navigation elements for administrators
        $navAdmin = $isAdmin ? INTEGRAL_CONFIG['nav']['connectedAndAdmin'] : [];

        // Return an array with the connection status, basic navigation elements, specific navigation elements, and admin navigation elements
        return [$isConnected, $navAll, $navSpecific, $navAdmin];
    }

    
    /**
     * Verifies if the provided captcha matches the one stored in the session.
     *
     * @param   string $captcha   - The captcha provided by the user
     * @return  bool              - Returns true if the captcha is correct, false otherwise
     */
    public function verifCaptcha($captcha) {
        // Ensure the session is started
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
                
        // Check if the captcha session key is set
        if (!isset($_SESSION['codeCaptcha'])) {
            // Handle error: session key for captcha not found
            return false;
        }

        // Convert the captcha stored in the session to a string and compare it with the provided captcha
        if ($captcha !== (string)$_SESSION['codeCaptcha']) {
            // Captcha does not match
            return false;
        }
        
        // Captcha matches
        return true;
    }
}