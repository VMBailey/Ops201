# Script Name: IP Analysis
# Author: Vincent Bailey
# Date of Latest Revision: 08/24/2021
# Purpose: This script will search the output of ipconfig for the designated PC's IPV4 address, print it
# into a text file, and then remove that text file from the specified destination.


$networkreport = "C:\users\vincent\documents\network_report.txt"

function report {
    ipconfig /all |out-file -filepath $networkreport
    Select-String -Path $networkreport -Pattern ipv4 -SimpleMatch | select-object -first 1 | write-host
    remove-item $networkreport
}

report