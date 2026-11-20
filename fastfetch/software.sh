fastfetch --structure OS:Kernel --format json |
jq -r '
  [
    .[] |
    if .type == "OS" then
      .result.name
    elif .type == "Kernel" then
      "Linux \(.result.release)"
    else empty end
  ] | join(" | ")
'
