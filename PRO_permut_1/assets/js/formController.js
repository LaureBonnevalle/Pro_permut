import { 
    validateEmail, 
    validateText, 
    validateMatricule, 
    validatePassword, 
    validateCaptcha, 
} from './common.js';


document.addEventListener('DOMContentLoaded', function() {
    const forms = document.querySelectorAll('form');

    forms.forEach(form => {
        form.addEventListener('submit', function(event) {
            // Prevent the form from submitting by default
            event.preventDefault();

            // Reset error messages and styles
            const errorMessages = form.querySelectorAll('.error-message');
            errorMessages.forEach(function(msg) {
                msg.textContent = '';
            });

            let formValid = true;

            // Check each field if present
            const fields = [
                {   
                    id              : "lastname", 
                    validate        : validateText, 
                    args            : [2, 60], 
                    errorMessage    : "Le nom est requis.", 
                    invalidMessage  : "Le nom doit contenir uniquement des lettres, entre 2 et 60 caractères."
                },
                { 
                    id              : "firstname", 
                    validate        : validateText, 
                    args            : [2, 60], 
                    errorMessage    : "Le prénom est requis.", 
                    invalidMessage  : "Le prénom doit contenir uniquement des lettres, entre 2 et 60 caractères."
                },
                { 
                    id              : "email", 
                    validate        : validateEmail, 
                    args            : [], 
                    errorMessage    : "L'email est requis.", 
                    invalidMessage  : "L'email n'est pas valide."
                },
                { 
                    id              : "matricule", 
                    validate        : validateMatricule, 
                    args            : [], 
                    errorMessage    : "Le matricule est requis.", 
                    invalidMessage  : "Le matricule doit contenir uniquement des chiffres, entre 6 et 7 caractères."
                },
                { 
                    id              : "sector", 
                    validate        : value => value !== "", 
                    args            : [], 
                    errorMessage    : "Le secteur est requis.", 
                    invalidMessage  : ""
                },
                { 
                    id              : "token", 
                    validate        : value => value !== "", 
                    args            : [], 
                    errorMessage    : "Une erreur est survenue lors de l'envoi, actualisez le formulaire et soumettez votre demande une seconde fois !", 
                    invalidMessage  : ""
                },
                { 
                    id              : "password", 
                    validate        : validatePassword, 
                    args            : [], 
                    errorMessage    : "Le mot de passe est requis.", 
                    invalidMessage  : "Le mot de passe doit contenir au moins 8 caractères, dont une majuscule, une minuscule, un chiffre et un caractère spécial."
                },
                { 
                    id              : "story", 
                    validate        : validateText, 
                    args            : [20, 250], 
                    errorMessage    : "Ce champ est requis.", 
                    invalidMessage  : "Ce champ doit contenir entre 20 et 250 caractères."
                },
                /*{ 
                    id              : "captcha", 
                    validate        : validateCaptcha, 
                    args            : [5, 5], 
                    errorMessage    : "Le captcha est requis.", 
                    invalidMessage  : "Le captcha doit contenir 5 caractères."
                },*/
            ];

            fields.forEach(field => {
                const inputElement = form.querySelector(`#${field.id}`);
                const errorElement = form.querySelector(`#error-${field.id}`);

                if (inputElement && errorElement) {
                    const value = inputElement.value.trim();
                    if (value === "") {
                        formValid = false;
                        errorElement.textContent = field.errorMessage;
                    } else if (!field.validate(value, ...field.args)) {
                        formValid = false;
                        errorElement.textContent = field.invalidMessage;
                    }

                    inputElement.addEventListener("input", function() {
                        errorElement.textContent = "";
                        inputElement.classList.remove("error");
                    });
                }
            });

            // If the form is valid, submit it
            if (formValid) {
                form.submit();
            }
        });
    });
});