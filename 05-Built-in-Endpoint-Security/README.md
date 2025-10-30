# Built-in Endpoint Protections

**Folder:** `05-Built-in-Endpoint-Security`  
**Date:** 2025-10-30

## Goals
- Validate the status of XProtect, Gatekeeper, SIP.
- Observe quarantine attribute flow (safe test file).

## Prerequisites
- Terminal access.

## Steps
1. System Integrity Protection (read-only unless recovery mode):
   ```bash
   csrutil status
   ```
2. Quarantine attribute test:
   ```bash
   curl -o artifacts/testfile.txt https://example.com
   xattr artifacts/testfile.txt
   ```
   Document `com.apple.quarantine` if present.
3. Create `artifacts/protection_status.md` summarizing findings.

## Deliverables (commit these)
- `artifacts/testfile.txt`
- `artifacts/protection_status.md`
- Screenshots of `csrutil status` and `xattr` output

## Screenshot Checklist
- `images/step01.png` – Before state / version info
- `images/step02.png` – Command output / settings pane
- `images/step03.png` – Confirmation / report generated
- `images/step04.png` – Any errors fixed (optional)
- `images/final.png` – Final validation
