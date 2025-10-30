# macOS IT Support & Security Labs (CBP OIT Prep)

**Author:** Your Name (replace)  
**Date Initialized:** 2025-10-30  
**Target Role:** DHS/CBP OIT – IT Support / Endpoint Admin / Analyst  
**Platform:** macOS (Apple laptop). *(Note: iOS is for iPhone/iPad; on a Mac you’re using **macOS**.)*

## What’s here
Hands-on labs aligned to enterprise macOS support & security competencies you’ll likely use in a federal environment: baselining, user/device management, logging & telemetry, endpoint protections, scripting/automation, and incident response triage.

> Tip: After completing each lab, push commits with clear messages and include screenshots in the `images/` subfolder of the lab.

## Labs
1. **01-System-Audit-Inventory** – Collect hardware/software inventory, create a clean audit report.  
2. **02-Homebrew-CLI-Toolkit** – Install developer tools and build a standardized CLI toolkit.  
3. **03-User-Management-&-Secure-Baseline** – Enforce FileVault, firewall, Gatekeeper; password policy basics.  
4. **04-Logging-&-Telemetry** – Unified logging, `auditd`, and `osquery` intro; export artifacts.  
5. **05-Built-in-Endpoint-Security** – Validate XProtect/Gatekeeper/SIP status; test quarantine flow safely.  
6. **06-zsh-Scripting-Automations** – Write a `mac_health_check.sh` that outputs a JSON & HTML report.  
7. **07-Configuration-Profiles** – Create/apply a `.mobileconfig` with `profiles` CLI to simulate MDM.  
8. **08-Incident-Response-Mini** – Triage package: running processes, persistence, network, quarantine, logs.

## How to use
- Complete labs in order.  
- Replace `YOUR_SCREENSHOT.png` placeholders with your own.  
- Commit early and often with descriptive messages.  
- Keep sensitive data out of screenshots (usernames, IPs, serials if needed redact).

## Repo structure
```
macOS_IT_Support_Labs_for_CBPOIT/
  01-System-Audit-Inventory/
  02-Homebrew-CLI-Toolkit/
  03-User-Management-&-Secure-Baseline/
  04-Logging-&-Telemetry/
  05-Built-in-Endpoint-Security/
  06-zsh-Scripting-Automations/
  07-Configuration-Profiles/
  08-Incident-Response-Mini/
  README.md
```

## Evidence Rubric (what recruiters/managers look for)
- **Reproducibility:** Steps, commands, and expected outputs.  
- **Artifacts:** Reports, logs, scripts, configs committed to repo.  
- **Screenshots:** Key UI/CLI proof with captions.  
- **Reflection:** “What I learned,” blockers, and next steps.  
