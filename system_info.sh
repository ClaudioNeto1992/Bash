#!/bin/bash
 
###################################################################
#Script Name:System Info
#Description: The script will pick up some informations of system and show it.
#Args:                               
#Author:Claudio Joaquim Ferreira Neto                              
#Email:claudiojfn.1992@gmail.com                                   
###################################################################

clear_scren(){
## Clear the screen
clear;
}

get_hostname(){
## Hostname information:
echo -e "\e[31;43m****** HOST INFORMATION ******\e[0m";
hostnamectl;
echo "";
}

get_disk_usage(){
## Free system disk space usage:
echo -e "\e[31;43m****** FILE SYSTEM DISK SPACE USAGE ******\e[0m";
df -h;
echo "";
}

get_memomy_usage(){
## Free and used memory in the system:
echo -e "\e[31;43m****** FREE AND USED MEMORY ******\e[0m";
free -mt;
echo "";
}

get_uptime(){
## System uptime and load:
echo -e "\e[31;43m****** SYSTEM UPTIME AND LOAD ******\e[0m";
uptime;
echo"";
}

get_user_logged(){
## Logged-in users:
echo -e "\e[31;43m****** CURRENTLY LOGGED-IN USERS ******\e[0m";
who;
echo "";
}

get_processes(){
## Top 5 processes as far as memory usage is concerned
echo -e "\e[31;43m****** TOP 5 MEMORY-CONSUMING PROCESSES******\e[0m";
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6;
echo "";
}

the_end(){
##fim
echo -e "\e[31;43m****** DONE ******\e[0m";

}

clear_scren
get_hostname
get_disk_usage
get_memomy_usage
get_uptime
get_user_logged
get_processes
the_end
