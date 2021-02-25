#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

#!/bin/bash

FILE=$1

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
fi

if [ -d ${FILE} ]
then
        echo "E é um diretório!"
fi
ls -l $FILE
