rem Script Name: Powershell System Process Commands
rem Author: Vincent Bailey
rem Date of Latest Revision: 08/6/2021
rem Purpose: Each of the lines will search and list different processes in Windows using Powershell.

rem Challenge 1: List all CPU processes from highest to lowest.
get-process | Sort-Object CPU -desc

rem Challenge 2: List all processes by PID from highest to lowest.
get-process | Sort-Object id -desc

rem Challenge 3: Prints the top five active WS(K) processes.
get-process | Sort-Object WS -Descending | Select -first 5

rem Challenge 4: Opens a website using Internet Explorer
 [system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")

rem Challenge 5: Opens ten instances of Internet Explorer using a For loop.
 $Number=10
 
 for ($y=0; $y -lt $Number; $y++)
 {
 	[system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")
     sleep 1
 }

rem Challenge 6: Closes Internet Explorer
stop-process -name "iexplore"

rem Challenge 7: Terminates a process by its PID.
stop-process -id 0