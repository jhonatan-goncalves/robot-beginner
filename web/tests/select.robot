*** Settings***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

**Test Cases***
Selecionar por Texto
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    #Variável que recebe o valor do item selecionado
    ${selected}=                    Get Selected List Value         class:avenger-list
    #Validação para verificar se o item selecionado tem o valor 7
    Should Be Equal                 ${selected}                     7
Selecionar por Valor
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown             6
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     Loki 