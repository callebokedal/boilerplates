# launchd

## Documentation
man launchd
man launchd.plist

https://www.launchd.info/
https://support.apple.com/guide/terminal/script-management-with-launchd-apdc6c1077b-5d5d-4d35-9c19-60f2397b2369/mac

```bash
# Folder                                Usage
/System/Library/LaunchDaemons           Apple-supplied system daemons
/System/Library/LaunchAgents            Apple-supplied agents that apply to all users on a per-user basis
/Library/LaunchDaemons                  Third-party system daemons
/Library/LaunchAgents                   Third-party agents that apply to all users on a per-user basis
~/Library/LaunchAgents                  Third-party agents that apply only to the logged-in user
```
Files must have mode set to 400 or 600

## daemons and services
https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/Introduction.html#//apple_ref/doc/uid/10000172i-SW1-SW1

## Examples
https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/TP40001762-104142

```bash
# Register
launchctl load com.example.somename.plist
# If placed in $HOME/Library/LaunchAgents it will run after boot

# Find
launchctl list | grep 'example'
sudo launchctl list | grep 'example'

# Verify
plutil <filename>

# Stop
launchctl unload com.example.somename.plist
launchctl unload ~HOME/Library/LaunchAgents/com.example.somename.plist 
# After reboot, you might need to enter full path
launchctl unload /Users/<user>/Library/LaunchAgents/com.example.somename.plist

# Remove
launchctl remove com.example.somename

# Check running
> launchctl list
PID Status  Label
659 0   com.apple.trustd.agent
-   0   com.apple.MailServiceAgent
-   0   com.apple.mdworker.mail
99270   0   com.apple.mdworker.shared.0E000000-0000-0000-0000-000000000000
-   0   com.apple.mdworker.shared.04000000-0000-0000-0000-000000000000
-   0   com.apple.appkit.xpc.ColorSampler
652 0   com.apple.cfprefsd.xpc.agent
-   0   com.apple.coreimportd
770 0   com.apple.TrustedPeersHelper
-   0   com.apple.SafariHistoryServiceAgent
1236    0   com.apple.progressd
3111    0   com.apple.cloudphotod
758 0   com.apple.Finder
693 0   com.apple.homed
-   78  com.ajsoft.a.mail

# Items with PID != <number> is not running, like
-   78  com.ajsoft.a.mail
```
