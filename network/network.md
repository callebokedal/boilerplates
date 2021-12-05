# Network stuff

## Route tables

```bash
# Route table in Windows
route print

# Route table in Linux and Mac
netstat -r
netstat -rn
```

## Package sniffing

```bash

# Listen - Mac
sudo tcpdump -i BSDname -s 0 -B 524288 -w ~/Desktop/DumpFile01.pcap

# View - Mac
tcpdump -s 0 -n -e -x -vvv -r ~/Desktop/DumpFile01.pcap
```

## Find process (PID) for specific port
```bash
netstat -anv | grep <port>
# Example
netstat -anv | grep <port> | awk 'BEGIN{FS=" "}{print $4,$5,$6,$9}'
127.0.0.1.<port> 127.0.0.1.12345 ESTABLISHED 82
127.0.0.1.12345 127.0.0.1.<port> ESTABLISHED 356
127.0.0.1.<port> *.* LISTEN 82
```

## Find the Process Name (given the PID)
```bash
# 
ps -Ao user,pid,command | grep -v grep | grep ' <port> '
```

## 