param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

if($serverName -like "*,*")
{
    $subServername = $serverName -split ","
    $server = $subServername[0]
    $port = $subServername[1]
    Write-Host($server)
    Write-Host($port)
    $miniConn = $server + ":" + $port
    Write-Host($miniConn)

    $conString = "jdbc:sqlserver://$miniConn;databaseName=$databaseName"
    Write-Host($conString)
}
else {
    $conString = "jdbc:sqlserver://$serverName;databaseName=$databaseName"
    Write-Host($conString)
}

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" info

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" migrate

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" info

