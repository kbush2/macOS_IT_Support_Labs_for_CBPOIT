# Homebrew & CLI Toolkit

**Folder:** `02-Homebrew-CLI-Toolkit`  
**Date:** 2025-10-30

## Goals
- Install Xcode CLTs and Homebrew.
- Install core tools: git, jq, wget, htop, nmap, python3.
- Configure PATH and verify.

## Prerequisites
- Internet connectivity.
- Terminal access.

## Steps
1. Install Xcode Command Line Tools (if prompted):
   ```bash
   xcode-select --install
   ```
2. Install Homebrew:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
3. Add brew to PATH (follow on-screen caveats), then:
   ```bash
   brew update && brew doctor
   brew install git jq wget htop nmap python
   ```
4. Verify versions:
   ```bash
   git --version; jq --version; python3 --version
   ```
5. Export a package list:
   ```bash
   brew list --versions > artifacts/brew_list.txt
   ```

## Deliverables (commit these)
- `artifacts/brew_list.txt`
- Screenshot of `brew doctor` clean output

## Screenshot Checklist
- `images/step01.png` – Before state / version info
- `images/step02.png` – Command output / settings pane
- `images/step03.png` – Confirmation / report generated
- `images/step04.png` – Any errors fixed (optional)
- `images/final.png` – Final validation
