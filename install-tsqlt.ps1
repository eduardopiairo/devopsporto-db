param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tSQLt.class.sql"