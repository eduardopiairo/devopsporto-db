param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

Invoke-Sqlcmd -ServerInstance $serverName -Database "master" -Username $user -Password $pass -InputFile ".\tSQLt\sql\drop-test-db.sql"