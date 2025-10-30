# User Management & Secure Baseline

**Folder:** `03-User-Management-&-Secure-Baseline`  
**Date:** 2025-10-30

## Goals
- Enable FileVault (note: record recovery key securely, do NOT commit).
- Turn on Firewall.
- Validate Gatekeeper and password policy basics.

## Prerequisites
- Admin rights.
- Willingness to reboot for FileVault enablement if necessary.

## Steps
1. **FileVault**: System Settings → Privacy & Security → FileVault → Turn On. Save recovery key offline.
2. **Firewall**: System Settings → Network → Firewall → Enable.
3. **Gatekeeper** status:
   ```bash
   spctl --status
   ```
4. Password policy sample (read-only peek):
   ```bash
   pwpolicy getaccountpolicies
   ```
5. Document baseline in `artifacts/baseline.md` with screenshots and commands used.

## Deliverables (commit these)
- `artifacts/baseline.md`
- Screenshots of FileVault enabled, Firewall enabled, `spctl --status`

## Screenshot Checklist
- `images/step01.png` – Before state / version info
- `images/step02.png` – Command output / settings pane
- `images/step03.png` – Confirmation / report generated
- `images/step04.png` – Any errors fixed (optional)
- `images/final.png` – Final validation
