param(
	[Parameter(Mandatory=$true)][string]$serverName,
	[Parameter(Mandatory=$true)][string]$databaseName,
	[string]$user,
	[string]$pass
)

Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\pipeline\sql\tSQLt.class.sql"