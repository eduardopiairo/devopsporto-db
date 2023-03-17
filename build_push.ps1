Param(
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$apiKey)
	
$packExtension = ".nupkg"	
$packPath = "..\packages\" + $resourceName + "."

$packFullPath = $packPath + $buildNumber + $packExtension 

Write-Output $packFullPath

# nuget push $packFullPath -Source http://localhost:8090/nuget/packages -ApiKey $apiKey 
nuget push $packFullPath -Source https://pipe.octopus.app/nuget/packages -ApiKey $apiKey 

exit $LastExitCode