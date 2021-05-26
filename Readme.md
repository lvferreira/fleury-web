Busca de Unidades no site Fleury
https://www.fleury.com.br/

O projeto possui as seguintes funcionalidades:

 Acessa o site do Laboratório Fleury
 Através da busca pelas Facilidades, de Unidade que atenda aos requisitos selecionados
 É retornada a Unidade específica pertinente às facilidades selecionadas.

Estrutura do projeto:
    Desenvolvido no padrão POM(Page Object Model)
    Possui relatório no padrão Allure-Cucumber
    Configurado para rodar no navegador Chrome

Configurando o ambiente:
    Antes de rodar os testes, por favor, instale:

1.1 - [Ruby] - Instalando Ruby

    Guia Instalando Ruby no Windows: https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95
    Guia Instalando Ruby no Ubuntu: https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b

2.1 - [Chrome_Driver] - Configurando driver do Chrome para rodar os testes:

    Baixar o arquivo no site: http://chromedriver.chromium.org/downloads. Selecione a versão compatível com o seu sistema.
    Navegue até a pasta onde realizou o download do arquivo e descompacte-o,
    Mova o arquivo descompactado para a seguinte pasta: 
    - Linux: “/usr/bin/”, executar o comando: sudo mv chromedriver /usr/bin/ 
    - Windows: C:/Windows

2.2 - [Geckodriver] - Configurando driver do Fifefox para rodar os testes:

    Baixar o arquivo no site: https://github.com/mozilla/geckodriver/releases Selecione a versão compatível com o seu sistema.
    Navegue até a pasta onde realizou o download do arquivo e descompacte-o,
    Mova o arquivo descompactado para a seguinte pasta: 
    - Linux: “/usr/bin/”, executar o comando: sudo mv geckodriver /usr/bin/ 
    - Windows: C:/Windows

3.1 - [Allure-Cucumber] - Instalando o framework Allure-Cucumber

    Primeiramente, devemos instalar o Scoop(Scoop é um instalador de linha de comando para o Windows)
    Execute o seguinte comando no Windows PowerShell: iwr -useb get.scoop.sh | iex
    Logo após, vamos instalar o Allure, através do seguinte comando: scoop install allure

3.2 - [Report]

    Para abrir a página HTML de report do Allure, execute o seguinte comando: allure open fleury_web\allure-report


Executando os testes:

4.1 - [Exec]

    - No Terminal de Comando, da sua preferência, na pasta do projeto, execute o seguinte comando que irá instalar as Gems: bundle install
    - Para rodar os testes execute o seguinte comando na pasta do projeto: cucumber
