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
* IP address
* System uptime
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
Uptime          : up 1 hour, 49 minutes

CPU
---
Model           : Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
Cores           : 2

MEMORY
------
Total           : 1.9Gi
Used            : 1.5Gi
Available       : 442Mi

DISK
----
Total           : 79G
Used            : 18G
Available       : 58G
Usage           : 24%

NETWORK
-------
IP Address      : 10.0.2.15

USERS
-----
Current User    : kali
Logged-in Users : kali
```

## Project Status

Completed as a beginner Linux and Bash scripting project.

This project is part of my learning journey in Linux, cloud computing, ethical hacking, and cybersecurity.

