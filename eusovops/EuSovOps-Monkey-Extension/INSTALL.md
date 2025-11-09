# EuSovOps-Monkey Installation Guide

## About
EuSovOps-Monkey is an internal userscript manager based on ViolentMonkey v2.31.1, customized for EuSovOps team use.

**Important Note:** This extension uses Manifest V2, which Chrome still supports for:
- Developer mode / unpacked extensions (what you're using)
- Enterprise policies (perfect for internal company use)
- Extensions loaded via ExtensionInstallForcelist policy

Chrome will continue supporting V2 extensions loaded this way indefinitely for enterprise customers.

## Installation Steps

### 1. Open Chrome Extensions Page
- Open Google Chrome
- Navigate to `chrome://extensions/`
- Or click the three-dot menu → More tools → Extensions

### 2. Enable Developer Mode
- In the top-right corner, toggle **Developer mode** to ON

### 3. Load the Extension
- Click the **Load unpacked** button
- Navigate to and select this folder: `/Users/mbugaciu/src/coding/eusovops-monkey/EuSovOps-Monkey-Extension`
- Click **Select Folder** (or **Open** on Mac)

### 4. Verify Installation
- You should see "EuSovOps-Monkey" in your extensions list
- The extension icon should appear in your Chrome toolbar
- Click the icon to open the popup and verify it works

### 5. Optional: Pin the Extension
- Click the puzzle piece icon in Chrome toolbar
- Find "EuSovOps-Monkey" in the list
- Click the pin icon to keep it visible

## For IT Administrators

To deploy this extension company-wide using Chrome Enterprise policies:

1. Host the extension folder on a network drive accessible to all users
2. Use the **ExtensionInstallForcelist** policy to auto-install
3. Example policy (add to your Chrome GPO or Intune policy):
   ```
   ExtensionInstallForcelist = ["path/to/EuSovOps-Monkey-Extension"]
   ```

This ensures all team members have the extension without manual installation.

## Using Your Scripts

All your existing ViolentMonkey/TamperMonkey scripts will work perfectly. You can:

- Install userscripts from URLs
- Create new scripts from scratch
- Edit existing scripts
- Enable/disable scripts per site
- Manage script settings and permissions
- Export/import scripts

## Why Manifest V2?

- **Enterprise Support**: Chrome explicitly supports V2 for enterprise deployments
- **Full Compatibility**: All ViolentMonkey features work without modification
- **No Expiry**: Unlike Chrome Web Store extensions, internally-loaded extensions can use V2 indefinitely
- **Proven Stability**: V2.31.1 is a mature, tested release

## Troubleshooting

### Extension Not Loading
- Make sure Developer mode is enabled
- Check that you selected the correct folder containing `manifest.json`
- Try clicking "Reload" button on the extension card

### Scripts Not Running
- Check if the extension icon shows the script count
- Click the icon and verify scripts are enabled
- Check browser console (F12) for any errors

### Permission Warnings
- The extension requires broad permissions to inject scripts on all websites
- This is normal and necessary for userscript managers to function

## Support

This is an internal tool for EuSovOps team only. For issues, contact your team administrator.

## Version

Current version: 2.31.1 (based on ViolentMonkey)
Manifest: V2 (Enterprise-compatible)
Compatible with: Chrome 61+
