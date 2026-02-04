# Facter-PrivEsc
Bash script to exploit a privilege escalation vulnerability in systems using Facter. Automates the creation of a malicious payload that, when executed, opens a shell with elevated privileges. Useful tool for security audits and penetration testing in authorized environments.

# Facter PrivEsc Exploit

This repository contains a **bash** script to exploit a privilege escalation vulnerability through **Facter**.

---

## ⚠️ Warning

This script is intended only for **ethical, educational use in controlled environments**.  
We are not responsible for any misuse or damages caused.

---

## Description

The script creates a malicious file at `/tmp/facts/root.rb` that exploits Facter’s functionality to execute a shell with elevated privileges.

---

## Requirements

- Linux system with **bash**.
- **Facter** installed on the system.
- Permissions to run commands with `sudo`.
- Permission to create files in `/tmp`.

---

## Usage

```bash
# Clone the repository
git clone https://github.com/ch3m1cl/Facter-PrivEsc

# Enter the directory
cd Facter-PrivEsc

# Give execution permissions
chmod +x facter.sh

# Run the script
./facter.sh
