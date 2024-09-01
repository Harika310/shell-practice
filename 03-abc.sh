#!/bin/bash

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N 03-abc.sh <filepath>"
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
        exit 1
fi


echo  "Please enter your data"
read  DATA

echo "Before data: $DATA" >abc.txt

echo "After converting data" 
cols=$(head -2 "$FILEPATH" | wc -w)
for i in $(seq 1 "$cols")
do
    echo $(cut -d ' ' -f "$i" "$FILEPATH")
done