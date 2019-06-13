# DOCKER HOW TO

## PULL image

### SQL Server for Linux

```powershell
docker pull microsoft/mssql-server-linux:2017-latest
```

### SQL Server for windows

```powerShell
docker pull microsoft/mssql-server-windows-developer:latest
```

## LIST images

```powershell
docker image ls
```

## RUN containers

```powershell
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=eduardoPi.83" -p 1533:1433 --name sqlinux -d microsoft/mssql-server-linux:2017-latest
```

## STOP container

```powershell
docker container stop sqlinux
```

## REMOVE container

```powershell
docker container rm sqlinux
```

## REMOVE all unused objects

The prune command will remove all stopped containers, all dangling images, and all unused networks.

```powershell
docker system prune
```

## LIST containers

```powershell
docker container ls
```


## CONN

connection string = 10.0.75.1,1533