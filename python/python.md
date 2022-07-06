# python

## Versions
https://iscompatible.readthedocs.io/en/latest/

### Get versions
```bash
pip freeze > requirements.txt
# then
pip install -r requirements.txt
```

# Result of command in script
```py
import os
output = os.popen('ping -c 5 localhost')
while True:
    line = output.readline()
 
    if line:
        print(line, end='')
    else:
        break

 output.close()

# or
import os
output = os.popen('ping -c 5 localhost')
for line in output.readlines():
    print(line, end='')
output.close()

# Direct command
import os
output = os.popen('ls')
output.read()
output.close()
```
# With subprocess
https://codefather.tech/blog/shell-command-python/
```py
import subprocess
subprocess.run('date +%a', shell=True) 
```

# Write
```py
with open('command.out', 'w') as stdout_file:
    process_output = subprocess.run(['date', '+%a'], stdout=stdout_file, stderr=subprocess.PIPE, text=True)
    print(process_output.__dict__)
```

# Error handling
```py
import subprocess

try:
    process_output = subprocess.run(['date', '%a'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, check=True)
except subprocess.CalledProcessError:
    print("Error detected while executing the command")
```

# Multiple
```py
import subprocess
wc_awk_cmd = subprocess.run("wc -l test_file | awk '{print $1}'", shell=True)

# or
import subprocess, shlex
cmd = 'wc -l test_file'
wc_cmd = subprocess.run(shlex.split(cmd), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
print(wc_cmd.__dict__)
```

# With variables
```py
import os
echo_cmd = subprocess.run(['echo', os.path.expandvars("$SHELL")], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
print(echo_cmd.__dict__)

# ssh
import subprocess, shlex
cmd = "ssh -i ~/.ssh/id_rsa youruser@yourhost"
ssh_cmd = subprocess.Popen(shlex.split(cmd), stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
ssh_cmd.stdin.write("date")
ssh_cmd.stdin.close()
print(ssh_cmd.stdout.read())
```

# How to user requirements.txt
```bash
# Create
pip freeze > requirements.txt

# Create requirements.txt by searching files
pip install pipreqs
# and then
$ pipreqs /home/project/location
# Successfully saved requirements file in /home/project/location/requirements.txt

# Install, update or uninstall
pip install -r requirements.txt
pip install -U -r requirements.txt # Update according to versions in file
pip uninstall -r requirements.txt

# See outdated
pip list --outdated

# Upgrade one package
pip install -U <package-name>

# Check missing dependencies
python -m pip check

```