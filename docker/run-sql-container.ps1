param(
        [Parameter(Mandatory=$true)][string]$containerName,
        [Parameter(Mandatory=$true)][string]$containerPass
    )

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$containerPass" -p 1533:1433 --name $containerName -d microsoft/mssql-server-linux:2017-latest
