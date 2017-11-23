#!/bin/bash
clear
echo -e "\033[01;33m"
echo
echo "   ____  _        _    ____ _  ______  __  __ ___ _____ _   _ "
sleep 0.1
echo "  | __ )| |      / \  / ___| |/ / ___||  \/  |_ _|_   _| | | |"
sleep 0.1
echo "  |  _ \| |     / _ \| |   | ' /\___ \| |\/| || |  | | | |_| |"
sleep 0.1
echo "  | |_) | |___ / ___ \ |___| . \ ___) | |  | || |  | | |  _  |"
sleep 0.1
echo "  |____/|_____/_/   \_\____|_|\_\____/|_|  |_|___| |_| |_| |_|"
sleep 0.1
echo " =========================by=Bacon============================="
sleep 0.1
echo "                  www.youtube.com/baconhacking"                                                             
echo
echo
echo -e " \033[01;32m==================HASH GENERATOR==================\033[01;37m"
echo
echo
echo -e "                  \033[01;32mHashs disponiveis:\033[01;37m"
echo
echo -e "                ::::: \033[01;32m [1]\033[01;37m MD5 :::::"
echo
echo
echo -e "                ::::: \033[01;32m [2]\033[01;37m SHA1 :::::"
echo
echo
echo -e "                ::::: \033[01;32m [3]\033[01;37m BASE64 :::::"
echo
echo
echo
echo -ne "\033[01;32mEscolha o tipo de hash que voce quer gerar:\033[01;37m" && read resposta1

#Condicional 1

if [ $resposta1 -lt "1" ]
then
	echo
	echo -e " \033[01;31mOpcao invalida"
	echo "Saindo..."	
	exit

elif [ $resposta1 -gt "3" ]
then
	echo
	echo -e " \033[01;31mOpcao invalida"
	echo "Saindo..."
	exit
elif [ $resposta1 -eq 1 ]
then
	echo -ne "\033[01;32mDigite o texto que sera transformado em hash:\033[01;37m" && read texto1
	echo
	echo -e "\033[01;33mFUNCIONOU! A hash foi armazenada no arquivo hashesMD5.txt\033[01;37m"
	echo
	echo
	echo -n "$texto1 = " >> hashesMD5.txt
	echo -ne "$texto1 = " | md5sum | awk '{print $1}' >> hashesMD5.txt
	tail -n 1 hashesMD5.txt
	echo
	echo -e "\033[01;33mObrigado por usar a ferramenta! -----> youtube.com/baconhacking"
	echo
	echo

elif [ $resposta1 -eq 2 ]
then
	echo -ne "\033[01;32mDigite o texto que sera criptografado:\033[01;37m" && read texto2
	echo
	echo -e "\033[01;33mFUNCIONOU! A hash foi armazenada no arquivo hashesSHA1.txt\033[01;37m"
	echo
	echo
	echo -n "$texto2 = " >> hashesSHA1.txt
	echo -ne "$texto2 = " | sha1sum | awk '{print $1}' >> hashesSHA1.txt
	tail -n 1 hashesSHA1.txt
	echo
	echo
	echo -e "\033[01;33mObrigado por usar a ferramenta! -----> youtube.com/baconhacking"
	echo
	echo
elif [ $resposta1 -eq 3 ]
then
	echo -ne "\033[01;32mDigite o texto que sera criptografado:\033[01;37m" && read texto3
	echo
	echo -e "\033[01;33mFUNCIONOU! A hash foi armazenada no arquivo hashesBASE64.txt!\033[01;37m"
	echo
	echo
	echo -n "$texto3 = " >> hashesBASE64.txt
	echo -ne "$texto3 = " ; echo "$texto3" | base64 | awk '{print $1}' >> hashesBASE64.txt
	tail -n 1 hashesBASE64.txt
	echo
	echo
	echo -e "\033[01;33mObrigado por usar a ferramenta! -----> youtube.com/baconhacking"
	echo
	echo
fi




