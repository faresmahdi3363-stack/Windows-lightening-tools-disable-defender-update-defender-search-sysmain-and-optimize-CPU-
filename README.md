## This folder contains three optimization scripts:

Disable_Defender_Full.bat

Disable-Update.bat

Optimize_CPU_Disable_Defender_Search_SysMain.reg

## These files are designed to reduce background load on older systems by disabling some Windows services.

## ⚠️ Important: These scripts modify critical system components such as Windows Defender and Windows Update.

## ⚠️ Risks and Warnings

Security Risk: Disabling Defender and Update may expose your computer to malware, ransomware, and exploits.

System Instability: Registry edits and service change cause errors, or prevent updates.

Hosting Restrictions: Sharing or uploading such scripts may result in account deletion or suspension on public platforms (e.g. GitHub, Telegram).

Liability: Use at your own risk. Do not run these on operating systems or PCs with sensitive data.

## 🧰 Pre-run safety checklist

Create a system restore point.

Export your registry: To back it up, run regedit → File → Export.

Review the scripts: Open the .bat and .reg files in Notepad to make sure you understand each command.

Avoid admin user accounts for testing if possible.

## 🧩 File description
1️⃣ Disable_Defender_Full.bat

Disables Windows Defender and related background services (WinDefend, SysMain, WSearch) using the sc and reg add commands.

2️⃣ Disable-Update.bat

Stops and disables Windows Update (wuauserv) and Background Intelligent Transfer Service (BITS) using sc stop and net stop.

3️⃣ Optimize_CPU_Disable_Defender_Search_SysMain.reg

A registry file that disables Real-Time Protection, Windows Search, and SysMain (Superfetch) services by editing startup values.

🔄 Safe Testing Method

Take a snapshot if testing inside a virtual machine.

Back up your system and registry.

Run one file at a time, not all at once.

Reboot after each script to verify the changes.

Monitor CPU usage and services status via Task Manager and Services.msc.

Restore the system or import your saved registry file if you encounter problems.

## 🔁 Rollback

Use System Restore or your exported registry backup to roll back the edits.

If services remain disabled, set their startup type to "Automatic" via services.msc.

## telegram
https://t.me/CodeHub3363
