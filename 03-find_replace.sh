#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR $G Exists $N"
else
    echo -e "$SOURCE_DIR $R does not exist $N"
    exit 1
fi

FILES=$(find ${SOURCE_DIR} -name "*.txt")
echo "Files: $FILES"


for f in Files
do
 sed -i 's/ram/anvesh/g' *.txt "$f"
done