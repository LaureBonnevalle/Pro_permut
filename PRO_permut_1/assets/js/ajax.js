'use strict';

document.addEventListener("DOMContentLoaded", () => {
    
    document.getElementById('permutations').addEventListener('click', handleButtonClick);
    document.getElementById('triangulations').addEventListener('click', handleButtonClick);
    document.getElementById('quadripartites').addEventListener('click', handleButtonClick);

    function handleButtonClick(event) {
        document.getElementById('card').innerHTML = '<h2>Recherche en cours des ' + event.target.id + ' ...</h2><h3>Merci de patienter ...</h3>';
        //console.log(event.target.id);

        let myRequest = new Request('?route=ajax', {
            method  : 'POST',
            body    : JSON.stringify({ ref : event.target.id })
        })

        fetch(myRequest)
            // Récupère les données
            .then(response => response.json())
            .then(data => {
                console.log(data);
                renderCombinations(data);
            })
            .catch(error => {
                console.error('Error:', error);
            });    
    }
});

function renderCombinations(data) {
    const cardSection = document.getElementById('card');
    cardSection.innerHTML = '<h2>Voici les combinaisons détectées :</h2>';

    data.forEach(combination => {
            const table = document.createElement('table');
            const thead = document.createElement('thead');
            const tbody = document.createElement('tbody');
            const trHead = document.createElement('tr');
            const th = document.createElement('th');

            th.colSpan = 4;
            th.innerText = `Une combinaison détectée - ${combination.grade1} - ${combination.qualif1}`;
            trHead.appendChild(th);
            thead.appendChild(trHead);
            table.appendChild(thead);

            const trBody = document.createElement('tr');
            
            const createTd = (id, firstname, lastname, nbrMonthsRenewalsSubscription, dept, poste, items) => {
                const td = document.createElement('td');
                td.innerHTML = `
                    <h3>${id} - ${firstname} ${lastname}( Sub: ${nbrMonthsRenewalsSubscription} )</h3>
                    <p>${dept}</p>
                    <p>${poste}</p>
                    <p>__________________________</p>
                    ${items.map(item => `<p>${item != null ? item : '...'}</p>`).join('')}
                `;
                return td;
            };

            trBody.appendChild(createTd(
                combination.id1, 
                combination.firstname1, 
                combination.lastname1, 
                combination.nbrMonthsRenewalsSubscription1, 
                combination.dept1, 
                combination.poste1, 
                [combination.item_1_1, combination.item_2_1, combination.item_3_1, combination.item_4_1, combination.item_5_1]
            ));

            trBody.appendChild(createTd(
                combination.id2, 
                combination.firstname2, 
                combination.lastname2, 
                combination.nbrMonthsRenewalsSubscription2, 
                combination.dept2, 
                combination.poste2, 
                [combination.item_1_2, combination.item_2_2, combination.item_3_2, combination.item_4_2, combination.item_5_2]
            ));
            
            if (combination.id3 != null) {
                trBody.appendChild(createTd(
                    combination.id3, 
                    combination.firstname3, 
                    combination.lastname3, 
                    combination.nbrMonthsRenewalsSubscription3, 
                    combination.dept3, 
                    combination.poste3, 
                    [combination.item_1_3, combination.item_2_3, combination.item_3_3, combination.item_4_3, combination.item_5_3]
                ));
            } else {
                trBody.appendChild(document.createElement('td'));
            }

            if (combination.id4 != null) {
                trBody.appendChild(createTd(
                    combination.id4, 
                    combination.firstname4, 
                    combination.lastname4, 
                    combination.nbrMonthsRenewalsSubscription4, 
                    combination.dept4, 
                    combination.poste4, 
                    [combination.item_1_4, combination.item_2_4, combination.item_3_4, combination.item_4_4, combination.item_5_4]
                ));
            } else {
                trBody.appendChild(document.createElement('td'));
            }

            tbody.appendChild(trBody);
        table.appendChild(tbody);

        // Create the forms for each combination
        const formContainer = document.createElement('div');

        const createForm = (action, buttonName) => {
            const form = document.createElement('form');
            form.method = 'POST';
            form.action = `?route=${action}`;

            for (let i = 1; i <= 4; i++) {
                if (combination['id' + i] != null) {
                    const input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = `id${i}`;
                    input.value = combination['id' + i];
                    form.appendChild(input);
                }
            }

            const submitButton = document.createElement('input');
            submitButton.type = 'submit';
            submitButton.name = buttonName.toLowerCase();
            submitButton.value = buttonName;

            form.appendChild(submitButton);
            return form;
        };

        formContainer.appendChild(createForm('reget', 'Regeter'));
        formContainer.appendChild(createForm('validate', 'Valider'));

        cardSection.appendChild(table);
        cardSection.appendChild(formContainer);
    });
}