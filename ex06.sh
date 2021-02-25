#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash

read -p "Digite o nome de um arquivo ou de um diretório: " FILE

if [ -e ${FILE} ]
then
        echo "${FILE} existe!"
else
        echo "${FILE} não existe ou o caminho não foi especificado."
fi

if [ -f ${FILE} ]
then
        echo "E é um arquivo normal!"
        echo ""
        ls -l ${FILE}
fi

if [ -d ${FILE} ]
then
        echo "E é um diretório!"
        echo ""
        ls -l ${FILE}
fi
