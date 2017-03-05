*** Keywords ***

Logovanje
    [Arguments]   ${msg}    ${level}
    Log   ${msg}    ${level}

Before all
    Log To Console   "Before all executed"

After all
    Log To Console  "After all"


Before test
    Log To Console   "Before test"

After test
    Log To Console  "After test"
