/**
 * Checks the semantic correctness of the HTML structure of the page.
 * 
 * This function verifies the presence of the DOCTYPE declaration, the `lang` attribute in the `<html>` tag,
 * the presence and format of `<meta>` tags, and the presence of the `<title>` tag.
 * 
 * @returns {object} An object containing the results of the checks.
 */
export function checkHtmlSemantics() {
    const results = {
        doctype: false,
        lang: false,
        metaTags: [],
        title: false,
    };

    // Check the DOCTYPE
    if (document.doctype) {
        results.doctype = true;
    }

    // Check the `lang` attribute in the <html> tag
    const htmlTag = document.documentElement;
    if (htmlTag && htmlTag.getAttribute('lang') === 'fr') {
        results.lang = true;
    }

    // Check <meta> tags
    const metaTags = document.getElementsByTagName('meta');
    results.metaTags = Array.from(metaTags).map(meta => {
        const name = meta.getAttribute('name');
        const httpEquiv = meta.getAttribute('http-equiv');
        const content = meta.getAttribute('content');

        if (name || httpEquiv) {
            return { name, httpEquiv, content };
        }
    }).filter(meta => meta !== undefined);

    // Check the presence of the <title> tag
    const titleTag = document.getElementsByTagName('title')[0];
    if (titleTag) {
        results.title = true;
    }

    // Display results
    console.log("[Good] - DOCTYPE present:", results.doctype);
    console.log("[Good] - HTML lang Attribute:", results.lang ? "fr" : "not 'fr'");
    console.log("[Good] -  Meta tags:", results.metaTags.length > 0 ? results.metaTags : "No meta tags found");
    console.log("[Good] - Title present:", results.title);
}

/**
 * Check if there are multiple <h1> elements on the page.
 * 
 * @param {void}
 * @returns {void} 
 */
export function checkMultipleH1() {
    // Select all <h1> elements
    const h1Elements = document.querySelectorAll('h1');

    // Count the number of <h1> elements
    const h1Count = h1Elements.length;

    // Check if there are multiple <h1> elements
    if (h1Count > 1) {
        console.error(`Multiple <h1> elements found: ${h1Count}`);
    } else if (h1Count === 1) {
        console.log('<h1> element is correctly used. Present and no duplicate');
    } else {
        console.error('[Good] - No <h1> elements found.');
    }
}

/**
 * Checks if all <img> elements have a non-empty alt attribute.
 * Logs specific issues in the console if there are any, otherwise does not log anything.
 * 
 * @returns {void}
 */
export function checkImgAltAttributes() {
    const images = document.getElementsByTagName('img');
    const missingAlt = [];
    const emptyAlt = [];

    Array.from(images).forEach(img => {
        const altText = img.getAttribute('alt');
        if (altText === null) {
            // No alt attribute present
            missingAlt.push({
                src: img.src
            });
        } else if (altText.trim() === '') {
            // Alt attribute present but empty
            emptyAlt.push({
                src: img.src,
                alt: altText
            });
        }
    });

    if (missingAlt.length > 0) {
        console.error("Some <img> elements are missing the 'alt' attribute:", missingAlt);
    }
    
    if (emptyAlt.length > 0) {
        console.error("Some <img> elements have empty 'alt' attributes:", emptyAlt);
    }
    
    if (missingAlt.length === 0 && emptyAlt.length === 0) {
        console.log("[Good] - All <img> have a valid 'alt' attribute.")
    }
}

/**
 * Get all IDs of elements in the document, check for duplicates, and report them.
 * 
 * @param {void}
 * @returns {Object} An object containing:
 *   - ids: An array of all IDs found in the document.
 *   - duplicates: An array of duplicate IDs with their counts.
 */
export function getAllElementIds() {
    const idCounts = {}; // Object to count occurrences of each ID
    const allIds = []; // Array to store all IDs
    const duplicates = [];
    
    // Select all elements with an ID
    const elements = document.querySelectorAll('[id]');

    elements.forEach(element => {
        if (element.id) {
            // Add ID to the allIds array
            allIds.push(element.id);

            // Increment count for existing ID or initialize count for new ID
            if (idCounts[element.id]) {
                idCounts[element.id] += 1;
            } else {
                idCounts[element.id] = 1;
            }
        }
    });

    // Check for duplicates and populate the duplicates array
    for (const [id, count] of Object.entries(idCounts)) {
        if (count > 1) {
            duplicates.push({ id, count });
        }
    }

    // Report duplicates if any
    if (duplicates.length > 0) {
        console.error('Duplicate IDs found:');
        console.table(duplicates); // Display duplicates in a table format
    } else {
        console.log('[Good] - No duplicate IDs found.');
    }

    // Return all IDs and duplicates
    /*console.log({
        ids: allIds, // Return all IDs
        duplicates: duplicates // Return duplicates
    });*/

    // Optionally display all IDs in a table format
    console.table(allIds.map(id => ({ "IDs utilisés dans cette page": id }))); // Display all IDs in a table format
}


