##HomeWork 1

`alias rmdstop ='docker rm $(docker ps --filter "status=exited")' //delete stopped container`
`alias rmdotag ='docker rmi $(docker images | grep "^<none>" | awk \'{print $3}\')'`
`alias stopd ='docker stop $(docker ps -a -f status=running)'`

##HomeWork 2

Khi ta chạy `sudo docker run -it ubuntu /bin/bash` và kiểm tra trong pstree thì thấy bash được chạy ở `systemd/dockerd/docker-containe/docker-containe/bash`

##HomeWork 3
folder: HomeWork 3

##HomeWork 4
folder: HomeWork 4
