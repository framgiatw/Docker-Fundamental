Ex1
Delete all stopped containers: docker rm $(docker ps -a -q)

Delete docker images that have no tag: docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

Stop all running container: docker stop $(docker ps -a -q)


Ex2
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
        ├─avahi-daemon───avahi-daemon
        ├─colord─┬─{gdbus}
        │        └─{gmain}
        ├─cron
        ├─cups-browsed─┬─{gdbus}
        │              └─{gmain}
        ├─dbus-daemon
        ├─dockerd─┬─docker-containe─┬─docker-containe─┬─bash
        │         │                 │                 └─9*[{docker-containe}]
        │         │                 └─13*[{docker-containe}]
        │         └─12*[{dockerd}]


container ubuntu:16.04 run by /bin/bash in docker-container of dockerd

