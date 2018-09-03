param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass
    )

sqlcmd -b -S "$serverName" -d $databaseName -U $user -P $pass -i ".\tSQLt\sql\get-test-results.sql" -o "..\TestResults\TestResults.xml"