#!/usr/bin/env bash
set -euo pipefail

# === Website availability checker ===
# Usage:
#   chmod +x check_websites.sh
#   ./check_websites.sh
#
# The script checks a predefined list of websites with curl,
# follows redirects, and writes results to a log file.

LOG_FILE="website_status.log"

# List of websites to check
SITES=(
  "https://google.com"
  "https://facebook.com"
  "https://twitter.com"
)

# Clear (or create) the log file for this run.
: > "$LOG_FILE"

for url in "${SITES[@]}"; do
  # -L         follow redirects
  # -sS        silent but show errors
  # --max-time 10 seconds timeout
  # -o /dev/null discard body
  # -w         output only HTTP status code
  code=$(curl -L -sS --max-time 10 -o /dev/null -w "%{http_code}" "$url" || echo "000")

  if [[ "$code" == "200" ]]; then
    line="<${url}> is UP"
  else
    line="<${url}> is DOWN"
  fi

  echo "$line" | tee -a "$LOG_FILE" >/dev/null
done

echo "Результати записано у файл логів: ${LOG_FILE}"
