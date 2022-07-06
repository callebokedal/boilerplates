# jq

```bash
# query all
> echo file.json | jq .

# Extract property value - "outdated" in this example
> echo file.json | jq .outdate

> # we'd like to extract only the second part of buildtime '2020-01-29T12:46:05.183Z'
> jq '.checks[].data.buildtime | select(. != null) | split("T") | last' file.json
12:46:05.183Z

# If root a list
echo list.json | jq '.[]' 
echo list.json | jq '.[].property' 
echo list.json | jq '.[3].property' 

# If root an object
echo object.json | jq '.' 
echo object.json | jq '.property' 
```

# Common errors
```bash
# Error
... Cannot index array with string "<property>"
# Solution
See difference between root as list vs. object above.
```

# Resources

- https://schoeffm.github.io/posts/jq-by-example/