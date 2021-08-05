GOTO EndComment1
    Script Name: Thompson Backup
    Author: Vincent Bailey
    Date of Latest Revision: 8/5/2021
    Purpose: This script will take every file in Jorge's user profile and
    back it up to his spare E drive. To make sure the script launches at
    midnight, I created a new task in the Task Scheduler that will run this
    batch file at midnight.
    EndComment1
    
robocopy "C:\Users\j.thompson" "E:"

pause