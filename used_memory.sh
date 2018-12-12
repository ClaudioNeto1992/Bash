#!/bin/bash
 
###################################################################
#Script Name:Used Memory
#Description:The script will pick up the memory used and warn if it is less than or equal to 100MB.
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

