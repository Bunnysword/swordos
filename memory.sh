#!/bin/bash

# RAM
read -r ram_used ram_total < <(
  fastfetch --structure Memory --format json |
  jq -r '.[] | select(.type == "Memory") |
    [.result.used, .result.total] | @tsv'
)

# Корневой раздел /
read -r root_total root_used < <(
  df -B1 --output=size,used / | tail -n 1
)

# Перевод в GiB
gib() {
  awk -v bytes="$1" 'BEGIN {
    printf "%.1f", bytes / 1073741824
  }'
}

echo "RAM: $(gib "$ram_used")/$(gib "$ram_total") GIB | ROOT: $(gib "$root_used")/$(gib "$root_total") GIB"
