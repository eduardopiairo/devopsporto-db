Param(
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$apiKey)
	
$packExtension = ".nupkg"	
$packPath = "..\packages\" + $resourceName + "."

$packFullPath = $packPath + $buildNumber + $packExtension 

Write-Output $packFullPath

nuget push $packFullPath -Source http://localhost:8091/nuget/packages -ApiKey $apiKey 

exit $LastExitCode