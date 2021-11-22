# Docker

## Common commands
```bash
# List containers
docker ps

# Build
docker build .

# Build and tag
docker build -t my_tag .

# Run command
docker run --name ubuntu_bash --rm -i -t ubuntu bash # First create container and then start bash session
docker exec -d ubuntu_bash ls -al

# Run with specified working directory
docker exec -it -w /root ubuntu_bash pwd

# Restart container
docker restart [OPTIONS] CONTAINER [CONTAINER...]
docker restart my_container

# Remove one or more containers
docker rm redis
docker rm --force redis
```

### Docs
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/restart/
- https://docs.docker.com/engine/reference/commandline/rm/

# Docker Compose

## Start
```bash
docker-compose up # Will build also in not already an image
```

## To stop
```bash
ctrl+c
# or
docker-compose down
```

## To inspect/list
```bash
docker-compose ps
```
