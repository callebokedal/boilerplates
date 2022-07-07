cd '..'='cd ..'
cd ll='ls -al'
# Search in history
h='function _(){ if [ $# -eq 0 ]; then history; else history | grep --color $1; fi }; _'
#h='function _(){ if [[ $# -eq 0 ]]; then history; else history | grep --color $1; fi }; _'
fn='find . -name '
# Display chmod as number
cnum='stat -f "%A"'
# Quick ping
qping='function _(){ ping -t2 -c2 $1 | grep -e "bytes from" -e "Request timeout"; }; _'