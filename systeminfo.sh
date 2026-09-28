#!/bin/bash

cat << 'EOF'
      ___           ___           ___           ___           ___           ___                                ___           ___           ___     
     /\  \         |\__\         /\  \         /\  \         /\  \         /\__\                   ___        /\__\         /\  \         /\  \    
    /::\  \        |:|  |       /::\  \        \:\  \       /::\  \       /::|  |                 /\  \      /::|  |       /::\  \       /::\  \   
   /:/\ \  \       |:|  |      /:/\ \  \        \:\  \     /:/\:\  \     /:|:|  |                 \:\  \    /:|:|  |      /:/\:\  \     /:/\:\  \  
  _\:\~\ \  \      |:|__|__   _\:\~\ \  \       /::\  \   /::\~\:\  \   /:/|:|__|__               /::\__\  /:/|:|  |__   /::\~\:\  \   /:/  \:\  \ 
 /\ \:\ \ \__\     /::::\__\ /\ \:\ \ \__\     /:/\:\__\ /:/\:\ \:\__\ /:/ |::::\__\           __/:/\/__/ /:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\
 \:\ \:\ \/__/    /:/~~/~    \:\ \:\ \/__/    /:/  \/__/ \:\~\:\ \/__/ \/__/~~/:/  /          /\/:/  /    \/__|:|/:/  / \/__\:\ \/__/ \:\  \ /:/  /
  \:\ \:\__\     /:/  /       \:\ \:\__\     /:/  /       \:\ \:\__\         /:/  /           \::/__/         |:/:/  /       \:\__\    \:\  /:/  / 
   \:\/:/  /     \/__/         \:\/:/  /     \/__/         \:\ \/__/        /:/  /             \:\__\         |::/  /         \/__/     \:\/:/  /  
    \::/  /                     \::/  /                     \:\__\         /:/  /               \/__/         /:/  /                     \::/  /   
     \/__/                       \/__/                       \/__/         \/__/                              \/__/                       \/__/    

EOF









echo "=========================================="
echo "       LINUX SYSTEM INFORMATION"
echo "=========================================="
echo "Name   : Shirin"
echo "Course : BCA (Bachelor of Computer Applications)"
echo "shirin35864@gmail.com"
echo "=========================================="
echo



# ========================================
# Linux System Information Script
# ========================================

echo "================================"
echo "       LINUX SYSTEM INFO"
echo "================================"

# --------------------
# System Information
# --------------------

hostname=$(hostname)

os=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

kernel=$(uname -r)

uptime_info=$(uptime -p)

echo ""
echo "SYSTEM"
echo "------"
echo "Hostname        : $hostname"
echo "Operating System: $os"
echo "Kernel          : $kernel"
echo "Uptime          : $uptime_info"

# --------------------
# CPU Information
# --------------------

cpu=$(cat /proc/cpuinfo | grep "model name" | head -1 | cut -d: -f2 | xargs)

cpu_cores=$(nproc)

echo ""
echo "CPU"
echo "---"
echo "Model           : $cpu"
echo "Cores           : $cpu_cores"

# --------------------
# Memory Information
# --------------------

memory_total=$(free -h | grep '^Mem:' | awk '{print $2}')
memory_used=$(free -h | grep '^Mem:' | awk '{print $3}')
memory_available=$(free -h | grep '^Mem:' | awk '{print $7}')

echo ""
echo "MEMORY"
echo "------"
echo "Total           : $memory_total"
echo "Used            : $memory_used"
echo "Available       : $memory_available"

# --------------------
# Disk Information
# --------------------

disk_total=$(df -h | grep ' /$' | awk '{print $2}')
disk_used=$(df -h | grep ' /$' | awk '{print $3}')
disk_available=$(df -h | grep ' /$' | awk '{print $4}')
disk_usage=$(df -h | grep ' /$' | awk '{print $5}')

echo ""
echo "DISK"
echo "----"
echo "Total           : $disk_total"
echo "Used            : $disk_used"
echo "Available       : $disk_available"
echo "Usage           : $disk_usage"

# --------------------
# Network Information
# --------------------

if ip route get 1.1.1.1 > /dev/null 2>&1; then
    network_status="Network is available"
    ip_address=$(ip route get 1.1.1.1 | awk '{for(i=1;i<=NF;i++) if($i=="src") print $(i+1)}')
else
    network_status="Network unavailable"
    ip_address="Network unavailable"
fi

echo ""
echo "NETWORK"
echo "-------"
echo "Status          : $network_status"
echo "IP Address      : $ip_address"

# --------------------
# User Information
# --------------------

current_user=$(whoami)
logged_users=$(who | awk '{print $1}' | sort -u)

echo ""
echo "USERS"
echo "-----"
echo "Current User    : $current_user"
echo "Logged-in Users : $logged_users"

# --------------------
# Shell Information
# --------------------

shell=$SHELL
bash_version=$BASH_VERSION

echo ""
echo "SHELL"
echo "-----"
echo "Shell           : $shell"
echo "Bash Version    : $bash_version"

# --------------------
# Process Information
# --------------------

process_count=$(ps aux --no-headers | wc -l)

echo ""
echo "PROCESSES"
echo "---------"

echo "Running Processes: $process_count"
