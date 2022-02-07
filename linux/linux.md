# General Linux things

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
# 5. Create temporary dir
mkdir resuce
# 6. Mount root disk
fdisk -l # to see disk to mount
# 7. Edit file
cd rescue/etc
sudo visudo sudoers
# 8. Make changes and save
# 9. Done. Remove USB and restart
```