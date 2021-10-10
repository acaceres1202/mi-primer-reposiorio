*** Settings ***
Documentation           Existe en documento de texto con los pasos manuales
...                     Esta es mi primera automatizacion
Library                 SeleniumLibrary

*** Variables ***

*** Test Cases ***
G001 Busqueda de palabras en Google
    Open Browser    https://www.google.com.py/      chrome
    Wait Until Element Is Visible   xpath=/html/body/div[1]/div[2]/div/img
    Input Text      xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   casos de prueba
    Click Element       xpath=/html/body/div[1]/div[2]/div/img
    Click Button        xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     casos de prueba - Buscar con Google
    Page Should Contain     casos de prueba
    Close Browser

G002 Hacer click en el boton de busquedas sin escribir palabras en Google
    Open Browser    https://www.google.com.py/      chrome
    Wait Until Element Is Visible   xpath=/html/body/div[1]/div[2]/div/img
    Click Button        xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser