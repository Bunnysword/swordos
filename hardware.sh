#!/bin/bash
fastfetch --structure CPU:GPU --format json |
jq -r '
  [
    .[] |
    if .type == "CPU" then
      .result.cpu
    elif .type == "GPU" then
      .result[0].name
    else empty end
  ] | join(" | ")
'
