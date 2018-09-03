function Get-AzureDb-TransparentDataEncryption {

    param(
        [Parameter(Mandatory=$true)][string]$rgName,
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName
    )

    $dbEncryption = Get-AzureRmSqlDatabaseTransparentDataEncryption -ResourceGroupName $rgName -ServerName $serverName -DatabaseName $databaseName

    $dbEncryption.State

    if($dbEncryption.State -eq "Enabled")
    {
        return $true
    }
    else {
        return $false
    }
}
