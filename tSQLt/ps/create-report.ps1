param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName
    )


SQLCMD.EXE -E -b -S "$serverName" -d "$databaseName" -i ".\tSQLt\sql\get-test-results.sql" -o "..\TestResults\tsqlt-test-results.xml"