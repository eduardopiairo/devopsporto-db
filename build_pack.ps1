Param(
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$resourceName)

nuget pack .\$resourceName\$resourceName.nuspec -Version $buildNumber -OutputDirectory "..\packages"

exit $LastExitCode
