# x2go-client
## _Just an x2goclient from a Docker container_

## Actual Features
 - Run x2goclient from Docker container
 - Saved sessions (in mounted volumen)

## How to run
>` Note: For now, the container is in alpha version, works but may have some issues`

**_Next line needed to access HOST X11 SERVER (graphs)_**
```bash
xhost +
```
**_Next line needed if you need to make sessions persistent (recommended)_**
```bash
mkdir ./data
```

**_And run the container:_**
```bash
 docker run -it --rm  \
    -e DISPLAY=${DISPLAY} \
    -e XAUTHORITY=/tmp/.Xauthority \
    -v $(pwd)/data:/root/.x2goclient \
    -v /tmp/.X11-unix:/tmp/.X11-unix  \
    --hostname x2go-client01 caimandepamer/x2go-client
```


## Links:

| Hub | Link |
| ------ | ------ |
| DockerHub | [caimandepamer/x2go-client][lnkDk] |
| GitHub | [ caimandepamer/x2go-client][lkGh] |

[lnkDk]: <https://hub.docker.com/r/caimandepamer/x2go-client>
[lkGh]: <https://github.com/caimandepamer/x2go-client>


## Example of use:

![demo01](https://raw.githubusercontent.com/caimandepamer/x2go-client/main/LP_Selection_069.png)



## Comming Features
 - No root as runner
 - Web vnc interfase
 - Less size (now is about 200mb!!, sorry for that...)


## License

GPL-3

**Free Software, Hell Yeah!**



