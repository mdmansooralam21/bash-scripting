# Log File Analysis Using Bash Scripting

## 📌 Overview
This repository contains Bash scripts created for practicing log file analysis.  
The scripts analyze application and system log files to identify and count different error patterns, helping in understanding system behavior and troubleshooting issues.

The log files analyzed include:
- `application.log`
- `system.log`

## 🎯 Objective
The main goal of this project is to:
- Practice Bash scripting concepts
- Analyze log files efficiently using command-line tools
- Detect and count different types of error patterns in logs

## 🔍 Error Patterns Analyzed
The scripts scan the log files for the following error levels:
- `WARNING`
- `EXCEPTION`
- `ERROR`
- `CRITICAL`
- `FATAL`

Each script outputs the total count of each error type found in the log files.

## 🛠️ Tools & Technologies
- **Bash / Shell Scripting**
- Linux command-line utilities:
  - `grep`
  - `awk`
  - `sed`
  - `wc`

## 📂 Project Structure

.

├── application.log

├── system.log

├── log_analysis.sh

└── README.md

## ▶️ How to Run

`Note` This repository doesn't have the application.log and system.log

1. Clone the repository
2. Navigate to the project directory
3. Make the script executable
4. Run the script 
