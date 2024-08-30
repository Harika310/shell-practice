#!/bin/bash

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N 02-convert_rc.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

if [ -f $FILEPATH ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

cols=$(head -2 "$FILEPATH" | wc -l)
for i in $(seq 1 "$cols")
do
    echo $(cut -d ' ' -f "$i" "$FILEPATH")
done