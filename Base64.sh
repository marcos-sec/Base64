#!/bin/bash

#Author: d4t4s3c
#Email: d4t4s3c@protonmail.com
#GitHub: www.github.com/d4t4s3c.com

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
nc="\e[0m"

#var
shell=">"
n1=1
n2=2
n3=3
z1="Text to encode:"
z2="The coded text is:"
z3="Text to decode:"
z4="The decoded text is:"

function banner(){
        clear
        sleep 1
        echo ""
        echo -e "$b┌═══════════════════════════════════════════════════┐"
        echo -e "$b║$v ██████╗  █████╗ ███████╗███████╗ ██████╗ ██╗  ██╗ $b║"
        echo -e "$b║$v ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝ ██║  ██║ $b║"
        echo -e "$b║$v ██████╔╝███████║███████╗█████╗  ███████╗ ███████║ $b║"
        echo -e "$b║$v ██╔══██╗██╔══██║╚════██║██╔══╝  ██╔═══██╗╚════██║ $b║"
        echo -e "$b║$v ██████╔╝██║  ██║███████║███████╗╚██████╔╝     ██║ $b║"
        echo -e "$b║$v ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝      ╚═╝ $b║"
        echo -e "$b║$b                  Encode $v-$b Decode                  $b║"
        echo -e "$b║$r         Author  $b: $a d4t4s3c                        $b║"
        echo -e "$b║$r         Email   $b: $a d4t4s3c@protonmail.com         $b║"
        echo -e "$b║$r         GitHub  $b: $a www.github.com/d4t4s3c         $b║"
        echo -e "$b└═══════════════════════════════════════════════════┘$b"
        echo ""                                                                                                         
}

function main(){
        echo -e "$b[$v$n1$b] Encode"
        echo -e "$b[$v$n2$b] Decode"
        echo -e "$b[$v$n3$b] Exit"
        echo ""
}

function menu(){

read -p " $(echo -e $v$shell $nc)" opc

if [ $opc -eq 1 ]; then
	echo ""
	echo -e "$a$z1$nc"
	echo ""
	read encode
        echo ""
        echo -e "$a$z2$nc"
	sleep 3
	echo -e "$v"
	echo -n "$encode" | base64
	echo ""
        echo ""
elif [ $opc -eq 2 ]; then
	echo ""
	echo -e "$a$z3$nc"
	echo ""
	read decode
        echo ""
	echo -e "$a$z4$nc"
	sleep 3
	echo -e "$v"
	echo -n "$decode" | base64 -d
	echo ""
	echo ""
elif [ $opc -eq 3 ]; then
	echo ""
	echo ""
	echo -e "$a        |\/\/\/|"
        echo -e "        |      |" 
        echo -e "        |      |" 
        echo -e "        | (o)(o) " 
        echo -e "        C      _) "
        echo -e "         | ,___|  "
        echo -e "         |   /    "
        echo -e "        /____\ "
        echo -e "       /      \ $nc"
        echo -e "$b #### $v BYE $v HACKER $b ####"
        echo ""
        echo ""
	sleep 2
	exit
else
	echo ""
	echo -e "$a invalid option $nc"
	sleep 2
	banner
        main
	menu
fi
}

banner
main
menu
