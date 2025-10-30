# System Audit & Inventory

**Folder:** `01-System-Audit-Inventory`  
**Date:** 2025-10-30

## Goals
- Collect hardware & OS facts (serial redacted), network interfaces, storage.
- Generate a single JSON and Markdown report.

## Prerequisites
- Admin user on macOS.
- Terminal access.

## Steps
1. Open Terminal.
2. Run basic inventory commands:
   ```bash
   sw_vers
   system_profiler SPHardwareDataType SPSoftwareDataType -detailLevel mini
   networksetup -listallhardwareports
   diskutil list
   df -h
   ```
3. Export to files:
   ```bash
   system_profiler -json SPHardwareDataType SPSoftwareDataType > artifacts/system_profile.json
   ifconfig > artifacts/ifconfig.txt
   ps aux > artifacts/ps_aux.txt
   ```
4. Create a Markdown summary `artifacts/audit_summary.md` describing key findings.
5. Redact serial numbers in screenshots with Preview markup before committing.

## Deliverables (commit these)
- `artifacts/system_profile.json`
- `artifacts/ifconfig.txt`
- `artifacts/ps_aux.txt`
- `artifacts/audit_summary.md`

## Screenshot Checklist
- `images/step01.png` – Before state / version info
- `images/step02.png` – Command output / settings pane
- `images/step03.png` – Confirmation / report generated
- `images/step04.png` – Any errors fixed (optional)
- `images/final.png` – Final validation
