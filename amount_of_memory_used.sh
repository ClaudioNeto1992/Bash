#!/bin/bash
 
###################################################################
#Script Name: amount of memory used
#Description:the script will pick up memory used and show it.      
#Args:                               
#Author:Claudio Joaquim Ferreira Neto                              
#Email:claudiojfn.1992@gmail.com                                   
###################################################################

##Coletando a quantidade de memória usada.

total=$(free -mt | grep Total| awk '{print $3}')

##Coletando a quantidade de memória livre
livre=$(free -mt | grep Total| awk '{print $4}')

##Mostrando a quantidade de memória usada

echo -e "Quantidade de memória usada: $total MB \n"

##Mostrando a quantidade de memória livre

echo -e "Quantidade de memória livre:  $livre MB \n"


