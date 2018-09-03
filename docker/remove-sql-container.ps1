param(
        [Parameter(Mandatory=$true)][string]$containerName
    )

docker container stop $containerName stop

docker container rm $containerName