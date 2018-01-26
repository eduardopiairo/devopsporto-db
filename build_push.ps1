Param(
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$resourceName)
	
$packExtension = ".nupkg"	
$packPath = "..\packages\" + $resourceName

$packFullPath = $packPath + $buildNumber + $packExtension 

Write-Output $packFullPath

nuget push $packFullPath -Source http://localhost:8091/nuget/packages -ApiKey API-A3EDYTKSDBU36DMH3VBZL4OWWYY 

exit $LastExitCode