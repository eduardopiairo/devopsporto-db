Param(
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$resourceName)

nuget pack .\$resourceName\$resourceName.nuspec -Version 0.0.$buildNumber -OutputDirectory "..\packages"

exit $LastExitCode
