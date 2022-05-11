# General Linux things

## bash and zsh
```bash
#!/bin/sh

# zsh
https://support.apple.com/en-us/HT208050
```

## Disk free
```bash
# Easiest
df -h
# On primay hard drive
df -h /
# Specific 
df -h /dev/sda2
```

## Disk usage
```bash
du -h
# Limit depth
du -h -d 2
# Human readable, max depth 2, max size 10M
du -h -d 2 -t 10M /somefolder
```

## Users and groups
```bash
# Check id for current user
id
# Check groups
groups
# Create group
sudo groupadd <groupname>
# Delete group
sudo groupdel <groupname>
# Add user to group
sudo usermod -a -G <groupname> <username>
sudo usermod -a -G sudo me
sudo usermod -a -G systemd-journal leffe
# Remove user from group
sudo gpasswd -d <groupname> <username>
```

## Repair sudoers
```bash
# 1. Create LiveCD (like Ubuntu Desktop and store on USB)
# 2. Boot from USB
# 3. Choose "Try Ubuntu"
# 4. Start terminal
# 5. Create temporary dir (in your home directory for example)
mkdir resuce
# 6. Find and mount root disk
fdisk -l # to see disk to mount (in this ex: /dev/sda5)
mount /dev/sda5 rescue/
# 7. Edit file
cd rescue/etc
sudo visudo sudoers
# 8. Make changes and save
# 9. Done. Remove USB and restart
```

# Keyboard settings
https://wiki.debian.org/Locale
```bash
# Check installed locales
locale -a

# To update
sudo nano /etc/locale.gen
# Make changes, and then
sudo locale-gen 
# Verify with 'locale -a'

localectl status

localectl list-locales
# C.UTF-8
# en_GB.UTF-8
# sv_SE.UTF-8

localectl list-x11-keymap-models
# => apple

localectl list-x11-keymap-layouts 
# => se

sudo udevadm trigger --subsystem-match=input --action=change

setupcon

# Bug(?) in Mac makes native terminal behave wrong (at least on Debian, but not Ubuntu!).
# Can be avoided by setting LC_CTYPE explicitly in .bashrc or .profile
cat .bashrc | grep LC_CTYPE
export LC_CTYPE="en_GB.UTF-8"
```