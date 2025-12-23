#!/bin/bash

#Shebang statement

echo -e "\n***********************Starting Logs Analysis***********************"

#Determine the files that were updated in the last 24 hours 
echo -e "\nBelow files were updated in the last 24 hours"
echo -e "\n"
find /mnt/c/Users/MASROOR/Desktop/logs_ingestion -name "*.log" -mtime -1 #Using the absolute path of the file to ensure the execution irrespective of the script file location

echo -e "\n=====================Analysing Application.log file====================="
echo -e "\n"

grep "WARNING" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log

echo -e "\nNumber of logs of WARNING type is: " $(grep -c "WARNING" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "EXCEPTION" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log

echo -e "\nNumber of logs of EXCEPTION type is: " $(grep -c "EXCEPTION" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "ERROR" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log

echo -e "\nNumber of logs of ERROR type is: " $(grep -c "ERROR" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "CRITICAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log

echo -e "\nNumber of logs of CRITICAL type is: " $(grep -c "CRITICAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "FATAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log

echo -e "\nNumber of logs of FATAL type is: " $(grep -c "FATAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/application.log) #Command Substituion

echo -e "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

echo -e "\n=====================Analysing System.log file====================="
echo -e "\n"

grep "WARNING" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log

echo -e "\nNumber of logs of WARNING type is: " $(grep -c "WARNING" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "EXCEPTION" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log

echo -e "\nNumber of logs of EXCEPTION type is: " $(grep -c "EXCEPTION" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "ERROR" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log

echo -e "\nNumber of logs of ERROR type is: " $(grep -c "ERROR" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "CRITICAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log

echo -e "\nNumber of logs of CRITICAL type is: " $(grep -c "CRITICAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "FATAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log

echo -e "\nNumber of logs of FATAL type is: " $(grep -c "FATAL" /mnt/c/Users/MASROOR/Desktop/logs_ingestion/system.log) #Command Substituion

echo -e "\nANALYSIS COMPLETED!"