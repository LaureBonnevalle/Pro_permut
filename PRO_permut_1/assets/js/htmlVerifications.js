import { 
    getAllElementIds,
    getAllClassNames,
    checkMultipleH1,
    checkHtmlSemantics,
    checkSemanticElements,
    checkFormTags,
    checkImgAltAttributes,
    checkSemanticHTML,
    checkInputsHaveLabels,
    checkDeprecatedElements,
    checkTableStructure,
    checkAriaLabels,
    countHtmlTagsInFile,
} from './htmlFunctions.js';


document.addEventListener('DOMContentLoaded', function() {

    checkHtmlSemantics();
    checkMultipleH1();
    checkImgAltAttributes();
    getAllElementIds();
    getAllClassNames();
    checkSemanticElements();
    checkFormTags();
    checkSemanticHTML();
    checkInputsHaveLabels('#form');
    checkDeprecatedElements();
    checkTableStructure();
    checkAriaLabels();
    
    countHtmlTagsInFile("../../views/_captcha.phtml");
    countHtmlTagsInFile("../../views/_footer.phtml");
    countHtmlTagsInFile("../../views/_header.phtml");
    countHtmlTagsInFile("../../views/_messages.phtml");
    countHtmlTagsInFile("../../views/_sessionMessage.phtml");
    countHtmlTagsInFile("../../views/_ulNav.phtml");
    countHtmlTagsInFile("../../views/combinations.phtml");
    countHtmlTagsInFile("../../views/connect.phtml");
    countHtmlTagsInFile("../../views/contact.phtml");
    countHtmlTagsInFile("../../views/home.phtml");
    countHtmlTagsInFile("../../views/layout.phtml");
    countHtmlTagsInFile("../../views/register.phtml");
    countHtmlTagsInFile("../../views/users.phtml");

});