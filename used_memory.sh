#!/bin/bash
 
###################################################################
#Script Name:Used Memory
#Description:The script will get the memory used and show it
#Args:                               
#Author:Claudio Joaquim Ferreira Neto                              
#Email:claudiojfn.1992@gmail.com                                   
###################################################################

## Get total free memory size in MB
free=$(free -mt | grep Total | awk '{print $4}')

## Check if free memory is less or equal to 10000MB
if [[ "$free" -le 10000 ]]; then
##Get top processes consuming system memory and show it
echo -e "A memória está abaixo de 1000MB\n\nMemoria livre: $free MB"
fi

exit 0

