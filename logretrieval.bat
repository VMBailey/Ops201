rem Script Name: Powershell Log Retrieval
rem Author: Vincent Bailey
rem Date of Latest Revision: 08/5/2021
rem Purpose: Each of the lines will perform a different task within Powershell.

rem Challenge 1: System event log of the last twenty four hours that print into a text file.
$24HourEventLog=get-eventlog -logname system -After(Get-Date).AddHours(-24)
$24HourEventLog | export csv c:\Users\Vincent\desktop\last_24.txt

rem Challenge 2: System event log errors that are printed to a text file.
get-eventlog -logname system -EntryType {Error} | export-csv c:\Users\Vincent\desktop\errors.txt

rem Challenge 3: Terminal will print all events from the System event log with an event ID of 16.
get-eventlog -logname system | where-object {$_.eventid -eq 16}

rem Challenge 4: Terminal will print twenty of the most recent entries in the System event log.
get-eventlog -logname system -newest 20

rem Challenge 5: Terminal will print five hundred of the most recent entries in the System event log. Full messages seen.
get-eventlog -logname system -newest 500 | Format-Table -AutoSize -Wrap