#Modify the previous script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

#!/bin/bash

for FILE in $@
do
  if [ -f "$FILE" ]
  then
    echo "$FILE é um arquivo."
  elif [ -d "$FILE" ]
  then
    echo "$FILE é um diretório"
  else
    echo "$FILE não é um arquivo e nem um diretório."
  fi

  ls -l $FILE
done
