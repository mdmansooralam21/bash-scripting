#!/bin/bash

#Using the environment variables to make the script efficient and reusable
#Update the environment variable as per your use-case
LOG_DIRECTORY="/mnt/c/Users/MASROOR/Desktop/logs_ingestion"
LOG_FILES=$(find $LOG_DIRECTORY -name "*.log" -mtime -1)
ERROR_PATTERNS=("WARNING" "EXCEPTION" "ERROR" "CRITICAL" "FATAL")

#Determine the files that were updated in the last 24 hours 
echo -e "\nBelow files were updated in the last 24 hours" > $LOG_DIRECTORY/log_report.txt
echo -e "\n" >> $LOG_DIRECTORY/log_report.txt
echo "$LOG_FILES" >> $LOG_DIRECTORY/log_report.txt

echo -e "\n***********************Starting Logs Analysis***********************" >> $LOG_DIRECTORY/log_report.txt
echo -e "\n" >> $LOG_DIRECTORY/log_report.txt

for LOGS in $LOG_FILES; do #Using loops to analyse all the logs files present in the directory

    for ERRORS in ${ERROR_PATTERNS[@]}; do #Using loops to iterate through the ERROR_PATTERNS present in the logs

        echo -e "\n===================Analysing $LOGS file===================" >> $LOG_DIRECTORY/log_report.txt
        echo -e "\n" >> $LOG_DIRECTORY/log_report.txt
 
        grep $ERRORS $LOGS >> $LOG_DIRECTORY/log_report.txt >> $LOG_DIRECTORY/log_report.txt

        ERROR_COUNT=$(grep -c $ERRORS $LOGS)
        
        echo -e "\nNumber of logs of $ERRORS type is: " $ERROR_COUNT  >> $LOG_DIRECTORY/log_report.txt #Command Substituion

        echo -e "\n---------------------------------------------------------------" >> $LOG_DIRECTORY/log_report.txt
        echo -e "\n" >> $LOG_DIRECTORY/log_report.txt

        if [ $ERROR_COUNT  -gt 5 ]; then 

            echo "⚠️ Attention - Too many logs of type $ERRORS occured in $LOGS. Please check here: $LOG_DIRECTORY/log_report.txt" 
            echo -e "\n"

        fi


    done

done 

echo -e "\nANALYSIS COMPLETED - The output is saved at $LOG_DIRECTORY/log_report.txt"