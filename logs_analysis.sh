#!/bin/bash

#Shebang statement

echo -e "\n***********************Starting Logs Analysis***********************"

#Determine the files that were updated in the last 24 hours 
echo -e "\nBelow files were updated in the last 24 hours"
echo -e "\n"
find . -name "*.log" -mtime -1

echo -e "\n=====================Analysing Application.log file====================="
echo -e "\n"

grep "WARNING" application.log

echo -e "\nNumber of logs of WARNING type is: " $(grep -c "WARNING" application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "EXCEPTION" application.log

echo -e "\nNumber of logs of EXCEPTION type is: " $(grep -c "EXCEPTION" application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "ERROR" application.log

echo -e "\nNumber of logs of ERROR type is: " $(grep -c "ERROR" application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "CRITICAL" application.log

echo -e "\nNumber of logs of CRITICAL type is: " $(grep -c "CRITICAL" application.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "FATAL" application.log

echo -e "\nNumber of logs of FATAL type is: " $(grep -c "FATAL" application.log) #Command Substituion

echo -e "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

echo -e "\n=====================Analysing System.log file====================="
echo -e "\n"

grep "WARNING" system.log

echo -e "\nNumber of logs of WARNING type is: " $(grep -c "WARNING" system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "EXCEPTION" system.log

echo -e "\nNumber of logs of EXCEPTION type is: " $(grep -c "EXCEPTION" system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "ERROR" system.log

echo -e "\nNumber of logs of ERROR type is: " $(grep -c "ERROR" system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "CRITICAL" system.log

echo -e "\nNumber of logs of CRITICAL type is: " $(grep -c "CRITICAL" system.log) #Command Substituion

echo -e "\n---------------------------------------------------------------"
echo -e "\n"

grep "FATAL" system.log

echo -e "\nNumber of logs of FATAL type is: " $(grep -c "FATAL" system.log) #Command Substituion

echo -e "\nANALYSIS COMPLETED!"