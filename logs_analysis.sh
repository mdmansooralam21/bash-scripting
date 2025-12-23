#!/bin/bash

#Shebang statement

#Using the environment variables to make the script efficient and reusable
#Update the environment variable as per your use-case
LOG_DIRECTORY="/mnt/c/Users/MASROOR/Desktop/logs_ingestion"
APP_LOG="application.log"
SYS_LOG="system.log"
LOG_FILES=$(find $LOG_DIRECTORY -name "*.log" -mtime -1)
ERROR_PATTERNS=("WARNING" "EXCEMPTION" "ERROR" "CRITICAL" "FATAL")

echo -e "\n***********************Starting Logs Analysis***********************"

#Determine the files that were updated in the last 24 hours 
echo -e "\nBelow files were updated in the last 24 hours"
echo -e "\n"
echo "$LOG_FILES"

echo -e "\n=====================Analysing Application.log file====================="
echo -e "\n"

grep ${ERROR_PATTERNS[0]} $LOG_DIRECTORY/$APP_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[0]} type is: " $(grep -c ${ERROR_PATTERNS[0]} $LOG_DIRECTORY/$APP_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[1]} $LOG_DIRECTORY/$APP_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[1]} type is: " $(grep -c ${ERROR_PATTERNS[1]} $LOG_DIRECTORY/$APP_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[2]} $LOG_DIRECTORY/$APP_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[2]} type is: " $(grep -c ${ERROR_PATTERNS[2]} $LOG_DIRECTORY/$APP_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[3]} $LOG_DIRECTORY/$APP_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[3]} type is: " $(grep -c ${ERROR_PATTERNS[3]} $LOG_DIRECTORY/$APP_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[4]} $LOG_DIRECTORY/$APP_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[4]} type is: " $(grep -c ${ERROR_PATTERNS[4]} $LOG_DIRECTORY/$APP_LOG) #Command Substituion

echo -e "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

echo -e "\n=====================Analysing System.log file====================="
echo -e "\n"

grep ${ERROR_PATTERNS[0]} $LOG_DIRECTORY/$SYS_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[0]} type is: " $(grep -c ${ERROR_PATTERNS[0]} $LOG_DIRECTORY/$SYS_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[1]} $LOG_DIRECTORY/$SYS_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[1]} type is: " $(grep -c ${ERROR_PATTERNS[1]} $LOG_DIRECTORY/$SYS_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[2]} $LOG_DIRECTORY/$SYS_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[2]} type is: " $(grep -c ${ERROR_PATTERNS[2]} $LOG_DIRECTORY/$SYS_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[3]} $LOG_DIRECTORY/$SYS_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[3]} type is: " $(grep -c ${ERROR_PATTERNS[3]} $LOG_DIRECTORY/$SYS_LOG) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep ${ERROR_PATTERNS[4]} $LOG_DIRECTORY/$SYS_LOG

echo -e "\nNumber of logs of ${ERROR_PATTERNS[4]} type is: " $(grep -c ${ERROR_PATTERNS[4]} $LOG_DIRECTORY/$SYS_LOG) #Command Substituion

echo -e "\nANALYSIS COMPLETED!"