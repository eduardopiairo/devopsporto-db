param(
	[Parameter(Mandatory=$true)][string]$serverName,
	[Parameter(Mandatory=$true)][string]$databaseName,
	[string]$user,
	[string]$pass
)

sqlcmd -b -S "$serverName" -d $databaseName -i ".\pipeline\sql\create-report.sql" -o ".\tests\TestResults\$databaseName-TestResults.xml"