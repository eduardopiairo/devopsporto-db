param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

sqlcmd -S $serverName -d "master" -U $user -P $pass -i ".\tSQLt\sql\create-test-database.sql"