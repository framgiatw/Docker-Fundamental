# Framgia Training Workshop - Docker-Fundamental
## Homework answer (Group 5)

### Homework 1

- Delete all stopped containers
```bash
function docker_stop_container {
    containers=$(docker ps -a | awk '$5 ~ /Exited/ {print $1}')
    if [ $containers ]; then
        docker rm $containers
        echo "Deleted all stop containers"
    else
        echo "No container is stopped"
    fi
}
alias dkrm-stop='docker_stop_container'
#Or 
alias dcrm-stop='docker ps --filter "status=exited" -q | xargs --no-run-if-empty docker rm'
```

- Delete docker images that have no tag
```bash
function docker_images_none {
    images=$(docker images -a | awk '$2 ~ /<none>/ {print $3}')
    if [ $images ]; then
        docker rmi $images
        echo "Deleted all images that have no tag"
    else
        echo "No image have no tag"
    fi
}
alias dkrm-notag='docker_images_none'
#Or
alias dcrm-notag='docker images --filter "dangling=true" --quiet | xargs --no-run-if-empty docker rmi'
```

- Stop all running containers
```bash
function docker_stop_container {
    containers=$(docker ps | awk '$1 != "CONTAINER" {print $1}')
    if [ $containers ]; then
        docker stop $containers
        echo "Stopped all running containers"
    else
        echo "No container running"
    fi
}
alias dkstop-ctn='docker_stop_container'
#Or 
alias dcstop-ctn='docker ps -a --filter "status=running" --quiet | xargs --no-run-if-empty docker stop'
```

## Homework 2
    - pstree : show tree of process . Branch dockerd have process which runs inside the system.
    - pstree $(pgrep dockerd) : show quick list of whats running under dockerd.
    - pstree -apS $(pgrep dockerd) : Show all children of docker (include pid)
    - pstree -aps 3700 : show parents of PID . if it in branch dockerd then it running inside doker container

## Homework 3
    Folder Homework3

## Homework 4
    Folder Homework4
