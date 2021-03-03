@echo off
cls
:menu
cls
color a

date /t
echo            brincando com o cmd!

echo    esse arquivo .bat nao e um virus/malwere

echo Seja bem vindo(a) %username%!!
                   
echo      MENU DE UTILIDADES (Beta)
echo  ==================================
echo * 1. Abrir Chrome                  * 
echo * 2. Esvaziar Lixeira              *
echo * 3. Abrir o painel de controle    *
echo * 4. Ir para o menu 2              *
echo * 5. arquivo com senha             * 
echo * 6. Sair                          *
echo * 7. (em teste)                    * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto menu2
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% GEQ 8 goto erromenu

:erromenu
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu

:: ==================================================== opções 

:opcao1
cls
start Chrome
cls
goto menu

:opcao2
cls
rd /S /Q c:\$Recycle.bin
echo =========================================================================
echo *      Lixeira Esvaziada aperte qualquer tecla para continuar...         *
echo =========================================================================
pause > nul
goto menu

:opcao3
cls
control.exe
pause
goto menus

:opcao5
echo Porfavor digite a senha para proceguir...
set /p senha=
if %senha% equ guilherme goto acessoliberado
if %senha% GEQ 76767 goto acessonegado

:acessonegado
echo    Oops parece que você errou:
echo  ==================================
echo * 1. voltar para o menu            * 
echo * 2. tentar novamente              *
echo  ==================================
set /p nun=
if %nun% equ 1 goto menu
if %nun% equ 2 goto opcao5
if %nun% GEQ 3 goto erro

:erro
echo ===================
echo * Opcao Invalida!  *
echo ===================
pause
goto acessonegado

:opcao6
echo tem certeza que quer sair?
echo          S/N
set /p opcao= 
echo ------------------------------
if %opcao% equ n goto fica
if %opcao% equ s goto sai
if %opcao% GEQ 8 goto opcao6
pause > nul
cls
exit

:opcao7
cls
echo parece que essa opçao ainda esta em teste
echo aperte qualquer tecla para continua
pause > nul
goto menu

:: ==================================================== 1 definições de opções 

:sai
exit

:fica
goto menu

:acessoliberado
cls
msg * kkk ola bom vc fez isso pra nada (ainda)
cls
exit

:: ==================================================== menu 2 


:menu2

date /t

echo Seja bem vindo(a) %username%!!
                   
echo      MENU DE UTILIDADES 2! 
echo  ==================================
echo * 1. abrir o log de auteracoes       * 
echo * 2. voutar ao menu 1
echo  ==================================
set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
IF %opcao% GEQ 9 goto opcao6

:: ==================================================== opções 

:opcao1
cls
start assets/log_do_sistema.log
cls
goto menu2

:opcao2
cls
goto menu