```python

names = {1: 'Alice',
         2: 'Bob',
         3: 'Carl',
         4: 'Ann',
         5: 'Liz'}

def filter_dict(d, f):
    ''' Filters dictionary d by function f. '''
    newDict = dict()

    # Iterate over all (k,v) pairs in names
    for key, value in d.items():

        # Is condition satisfied?
        if f(key, value):
            newDict[key] = value

    return newDict


# FILTER BY KEY
print(filter_dict(names, lambda k,v: k%2 == 1))
print(filter_dict(names, lambda k,v: k%2 == 0))

# Filter Python Dictionary By Value Using filter() + Lambda Functions
print(dict(filter(lambda x: x[0]%2 == 1, names.items())))

# Filter Python Dictionary By Key Using Dictionary Comprehension
print({k:v for (k,v) in names.items() if k%2 == 0})
# {2: 'Bob', 4: 'Ann'}

# Filter Python Dictionary By Value Using Dictionary Comprehension
print({k:v for (k,v) in names.items() if v.startswith('A')})
# {1: 'Alice', 4: 'Ann'}

```

## SimpleNamespace

```py
# SimpleNamespace is a native package
from types import SimpleNamespace

stats = SimpleNamespace()
stats.foo = 3
stats.bar = 4

```