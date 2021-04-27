#!/bin/bash

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
	echo -e "\n\e[32mVocê tem acesso a internet\n"
else
	echo -e "\n\e[32mVocê não tem acesso a internet\n"
fi
