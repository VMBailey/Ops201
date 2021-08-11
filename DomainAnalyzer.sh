#!/bin/bash

# Script Name: Domain Analyzer
# Author: Vincent Bailey
# Date of Latest Revision: 8/11/2021
# Purpose: This script will ask the user for a domain address and then
# store that info into a tyext file.

echo "Hey again! We keep running into each other, huh? Let's be nosy together for a bit! Give me a website address"
read domainName

Domain_Info(){
    whois $domainName
    dig $domainName
    host $domainName
    nslookup $domainName
}

Domain_Info > /home/vincent/Ops201/DomainInfo.txt

echo "Good choice. Check your Ops201 folder. You'll find a text file in there ;)"