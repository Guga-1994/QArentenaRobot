* Settings *
Library  SeleniumLibrary

#variáveis globais com valores constantes 
* Variables *
${URL}      https://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISAR}  button.search-expand.touch-icon-button
${INPUT_PESQUISAR}  name=q
${SUBMIT_PESQUISAR}  css=input.search-action.flat-button
${LINK_POST}    css=#Blog1 > div.blog-posts.hfeed.container > article:nth-child(2) > div > div > h3 > a
${IMG_ROBO}    css=#post-body-1862651152969907712 > div > a > img


* Keywords *
Acessar a página do blog 
    Open Browser        url=${URL}  browser=${BROWSER}
    Title Should Be  Robotizando Testes

Pesquisar por um post com "${TEXTO_PESQUISA}"
    #Wait Until Element Is Visible  ${BTN_PESQUISAR}
    Click Button  css=${BTN_PESQUISAR}
    Input Text  ${INPUT_PESQUISAR}  ${TEXTO_PESQUISA}
    Click Element  ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_DESEJADA}"
    Page Should Contain  ${MSG_DESEJADA}

Fechar o navegador
    Close Browser

Acessar o post "${TEXTO_PESQUISA}"
    Pesquisar por um post com "${TEXTO_PESQUISA}"
    Click Element   ${LINK_POST}
    Wait Until Page Contains    O que é Robot Framework? 

Conferir se a imagem do robô aparece
    Page Should Contain Image  ${IMG_ROBO}

Conferir se o texto "${texto}" aparece
    Page Should Contain  text=${texto}
