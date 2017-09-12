# Homework

## Homework 1
Write bash aliases that:
- Delete all stopped containers
```bash

    function deleteAllStoppedContainers() {
        docker ps --filter "status=exited" -q | xargs --no-run-if-empty docker rm
    }
    alias dasc=deleteAllStoppedContainers
```

- Delete docker images that have no tag
```bash

    function deleteAllImagesNoTag() {
        docker images --filter "dangling=true" --quiet | xargs --no-run-if-empty docker rmi
    }
    alias daint=deleteAllImagesNoTag
```


- Stop all running containers
```bash

    function deleteAllRunningContainers() {
        docker ps --all --filter "status=running" --quiet | xargs --no-run-if-empty docker stop
    }
    alias darc=deleteAllRunningContainers
```

## Homework 2

```bash
$ pstree

```
    
    systemd─┬─ModemManager─┬─{gdbus}
            │              └─{gmain}
            ├─NetworkManager─┬─dhclient
            │                ├─dnsmasq
            │                ├─{gdbus}
            │                └─{gmain}
            ├─accounts-daemon─┬─{gdbus}
            │                 └─{gmain}
            ├─acpid
            ├─agetty
            ├─apache2───5*[apache2]
            ├─avahi-daemon───avahi-daemon
            ├─bluetoothd
            ├─colord─┬─{gdbus}
            │        └─{gmain}
            ├─cron
            ├─cups-browsed─┬─{gdbus}
            │              └─{gmain}
            ├─cupsd
            ├─dbus-daemon
            ├─dockerd─┬─docker-containe─┬─docker-containe─┬─mysqld───26*[{mysqld}]
            │         │                 │                 └─9*[{docker-containe}]
            │         │                 ├─docker-containe─┬─redis-server───3*[{redis-server}]
            │         │                 │                 └─10*[{docker-containe}]
            │         │                 ├─docker-containe─┬─bash
            │         │                 │                 └─8*[{docker-containe}]
            │         │                 ├─docker-containe─┬─mysqld───28*[{mysqld}]
            │         │                 │                 └─9*[{docker-containe}]
            │         │                 ├─docker-containe─┬─nginx───4*[nginx]
            │         │                 │                 └─9*[{docker-containe}]
            │         │                 ├─docker-containe─┬─php-fpm───2*[php-fpm]
            │         │                 │                 └─10*[{docker-containe}]
            │         │                 └─19*[{docker-containe}]
            │         ├─docker-proxy───7*[{docker-proxy}]
            │         └─24*[{dockerd}]
            ├─fwupd─┬─3*[{GUsbEventThread}]
            │       ├─{fwupd}
            │       ├─{gdbus}
            │       └─{gmain}
            ...

```bash
    pstree -apS $(pgrep dockerd)
```
    Show all children of docker, including namespace changes


```bash
    pstree -aps 3744
```
    Show the parents of a PID 

## Homework 3

Dockerfile:
```
    FROM python:3

    MAINTAINER GROUP 1

    RUN apt-get install -qy python3

    RUN apt-get install -qy python3-pip

    RUN mkdir -p venv

    COPY requirements.txt /venv/requirements.txt
    
    WORKDIR /venv

    RUN pip-3.3 install -r requirements.txt

    RUN pip-3.3 install .

    EXPOSE 5000

    CMD myapp --port 5000

    ...
```

## Homework 4
