# Different examples

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


