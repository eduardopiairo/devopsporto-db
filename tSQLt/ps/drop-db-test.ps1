param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

#Invoke-Sqlcmd -ServerInstance $serverName -Database "master" -Username $user -Password $pass -InputFile ".\tSQLt\sql\drop-test-db.sql"

Write-Host $serverName
sqlcmd -S "$serverName" -d "master" -U $user -P $pass -i ".\tSQLt\sql\drop-test-db.sql"