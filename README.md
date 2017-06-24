# Template Project

Template for an Odoo project

# Prerequisites

On Ubuntu 16.04

* Install docker-engine and docker-compose: https://docs.docker.com/engine/installation/linux/ubuntulinux/

# Build your development environment

`$ ./dev.sh`

and start Odoo

`$ ./env/bin/odoo -c dev.conf`

# Build the Odoo image

```
$ docker build -t odoo .
```

# Push it to registry

```
$ docker push
```

# Push the Odoo image to the production server

On the production system:

```
$ zcat /tmp/odoo.tgz | docker load
```

# Start the production environment

`$ docker-compose up -d`