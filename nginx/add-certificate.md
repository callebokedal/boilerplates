From:
https://www.johnmackenzie.co.uk/posts/using-self-signed-ssl-certificates-with-docker-and-nginx/

```openssl req -newkey rsa:2048 -nodes -keyout nginx/example.com.key -x509 -days 365 -out nginx/example.com.crt```
+ Some info
Added

```bash
# example.com.conf (or corresponding) 
# ...
    server {
        listen         443 ssl;
        server_name    example.com;
        ssl_certificate     /etc/nginx/example.com.crt;
        ssl_certificate_key /etc/nginx/example.com.key;
        root /usr/share/nginx/html;
    }
# ...

# docker-compose.yaml
services:
  web: # Will create image 'xxx_web'
    build: nginx  # See Dockerfile in 'nginx' folder
    volumes:
    # Other config
      - ./nginx/example.com.crt:/etc/nginx/example.com.crt 
      - ./nginx/example.com.key:/etc/nginx/example.com.key
# ...

# .gitignore
nginx/*.crt
nginx/*.key
```