/**
 * Get all unique class names used in the document.
 * 
 * @param {void}
 * @returns {string[]} An array of unique class names found in the document.
 */
export function getAllClassNames() {
    const classNames = new Set();
    const elements = document.querySelectorAll('*'); // Select all elements

    elements.forEach(element => {
        if (element.className) {
            element.classList.forEach(className => {
                classNames.add(className); // Add each class to the Set (unique class names only)
            });
        }
    });

    const uniqueClassNames = Array.from(classNames); // Convert Set to Array

    // Display unique class names in a table format
    console.table(uniqueClassNames.map(className => ({ 'ClassName utilisées dans cette page': className })));

}




/*

    A VERIFIER

*/




/**
 * Checks for the presence of semantic HTML5 elements in the document.
 * 
 * @returns {object} An object with information about the presence of semantic elements.
 */
export function checkSemanticElements() {
    const elements = ['header', 'footer', 'article', 'section', 'nav', 'aside'];
    const result = {};

    elements.forEach(el => {
        result[el] = document.getElementsByTagName(el).length > 0;
    });

    console.table(result);
}

/**
 * Checks for the correct usage of form-related tags.
 * 
 * @returns {object} An object with information about form-related elements.
 */
export function checkFormTags() {
    const forms = document.getElementsByTagName('form');
    const inputs = document.getElementsByTagName('input');
    const labels = document.getElementsByTagName('label');

    console.table({
        formCount: forms.length,
        inputCount: inputs.length,
        labelCount: labels.length
    });
}


/**
 * Check if the HTML semantic structure is respected on the page.
 * 
 * @returns {Object} An object containing:
 *   - missingElements: An array of missing semantic elements.
 *   - issues: An array of issues found with the semantic structure.
 */
export function checkSemanticHTML() {
    const missingElements = [];
    const issues = [];

    // Check for the <title> element
    if (!document.querySelector('title')) {
        missingElements.push('<title> element');
    }

    // Check for key structural elements
    const requiredElements = ['header', 'nav', 'main', 'footer'];
    requiredElements.forEach(element => {
        if (!document.querySelector(element)) {
            missingElements.push(`<${element}> element`);
        }
    });

    // Check for <h1> presence
    if (!document.querySelector('h1')) {
        missingElements.push('<h1> element');
    }

    // Check for proper heading hierarchy (assuming <h1> is present)
    const headings = document.querySelectorAll('h1, h2, h3, h4, h5, h6');
    if (headings.length > 0) {
        let previousLevel = 1;
        headings.forEach(heading => {
            const level = parseInt(heading.tagName.substring(1), 10);
            if (level > previousLevel + 1) {
                issues.push(`Improper heading level sequence: <h${level}> follows <h${previousLevel}>`);
            }
            previousLevel = level;
        });
    }

    // Check for other semantic elements
    const otherElements = ['article', 'section', 'aside'];
    otherElements.forEach(element => {
        if (document.querySelector(element)) {
            issues.push(`Unexpected use of <${element}> element.`);
        }
    });

    // Log the results
    if (missingElements.length > 0) {
        console.error('Missing semantic elements:', missingElements);
    } else {
        console.log('All required semantic elements are present.');
    }

    if (issues.length > 0) {
        console.log('Semantic structure issues found:', issues);
    } else {
        console.log('[Good] - No issues with semantic structure.');
    }

    console.table({
        missingElements: missingElements,
        issues: issues
    });
}


/**
 * Check that all <input> elements in a form (excluding type="submit" and type="hidden") have an associated <label>.
 * 
 * @param {string} formSelector - The CSS selector for the form to check.
 * @returns {void}
 */
export function checkInputsHaveLabels(formSelector) {
    if(document.querySelector(formSelector) != null) {
        const form = document.querySelector(formSelector);
        if (!form) {
            console.error('Form not found with the selector:', formSelector);
            return;
        }

        const inputs = form.querySelectorAll('input:not([type="submit"]):not([type="hidden"])');
        const issues = [];

        inputs.forEach(input => {
            const id = input.id;
            if (!id) {
                issues.push({
                    input: input,
                    message: 'Input is missing an id attribute.'
                });
            } else {
                const label = form.querySelector(`label[for="${id}"]`);
                if (!label) {
                    issues.push({
                        input: input,
                        message: `Input with id "${id}" does not have an associated label.`
                    });
                }
            }
        });

        // Check for inputs missing id
        const missingIdInputs = Array.from(inputs).filter(input => !input.id);
        if (missingIdInputs.length > 0) {
            missingIdInputs.forEach(input => {
                issues.push({
                    input: input,
                    message: 'Input is missing an id attribute.'
                });
            });
        }

        // Log issues
        if (issues.length > 0) {
            console.error('Some <input> elements are missing labels or have issues:', issues);
            issues.forEach(issue => {
                console.error(`Issue with input:`, issue.message);
                console.error(`Element:`, issue.input);
            });
        } else {
            console.log('[Good] - All relevant <input> elements have associated <label> elements.');
        }
    } else {
        console.log('[Good] - No form to check on this page !.');
    }
}

