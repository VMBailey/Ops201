#! bin/bash

# Script Name: While Loops Kill
# Author: Vincent Bailey
# Date of Latest Revision: 7/31/2021
# Purpose: This script will display processes and then ask the user
# for a PID. Once the PID is provided, the script will end, tragically.


while true
do
ps -aux
echo Hey....if you have a PID, you should definitely tell me what it is

# Variable
read killName
kill $killName

break

done