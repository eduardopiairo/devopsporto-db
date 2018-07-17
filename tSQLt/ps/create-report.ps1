param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )


SQLCMD.EXE -E -b -S "EDPIAIRO\EDP17" -d "DevOpsPorto-db-test" -i ".\tSQLt\sql\get-test-results.sql" -o "..\TestResults\TestResults.xml"