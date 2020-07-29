*** Settings***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

**Test Cases***
Verifica o valor ao informar o numero da linha  
    Go To                               ${url}/tables
    #Valida um valor em uma determinada linha de uma tabela
    Table Row Should Contain            id:actors   1   $ 10.000.000

Descobre a linha pelo texto chave e valida os demais valores
    Go To               ${url}/tables
    #busca a linha pelo xpath e salva em uma variável
    ${target}=          Get WebElement                      xpath:.//tr[contains(.,'@chadwickboseman')]
    #Salva os dados da linha no relatório e no console do cmder
    Log                 ${target.text}
    Log To Console      ${target.text}
    #valida se na linha existem alguns valores
    Should Contain      ${target.text}      $ 700.00
    Should Contain      ${target.text}      Pantera Negra