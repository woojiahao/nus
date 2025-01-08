const collection = {
    'Year 1 Semester 1': {
        'ma1521': {
            'name': 'Calculus for Computing',
            'resources': {
                'finals_cheatsheet.pdf': 'Final Cheatsheet',
                'midterms_cheatsheet.pdf': 'Midterm Cheatsheet',
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
    },
    'Year 1 Semester 2': {
        'cs2100': {
            'name': 'Computer Organisation',
            'resources': {
                'midterms_notes.pdf': 'Midterm Notes',
                'pipelining_notes.pdf': 'Pipelining Guide'
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
    },
    'Year 2 Semester 1': {
        'cs2106': {
            'name': 'Introduction to Operating Systems',
            'resources': {
                'midterm_cheatsheet.pdf': 'Midterm Cheatsheet',
                'finals_notes.pdf': 'Finals Notes',
                'concurrency_problems.pdf': 'Common Concurrency Problems'
            }
        },
        'cs2103': {
            'name': 'Software Engineering',
            'resources': {
                'pe_notes.pdf': 'PE Notes'
            }
        },
        'cs2105': {
            'name': 'Introduction to Computer Networks',
            'resources': {
                'finals_cheatsheet.pdf': 'Finals Cheatsheet',
                'tutorials_pyp_notes.pdf': 'Tutorial & PYP Notes'
            }
        },
    },
    'Year 2 Semester 2': {
        'st2334': {
            'name': 'Probability and Statistics',
            'resources': {
                'st2334_midterms.pdf': 'Midterms Cheatsheet',
                'st2334_finals.pdf': 'Finals Cheatsheet',
            }
        },
        'cs2109s': {
            'name': 'Introduction to AI and Machine Learning',
            'resources': {
                'cs2109s_midterms.pdf': 'Midterms Cheatsheet'
            }
        },
        'cs3223': {
            'name': 'Database Systems Implementation',
            'resources': {
                'cs3223_midterms.pdf': 'Midterms Cheatsheet',
                'cs3223_finals.pdf': 'Finals Cheatsheet'
            }
        },
        'cs3230': {
            'name': 'Design and Analysis of Algorithms',
            'resources': {
                'cs3230_midterms.pdf': 'Midterms Cheatsheet',
                'cs3230_finals.pdf': 'Finals Cheatsheet'
            }
        },
    },
    'Year 3 Semester 1': {
        'LOA': {
            'name': 'Leave of Absence to work at Palantir'
        }
    }
}

const yearsContainer = document.querySelector('div.years');
const generateResourceLink = (code, file) => `https://github.com/woojiahao/nus/blob/main/${code}/${file}`;

for (const year in collection) {
    const modulesContainer = document.createElement('div');
    modulesContainer.classList.add('modules');
    const modulesHeader = document.createElement('h2');
    modulesHeader.textContent = year.toUpperCase();
    modulesContainer.append(modulesHeader);

    for (const key in collection[year]) {
        const moduleDiv = document.createElement('div');
        moduleDiv.classList.add('module');

        const headerDiv = document.createElement('div');
        headerDiv.classList.add('module-title');

        const titleHeader = document.createElement('h3');
        const title = key.toUpperCase();
        titleHeader.textContent = title;
        headerDiv.appendChild(titleHeader);

        const nameSubHeader = document.createElement('h3');
        nameSubHeader.textContent = collection[year][key]['name'];
        headerDiv.appendChild(nameSubHeader);

        moduleDiv.appendChild(headerDiv);

        const linkDiv = document.createElement('div');
        linkDiv.classList.add('links');

        for (const resource in collection[year][key]['resources']) {
            const resourceLink = document.createElement('a');
            resourceLink.href = generateResourceLink(key, resource);
            resourceLink.textContent = collection[year][key]['resources'][resource];
            linkDiv.appendChild(resourceLink);
        }

        moduleDiv.append(linkDiv);
        modulesContainer.appendChild(moduleDiv);
    }

    yearsContainer.appendChild(modulesContainer);
}