*** Settings ***
Resource    ../main.robot

*** Variables ***
&{geral}
...     URL=https://automacao.qacoders-academy.com.br/login
...     Browser=chrome
...     Headless=add_argument("--headless")