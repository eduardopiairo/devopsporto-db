param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

# run all tests
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -Query "EXEC tSQLt.RUNALL"