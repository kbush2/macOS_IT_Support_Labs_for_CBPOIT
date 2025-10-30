#!/bin/zsh
# mac_health_check.sh - Collects a quick macOS health snapshot
# Usage: ./mac_health_check.sh
set -e

OUTDIR="artifacts"
mkdir -p "$OUTDIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# JSON file
JSON="$OUTDIR/health_${DATE}.json"
# HTML file
HTML="$OUTDIR/health_${DATE}.html"

HOSTNAME=$(scutil --get ComputerName 2>/dev/null || hostname)
OS_VER=$(sw_vers -productVersion)
KERNEL=$(uname -a)
UPTIME=$(uptime)
DISK=$(df -h / | tail -1)
MEM=$(vm_stat | awk 'BEGIN{FS="[: ]+"} /free/ {print $3}')
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "N/A")

cat > "$JSON" <<EOF
{
  "hostname": "${HOSTNAME}",
  "os_version": "${OS_VER}",
  "kernel": "${KERNEL}",
  "uptime": "${UPTIME}",
  "disk_root": "${DISK}",
  "free_mem_pages": "${MEM}",
  "ip_guess": "${IP}",
  "timestamp": "${DATE}"
}
EOF

cat > "$HTML" <<EOF
<!doctype html>
<html><head><meta charset="utf-8"><title>Mac Health Report</title></head>
<body>
<h1>Mac Health Report</h1>
<ul>
<li><b>Host:</b> ${HOSTNAME}</li>
<li><b>OS:</b> ${OS_VER}</li>
<li><b>Uptime:</b> ${UPTIME}</li>
<li><b>IP:</b> ${IP}</li>
</ul>
<p>Generated at ${DATE}</p>
</body></html>
EOF

echo "Wrote $JSON and $HTML"
