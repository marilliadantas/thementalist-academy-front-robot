*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    Collections
Library    String

#Pastas referentes aos elementos da página
Resource  ../data/elementos_cadastro.resource
Resource  ../data/elementos_login.resource
Resource  ../data/elementos_diretoria.resource
Resource  ../data/elementos_listar_diretoria.resource
Resource  ../data/elementos_listar_cadastro.resource
Resource  ../data/elementos_editar_diretoria.resource

#Variables
Resource    ../data/variaveis_login.resource
Resource    ../data/variaveis_cadastro.resource
Resource    ../data/variaveis_diretoria.resource
Resource    ../util/actions.robot
Resource    ../util/setup.robot

#Pastas com as Keywords
Resource    ../login.resource
Resource    ../cadastro.resource
Resource    ../diretoria.resource
Resource    ../listar_diretoria.resource
Resource    ../listar_cadastro.resource
Resource    ../editar_diretoria.resource