/**
 * Check for deprecated HTML elements like <font>, <center>, and <b>.
 * 
 * @returns {void}
 */
export function checkDeprecatedElements() {
    const deprecatedTags = ['font', 'center', 'b'];
    const issues = [];

    deprecatedTags.forEach(tag => {
        const elements = document.getElementsByTagName(tag);
        if (elements.length > 0) {
            issues.push({
                tag: tag,
                count: elements.length
            });
        }
    });

    // Log issues
    if (issues.length > 0) {
        console.error('Deprecated HTML elements found:', issues);
        issues.forEach(issue => {
            console.error(`Element <${issue.tag}> found ${issue.count} times.`);
        });
    } else {
        console.log('[Good] - No deprecated HTML elements found.');
    }
}

/**
 * Check for correct table structure in the document.
 * 
 * @returns {void}
 */
export function checkTableStructure() {
    const tables = document.querySelectorAll('table');
    const issues = [];

    tables.forEach(table => {
        const thead = table.querySelector('thead');
        const tbody = table.querySelector('tbody');
        const tfoot = table.querySelector('tfoot');
        const rows = table.querySelectorAll('tr');
        const headers = table.querySelectorAll('th');
        const cells = table.querySelectorAll('td');

        // Check if <thead>, <tbody>, and <tfoot> are used correctly
        if (thead && tbody && tfoot) {
            // Check if there are rows in each section
            if (thead.querySelectorAll('tr').length === 0) {
                issues.push('The <thead> section is empty or missing rows.');
            }
            if (tbody.querySelectorAll('tr').length === 0) {
                issues.push('The <tbody> section is empty or missing rows.');
            }
            if (tfoot.querySelectorAll('tr').length === 0) {
                issues.push('The <tfoot> section is empty or missing rows.');
            }
        } else {
            issues.push('One or more required table sections (<thead>, <tbody>, <tfoot>) are missing.');
        }
    });

    // Log issues
    if (issues.length > 0) {
        console.error('Table structure issues found:', issues);
    } else {
        console.log('[Good] - All tables are correctly structured. ( or no table in this page ! )');
    }
}

/**
 * Check all interactive elements on the page to ensure they have an aria-label or relevant aria-* attributes.
 * 
 * @returns {void}
 */
export function checkAriaLabels() {
    const interactiveElements = document.querySelectorAll('button, a, input:not([type="hidden"]):not([type="submit"]), select, textarea');
    const issues = [];

    interactiveElements.forEach(element => {
        const hasAriaLabel = element.hasAttribute('aria-label');
        const hasAriaDescribedBy = element.hasAttribute('aria-describedby');
        const hasAriaLabelledBy = element.hasAttribute('aria-labelledby');
        const hasRole = element.hasAttribute('role');

        if (!hasAriaLabel && !hasAriaDescribedBy && !hasAriaLabelledBy && !hasRole) {
            issues.push(element);
        }
    });

    if (issues.length > 0) {
        console.error('Some interactive elements are missing aria-* attributes:', issues);
        issues.forEach((element, index) => {
            console.error(`Element ${index + 1}:`, element);
        });
    } else {
        console.log('[Good] - All interactive elements have the necessary aria-* attributes.');
    }
}


/**
 * Fetch the content of a .phtml file and count the occurrences of specified HTML tags.
 * 
 * @param {string} url - The URL of the .phtml file.
 * @returns {Promise<void>} A promise that resolves when the counting is complete.
 *  Except 'li', 'head', 'th'
 */
export async function countHtmlTagsInFile(url) {
    // Define the list of HTML tags to check
    const tagsToCheck = [   'html', 'body', 'header', 'nav', 'footer', 'main', 'section', 'article', 
                            'div', 'p', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'ul', 'ol', 'form', 'label', 
                            'fieldset', 'legend', 'table', 'thead', 'tbody', 'tfoot', 'tr', 'td'        
    ];

    try {
        // Fetch the content of the .phtml file
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        const content = await response.text();

        // Iterate over the list of tags and count occurrences
        const results = {};
        tagsToCheck.forEach(tag => {
            // Escape the tag name for use in regex
            const openingTagRegex = new RegExp(`<${tag}`, 'g');
            const closingTagRegex = new RegExp(`</${tag}>`, 'g');

            // Count opening and closing tags
            const openingTagsCount = (content.match(openingTagRegex) || []).length;
            const closingTagsCount = (content.match(closingTagRegex) || []).length;

            results[tag] = {
                openingCount: openingTagsCount,
                closingCount: closingTagsCount
            };
        });

        // Log the results
        for (const [tag, counts] of Object.entries(results)) {
            if (counts.openingCount != counts.closingCount)
                console.error(`One or more html tags <${tag}> are not closed in : ${url.split('/').pop()}`);
        }

    } catch (error) {
        console.error('Error fetching or processing the .phtml file:', error);
    }
}

