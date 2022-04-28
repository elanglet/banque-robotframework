*** Settings ***
Documentation           Suite de tests pour valider le fonctionnement du portail bancaire.
...                     On utilise Selenium de manière sous-jacente pour piloter un navigateur.
...                     Ce fichier ne contient que les tests, tout le reste étant défini dans
...                     des fichiers de ressources.

Resource                libs/banque-keywords.robot

Test Setup              Lancement du navigateur
Test Teardown           Fermer le navigateur

*** Test Cases ***
Accès à l'authentification
    [Documentation]             Validation de l'accès à la page d'authentification.
    ...                         On vérifie que le formulaire s'affiche correctement.
    Ouverture de la page d'accueil
    Clique sur le lien "Accès client"
    Le formulaire d'authentification doit s'afficher


# Authentification


# Echec d'autentification


# Vérification de la liste des comptes

