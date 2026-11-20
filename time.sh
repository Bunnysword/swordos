#!/bin/bash

# Uptime
uptime_sec=$(cut -d. -f1 /proc/uptime)
days=$((uptime_sec / 86400))
hours=$(((uptime_sec % 86400) / 3600))
minutes=$(((uptime_sec % 3600) / 60))

uptime="${days}d ${hours}h ${minutes}m"

# Возраст системы
install_date=$(stat -c %W / 2>/dev/null)
now=$(date +%s)

if [[ "$install_date" =~ ^[0-9]+$ ]] && ((install_date > 0)); then
    age="$(((now - install_date) / 86400))d"
else
    age="unknown"
fi

echo "UPTIME: $uptime | AGE: $age"

