# hub.docker.com/tiredofit/cpuminer

# Introduction

Dockerfile to build an CPU Miner for mining Bytecoin or Monero, or any other cryptocurrency that uses the cryptonight algorithm.

* This Container uses a [customized Debian Alpine base](https://hub.docker.com/r/tiredofit/alpine) which includes [s6 
overlay](https://github.com/just-containers/s6-overlay) enabled for PID 1 Init capabilities, [zabbix-agent](https://zabbix.org) based 
on 3.4 compiled for individual container monitoring, Cron also installed along with other tools (bash,curl, less, logrotate, nano, 
vim) for easier management. It also supports sending to external SMTP servers..



[Changelog](CHANGELOG.md)

# Authors

- [Dave Conroy](https://github.com/tiredofit/)

# Table of Contents

- [Introduction](#introduction)
    - [Changelog](CHANGELOG.md)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Configuration](#configuration)
    - [Data Volumes](#data-volumes)
    - [Environment Variables](#environmentvariables)   
- [Maintenance](#maintenance)
    - [Shell Access](#shell-access)
   - [References](#references)

# Prerequisites

None

# Installation

Automated builds of the image are available on [Registry](https://hub.docker.com/tiredofit/insync) and is the recommended method of 
installation.


```bash
docker pull hub.docker.com/tiredofit/cpuminer
```


# Quick Start

* The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/). See the examples folder for a working 
[docker-compose.yml](examples/docker-compose.yml) that can be modified for development or production use.

* Set various [environment variables](#environment-variables) to understand the capabilities of this image.


# Configuration

### Data-Volumes

No Data Volumes Required 
### Environment Variables

Along with the Environment Variables from the [Base image](https://hub.docker.com/r/tiredofit/alpine), below is the complete list of 
available options that can be used to customize your installation.

| Parameter | Description |
|-----------|-------------|
| `ALGORITHM` | Currently only supprting `cryptonight`
| `HOST` | Host and port of Server to connect to ie `xmr.pool.minergate.com:45560` |
| `USER` | Your username (email address or wallet) |
| `PASS` | Your password (or blank)
| `THREADS` | How many threads to use - Default `2` |

### Networking

No Ports Exposed

# Maintenance
#### Shell Access

For debugging and maintenance purposes you may want access the containers shell. 

```bash
docker exec -it (whatever your container name is e.g. cpuminer) bash
```

# References



