#!/bin/bash

# Script Name: Directory Maker
# Author: Vincent Bailey
# Date of Latest Revision: 8/2/2021
# Purpose: This script will check the current directory for a name that the
# user will enter and then create that directory if it doesn't exist.

#Variable
directories=ls

#Main

for directoryname in directories
do
    echo "There's some pretty cool stuff in here!"
done

echo "Let's add a directory for you! Give me a name. QUICK!"
read directoryname

if [[ $directoryname != directories ]] 
then
    echo "Nice! Thanks (^_^)b"
    mkdir ./$directoryname
else
    echo "That's already in here. Don't tell anyone..."
fi