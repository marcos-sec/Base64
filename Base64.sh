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
shell="Base64"
n1=1
n2=2
n3=3
#banner
function banner(){
        clear
        sleep 1
        echo ""
        echo -e "$b ########################################"
        echo -e "$b #$v   ____                   __ _  _     $b#"
        echo -e "$b #$v  |  _ \                 / /| || |    $b#"
        echo -e "$b #$v  | |_) | ____ ___  ___ / /_| || |_   $b#"
        echo -e "$b #$v  |  _ < / _  / __|/ _ \  _ \__   _|  $b#"
        echo -e "$b #$v  | |_) | (_| \__ \  __/ (_) | | |    $b#"
        echo -e "$b #$v  |____/ \__,_|___/\___|\___/  |_|    $b#"
        echo -e "$b #$b            Encode $v-$b Decode           $b#"
        echo -e "$b #$r   Author $b :$a d4t4s3c                  $b#"
        echo -e "$b #$r   Email  $b :$a d4t4s3c@protonmail.com   $b#"
        echo -e "$b #$r   GitHub $b :$a www.github.com/d4t4s3c   $b#"
        echo -e "$b ########################################$nc"
        echo ""
}
#menu
function menu(){
        echo -e "$b [$v$n1$b] Encode"
        echo -e "$b [$v$n2$b] Decode"
        echo -e "$b [$v$n3$b] Exit"
        echo ""
#prompt
read -p "$(echo -e $r[$v$shell$a:$b~$r]$v# $nc)" opc
if [ $opc -eq 1 ]; then
	sleep 1
	echo ""
	clear
	echo -e "$a¿what text do you want to encode in Base64?$nc"
	echo ""
	read encode
	sleep 1
	echo -e "$a"
        echo -e "the coded text is:$nc"
	sleep 1
	echo -e "$r"
	echo -n "$encode" | base64
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
        echo -e "$b#### $v BYE $v HACKER $b ####"
	echo ""
	echo ""
	sleep 2
elif [ $opc -eq 2 ]; then
	sleep 1
	echo ""
	clear
	echo -e "$a¿which Base64 do you want to decode in plain text?$nc"
	echo ""
	read decode
	sleep 1
	echo -e "$a"
	echo -e "the decoded text is:$nc"
	sleep 1
	echo -e "$r"
	echo -n "$decode" | base64 -d
	echo ""
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
        echo -e "$b#### $v BYE $v HACKER $b ####"
	echo ""
	echo ""
	sleep 2
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
	sleep 1
	banner
	menu
fi
}
#init
banner
menu
