*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

#Pastas referentes aos elementos da página
Resource  ../data/elementos_cadastro.resource
Resource  ../data/elementos_login.resource
Resource  ../data/elementos_diretoria.resource

#Variables
Resource    ../data/variaveis_login.resource
Resource    ../util/actions.robot

#Pastas com as Keywords
Resource    ../login.resource
Resource    ../cadastro.resource
Resource    ../diretoria.resource
