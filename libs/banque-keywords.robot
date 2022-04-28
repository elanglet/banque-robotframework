*** Settings ***
Library             SeleniumLibrary
Documentation       Bibliothèque de mots-clés pour les tests de portail bancaire.
...                 Cette librairie est écrite en RF.

*** Variables ***
${url}              http://192.168.15.99
${browser}          Firefox

*** Keywords ***
Lancement du navigateur
    [Documentation]             Permet de lancer le navigateur
    Open Browser                ${url}              ${browser}
    Set Selenium Speed          0.0s


Ouverture de la page d'accueil
    Go To                       ${url}/


Clique sur le lien "Accès client"
    Click Element               link=Accès client


Le formulaire d'authentification doit s'afficher
    Element Should Contain      xpath=//div[@id='main']/div/h3                  Identification Client
    Element Should Contain      xpath=//div[@id='identifiantField']/label       Identifiant :
    Element Should Contain      xpath=//div[@id='motdepasseField']/label        Mot de passe :
    Element Should Be Visible   xpath=//button[@type='submit']

Fermer le navigateur
    Close All Browsers
