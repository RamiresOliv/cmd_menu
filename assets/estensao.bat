@echo off
cls
:menu
cls
color a

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

:opcao1
cls
start log_do_sistema.log
cls
goto menu

:opcao2
cls
start menu.bat
cls
exit