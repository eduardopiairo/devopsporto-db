param(
        [Parameter(Mandatory=$true)][int]$containerPort,
        [Parameter(Mandatory=$true)][string]$containerName,
        [Parameter(Mandatory=$true)][string]$containerPassword
    )

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$containerPassword" -p $containerPort:1433 --name $containerName -d microsoft/mssql-server-linux:2017-latest
