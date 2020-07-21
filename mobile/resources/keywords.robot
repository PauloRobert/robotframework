**Settings***
Documentation       Palavras Chaves


***Keywords***

Dado que desejo comer "${prato}"
    #Setando variavel
    Set Test variable       ${prato}

Quando submeto meu email "${email}"
    #Incluindo um Checkpoint
    Wait Until Page Contains        Buscar Prato    20
    Input Text     accessibility_id=emailInput          ${email}
    Input Text     accessibility_id=plateInput      ${prato}
    Click Text     Buscar Prato



Entao devo ver a lista de pratos por tipo
    Wait Until Page Contains       Fome de ${prato}