# Linux System Information Script

A beginner-friendly Bash script that collects and displays basic information about a Linux system.

## What it does

This script collects and displays basic information about the Linux system, including:

* Hostname
* Operating system
* Kernel version
* CPU model
* Number of CPU cores
* Memory usage
* Disk usage
* Network status
* IP address
* System uptime
* Shell
* Bash version
* Number of running processes
* Current user
* Logged-in users

## What I learned

This project was built as a beginner project while learning Linux and Bash scripting.

Through this project, I practiced:

* Navigating the Linux terminal
* Creating and running Bash scripts
* File permissions
* Variables in Bash
* Command substitution
* Pipes (`|`)
* `grep`
* `awk`
* `cut`
* `sort`
* `xargs`
* Basic `if/else` statements
* Redirecting command output
* Checking network connectivity
* Environment variables
* Linux processes
* Using `ps` and `wc`
* Testing Bash scripts

## Requirements

* Linux system
* Bash
* Basic Linux command-line environment

This project was developed and tested on Kali Linux running inside VirtualBox.

## How to run

Navigate to the project directory:

```bash
cd linuxproject
```

Make the script executable:

```bash
chmod +x systeminfo.sh
```

Run the script:

```bash
./systeminfo.sh
```
## Example Output

```text
================================
       LINUX SYSTEM INFO
================================

SYSTEM
------
Hostname        : kali
Operating System: Kali GNU/Linux Rolling
Kernel          : 6.19.14+kali-amd64
Uptime          : up 46 minutes

CPU
---
Model           : Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
Cores           : 2

MEMORY
------
Total           : 1.9Gi
Used            : 1.4Gi
Available       : 511Mi

DISK
----
Total           : 79G
Used            : 18G
Available       : 58G
Usage           : 23%

NETWORK
-------
Status          : Network is available
IP Address      : 10.0.2.15

USERS
-----
Current User    : kali
Logged-in Users : kali

SHELL
-----
Shell           : /usr/bin/zsh
Bash Version    : 5.3.9(1)-release

PROCESSES
---------
Running Processes: 191
```

## Project Status

Completed as a beginner Linux and Bash scripting project.

This project is part of my learning journey in Linux, cloud computing, ethical hacking, and cybersecurity.


## Author

Created by Shirin as a part of my journey of learning Linux, Bash scripting, cloud computing, ethical hacking and cybersecurity
