#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

#!/bin/bash

FILE=$1

if [ -f "$FILE" ]
then
        echo "É um arquivo!"
elif [ -d "$FILE" ]
then
        echo "É um diretório!"
else
	echo "$FILE é alguma coisa diferente de um arquivo e um diretório"
fi

ls -l $FILE
