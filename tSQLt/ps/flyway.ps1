param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

$conString = "jdbc:sqlserver://$serverName;databaseName=$databaseName"

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" info

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" migrate

.\devopsporto-db\flyway.cmd -user="$user" -password="$pass" -url="$conString" info

