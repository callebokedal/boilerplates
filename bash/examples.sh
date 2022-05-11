# Different examples
```bash
#!/bin/sh
```

# Streams
```bash
# The standard input stream (stdin): 0
# The standard output stream (stdout): 1
# The standard error stream (stderr): 2

# Redirect stderr to current location of stdout
ls > samplefile.txt 2>&1

# Redirecting stdout and stderr to a single file:
# All of the shells do not support this form redirection, but bash and Zsh support it. 
# Stdout and stderr can be redirected by utilizing the following syntax.
# Format: command &> out
cat sample.txt &> out
```


## SPF and mail
dig example.com txt | grep spf
nslookup example.com

## Loop lines of file
# File as parameter
file="${1}"

# Trimming leading whitespaces
# Skipping the last line if it's missing a terminating linefeed
while read p; do
  echo "$p"
done <"${file}"

# Get open files
lsof
# More efficient
# -n (inhibits the conversion of network numbers to host names for network files) 
# -P (inhibits the conversion of port numbers to port names for network files) to speed it up
lsof -nP


