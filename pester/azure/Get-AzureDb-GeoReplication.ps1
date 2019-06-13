function Get-AzureDbGeoReplication {

    param(
        [Parameter(Mandatory=$true)][string]$databaseName
    )

    $rg = "sqlbits"

    $sqlServer = "devopsporto-db-sqlserver"

    $replicationInfo = Get-AzureRmSqlDatabaseReplicationLink -ResourceGroupName $rg -ServerName $sqlServer -DatabaseName $databaseName -PartnerResourceGroupName $rg

    if($replicationInfo -eq $null)
    {
        return $false
    }
    else {

        if($replicationInfo.PartnerLocation -eq "Germany Northeast")
        {
            return $true
        }
    }
}
