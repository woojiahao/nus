const collection = {
    'cs2100': {
        'name': 'Computer Organisation',
        'resources': {
            'midterms_notes.pdf': 'Midterm Notes',
            'pipelining_notes.pdf': 'Pipelining Guide'
        }
    },
    'cs1231s': {
        'name': 'Discrete Structures',
        'resources': {
            'identities.pdf': 'Common Identities',
            'quick_notes.pdf': 'Quick Reference Notes'
        }
    },
    'cs2030s': {
        'name': 'Programming Methodology 2',
        'resources': {
            'finals_notes.pdf': 'Final Notes',
            'pe1_cheatsheet.pdf': 'PE1 Cheatsheet',
            'pe2_cheatsheet.pdf': 'PE2 Cheatsheet',
        }
    },
    'cs2040s': {
        'name': 'Data Structures and Algorithms',
        'resources': {
            'finals_notes.pdf': 'Final Notes',
            'finals_cheatsheet.pdf': 'Final Cheatsheet',
        }
    },
    'cs2102': {
        'name': 'Introduction to Database Systems',
        'resources': {
            'finals_cheatsheet.pdf': 'Final Cheatsheet',
        }
    },
    'gea1000': {
        'name': 'Quantitative Reasoning with Data',
        'resources': {
            'finals_cheatsheet.pdf': 'Final Cheatsheet',
        }
    },
    'ma1521': {
        'name': 'Calculus for Computing',
        'resources': {
            'finals_cheatsheet.pdf': 'Final Cheatsheet',
            'midterms_cheatsheet.pdf': 'Midterm Cheatsheet',
        }
    },
}

const modulesContainer = document.querySelector('div.modules');
const generateResourceLink = (code, file) => `https://github.com/woojiahao/nus/blob/main/${code}/${file}`;

for (const key in collection) {
    const moduleDiv = document.createElement('div');
    moduleDiv.classList.add('module');

    const titleHeader = document.createElement('h2');
    const title = key.toUpperCase();
    titleHeader.textContent = title;
    moduleDiv.appendChild(titleHeader);

    const nameSubHeader = document.createElement('h3');
    nameSubHeader.textContent = collection[key]['name'];
    moduleDiv.appendChild(nameSubHeader);

    for (const resource in collection[key]['resources']) {
        const resourceLink = document.createElement('a');
        resourceLink.href = generateResourceLink(key, resource);
        resourceLink.textContent = collection[key]['resources'][resource];
        moduleDiv.appendChild(resourceLink);
    }

    modulesContainer.appendChild(moduleDiv);
}