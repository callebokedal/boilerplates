# Building with python

## Create an environment
```bash
# macOS/Linux
$ mkdir myproject
$ cd myproject
$ python3 -m venv .virtualenv

# Windows
> mkdir myproject
> cd myproject
> py -3 -m venv .virtualenv
```

## Activate the environment
```bash
# macOS/LInux
$ . .virtualenv/bin/activate
# or
$ source .virtualenv/bin/activate

$ virtualenv -p python3 testproject

# Windows
> .virtualenv\Scripts\activate
```

## Upgrade virtual environment
```bash
python -m venv .virtualenv --upgrade
python -m venv /path/to/venv --upgrade
```


