*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Library    String

#Data
Resource   data/geral.robot
Resource   data/login.robot
Resource   data/usuarios.robot

#Shared
Resource   shared/setup_teardown.robot

#Pages
Resource   pages/login_page.robot