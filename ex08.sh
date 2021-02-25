#Modify the previous script to accept an unlimited number of files and directories as arguments.

#!/bin/bash

for FILE in $@
do
  if [ -f "$FILE" ]
  then
    echo "$FILE é um arquivo normal."
  elif [ -d "$FILE" ]
  then
    echo "$FILE é um diretório."
  else
    echo "$FILE é algo diferente de um arquivo normal e um diretório."
  fi

  ls -l $FILE
done
