Param(
	[Parameter(Mandatory=$true)][string]$resourceName)


#Parameters file
Copy-Item -Path .\nuspec_db.template -Destination .\$resourceName\$resourceName.nuspec

#Search and replace
(Get-Content .\$resourceName\$resourceName.nuspec).Replace('#DBNAME#', $resourceName) | Set-Content .\$resourceName\$resourceName.nuspec

exit $LastExitCode