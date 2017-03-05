*** Settings ***
Library   lib/ShiggyTestingLibrary.py
Library   String


Resource  keys.robot
Suite Setup   Before all
Suite Teardown    After all

Test Setup   Before test
Test Teardown    After test

*** Variables ***
${USERNAME}     Sima
${PASSWORD}     Sifra
${STATUS}       Failed

*** Test Cases ***

User logs in
    [Tags]    vars
    ${STATUS} =   Sign User In
    Log To Console   user/pass: ${USERNAME}/${PASSWORD} ${STATUS}      DEBUG

Test Robot framework logging
    Log   "WHAT"

Test Keywords
    [Tags]    smoke
    Logovanje   "WHAT "   DEBUG

Testiranje petlje
    : FOR    ${INDEX}    IN RANGE    1    3
     \    Log    ${INDEX}
     \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
     \    Log    ${RANDOM_STRING}
