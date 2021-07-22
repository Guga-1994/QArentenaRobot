* Settings *

Resource  ResourceBlogTest.robot
Test Setup    Acessar a página do blog
Test Teardown    Fechar o navegador 

* Test Cases *
Caso de teste 01: Pesquisar um post
    Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
    Conferir mensagem de pesquisa por "Season Premiere: Introdução ao Robot Framework"
    

Caso de teste 02: Ler um post    
    Acessar o post "Season Premiere: Introdução ao Robot Framework"
    Conferir se a imagem do robô aparece
    Conferir se o texto "nesse post vou apresentar-lhes o astro deste blog" aparece
    