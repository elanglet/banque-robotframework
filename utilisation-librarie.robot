*** Settings ***
Library             python-libs/MaLibrairie.py

*** Test Cases ***
Utilisation du mot-clé personnalisé
    # Utilisation du mot-clé avec un paramètre
    ${message}          Dire Bonjour            Etienne
    Log To Console      ${message}

    # Utilisation du mot-clé sans paramètre
    ${message}          Dire Bonjour
    Log To Console      ${message}

