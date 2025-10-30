# Logging & Telemetry

**Folder:** `04-Logging-&-Telemetry`  
**Date:** 2025-10-30

## Goals
- Explore Unified Logging with `log`.
- Enable and sample `auditd`.
- Intro to `osquery` (if installed) or document plan to install later.

## Prerequisites
- Terminal access.
- Admin rights for audit control.

## Steps
1. Unified log queries:
   ```bash
   log show --style syslog --last 1h > artifacts/last1h_syslog.txt
   log show --predicate 'subsystem == "com.apple.runningboard"' --last 20m > artifacts/runningboard_20m.txt
   ```
2. Audit framework quick start:
   ```bash
   sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.auditd.plist
   sudo cat /etc/security/audit_control > artifacts/audit_control.txt
   sudo audit -s
   sudo praudit /var/audit/`ls -t /var/audit | head -n 1` | head -n 200 > artifacts/audit_sample.txt
   ```
3. If you choose to install osquery later, create `artifacts/osquery_plan.md` describing tables you’d query (processes, listening_ports, startup_items).

## Deliverables (commit these)
- `artifacts/last1h_syslog.txt`
- `artifacts/runningboard_20m.txt`
- `artifacts/audit_control.txt`
- `artifacts/audit_sample.txt`
- Optional: `artifacts/osquery_plan.md`

## Screenshot Checklist
- `images/step01.png` – Before state / version info
- `images/step02.png` – Command output / settings pane
- `images/step03.png` – Confirmation / report generated
- `images/step04.png` – Any errors fixed (optional)
- `images/final.png` – Final validation
