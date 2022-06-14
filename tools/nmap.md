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

# Scan open ports

## Scan (Fast) the most common ports:
nmap –F 192.168.0.1

## To scan all ports (1 – 65535):
nmap –p– 192.168.0.1 

## To scan using TCP connect (it takes longer, but is more likely to connect):
nmap –sT 192.168.0.1

## To perform the default SYN scan (it tests by performing only half of the TCP handshake):
nmap –sS 192.168.0.1

# Probe for services
nmap –sV 192.168.0.1

## Common ports
    21 – FTP
    22 – SSH
    25 – SMTP (sending email)
    53 – DNS (domain name service)
    80 – HTTP (web server)
    110 – POP3 (email inbox)
    123 – NTP (Network Time Protocol)
    143 – IMAP (email inbox)
    443 – HTTPS (secure web server)
    465 – SMTPS (send secure email)
    631 – CUPS (print server)
    993 – IMAPS (secure email inbox)
    995 – POP3 (secure email inbox)

    
```

## Links
https://www.networkstraining.com/nmap-commands-cheat-sheet/

