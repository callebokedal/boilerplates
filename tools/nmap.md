# nmap

## Commands
```bash
# Scan hosts on a network
nmap -sn 192.168.0.0/24 
# Print only selection of output
nmap -sn 192.168.0.0/24 | awk '/Nmap scan /{gsub(/[()]/,"",$NF): print $5" "$NF}'

# Scan speficic ports on network/range
nmap -p 80,443 8.8.8.8
nmap -p 80,443 192.168.0.0/24
```

## Links
https://www.networkstraining.com/nmap-commands-cheat-sheet/

