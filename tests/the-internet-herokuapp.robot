*** Settings ***
Resource  ../resources/the-internet-herokuapp.resource
Test Teardown  Tirar Print
Suite Teardown    Close Browser    ALL


*** Test Cases ***
Interagindo com Dropdown
    [Tags]    interagindo_dropdown
  Acessar "https://the-internet.herokuapp.com/dropdown"
  Selecionar opção "Option 1"

Interagindo com iFrames
    [Tags]    interagindo_iframe
  Acessar "https://the-internet.herokuapp.com/iframe"
  Obter frase de dentro do iFrame

Interagindo com Tabelas
    [Tags]    interagindo_tabelas
  Acessar "https://the-internet.herokuapp.com/tables"
  Conferindo valores em tabelas

Interagindo com novas abas (pages)
    [Tags]    interagindo_abas
  Acessar "https://the-internet.herokuapp.com/windows"
  ${pagina_id}  Get Page Ids  CURRENT
  Clicar e ir para a nova página aberta
  Voltar para a página inicial  ${pagina_id}